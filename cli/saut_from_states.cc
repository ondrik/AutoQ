#include <autoq/util/util.hh>
#include <autoq/util/aut_description.hh>
#include <istream>
#include <fstream>

using namespace std;
using AUTOQ::Util::SymbolicAutomata;

SymbolicAutomata from_tree_to_automaton(std::string tree) {
    SymbolicAutomata aut;
    std::istringstream iss(tree);
    std::map<SymbolicAutomata::State, SymbolicAutomata::InitialSymbol> states_probs;
    SymbolicAutomata::InitialSymbol default_prob;
    for (std::string state_prob; iss >> state_prob;) {
        std::istringstream iss2(state_prob);
        std::string state;
        std::getline(iss2, state, ':');
        if (states_probs.empty())
            aut.qubitNum = state.length();
        std::string t;
        if (state == "*") {
            while (std::getline(iss2, t, ',')) {
                try {
                    auto v = boost::lexical_cast<SymbolicAutomata::InitialSymbol::Entry>(t.c_str());
                    if (v == 0)
                        default_prob.push_back(AUTOQ::Util::Symbolic::Map());
                    else
                        default_prob.push_back({{"1", v}});
                } catch (boost::bad_lexical_cast& e) {
                    default_prob.push_back({{t.c_str(), 1}});
                }
            }
        } else {
            SymbolicAutomata::State s = std::stoll(state, nullptr, 2);
            auto &sps = states_probs[s];
            while (std::getline(iss2, t, ',')) {
                try {
                    auto v = boost::lexical_cast<SymbolicAutomata::InitialSymbol::Entry>(t.c_str());
                    if (v == 0)
                        sps.push_back(AUTOQ::Util::Symbolic::Map());
                    else
                        sps.push_back({{"1", v}});
                } catch (boost::bad_lexical_cast& e) {
                    sps.push_back({{t.c_str(), 1}});
                }
            }
        }
    }
    SymbolicAutomata::State pow_of_two = 1;
    SymbolicAutomata::State state_counter = 0;
    for (int level=1; level<=aut.qubitNum; level++) {
        for (SymbolicAutomata::State i=0; i<pow_of_two; i++) {
            aut.transitions[{level}][{(state_counter<<1)+1, (state_counter<<1)+2}] = {state_counter};
            state_counter++;
        }
        pow_of_two <<= 1;
    }
    for (SymbolicAutomata::State i=state_counter; i<=(state_counter<<1); i++) {
        auto spf = states_probs.find(i-state_counter);
        if (spf == states_probs.end())
            aut.transitions[default_prob][{}].insert(i);
        else
            aut.transitions[spf->second][{}].insert(i);
    }
    aut.finalStates.push_back(0);
    aut.stateNum = (state_counter<<1) + 1;
    aut.reduce();

    return aut;
}

SymbolicAutomata from_line_to_automaton(std::string line) {
    std::istringstream iss_tensor(line);
    std::string tree;
    std::getline(iss_tensor, tree, '#');

    auto aut = from_tree_to_automaton(tree); // the first automata to be tensor producted

    // to tensor product with the rest of the automata
    while (std::getline(iss_tensor, tree, '#')) {
        auto aut2 = from_tree_to_automaton(tree);

        // let aut2 be tensor producted with aut here
        SymbolicAutomata::TransitionMap aut_leaves;
        for (const auto &t : aut.transitions) {
            if (t.first.is_leaf()) {
                aut_leaves[t.first] = t.second;
            }
        }
        for (const auto &t : aut_leaves) {
            aut.transitions.erase(t.first);
        }

        // append aut2 to each leaf transition of aut
        for (const auto &t : aut_leaves) {
            for (const auto &t2 : aut2.transitions) {
                if (t2.first.is_internal()) { // if the to-be-appended transition is internal, then
                    auto Q = aut.qubitNum + t2.first.initial_symbol().qubit(); // we need to shift the qubit number
                    for (const auto &kv : t2.second) { // for each pair of vec_in -> set_out
                        auto k = kv.first;
                        for (int i=0; i<k.size(); i++)
                            k.at(i) += aut.stateNum;
                        // above shift the state number of vec_in first,
                        for (const auto &s : kv.second) {
                            if (s == 0) { // if to be connected to leaf states of aut, then
                                for (const auto &s2 : t.second.at({})) // simply apply these states
                                    aut.transitions[{Q}][k].insert(s2);
                            }
                            else // and then shift the state number of set_out
                                aut.transitions[{Q}][k].insert(s + aut.stateNum);
                        }
                    }
                } else {
                    for (const auto &kv : t2.second) {
                        auto k = kv.first;
                        for (int i=0; i<k.size(); i++)
                            k.at(i) += aut.stateNum;
                        for (const auto &s : kv.second) {
                            aut.transitions[t.first.initial_symbol() * t2.first.initial_symbol()][k].insert(s + aut.stateNum);
                        }
                    }
                }
            }
            aut.stateNum += aut2.stateNum;
        }
        aut.qubitNum += aut2.qubitNum;
        aut.reduce();
    }
    return aut;
}

int main(int argc, char **argv) {
    SymbolicAutomata aut_final;
    std::string line;
    std::istream *in = &std::cin;
    std::ifstream file;
    if (argc >= 2){
        file.open(argv[1]);
        in = &file;
    }
    while (std::getline(*in, line)) {
        line = AUTOQ::Util::trim(line);
        if (line.substr(0, 4) == "|i|=") { // if startswith "|i|="
            std::istringstream iss(line);
            std::string length; iss >> length; length = length.substr(4);
            line.clear();
            for (std::string t; iss >> t;)
                line += t + ' ';
            std::string i(std::atoi(length.c_str()), '1');
            bool reach_all_zero;
            do {
                auto aut = from_line_to_automaton(std::regex_replace(line, std::regex("i:"), i + ":"));
                aut_final = aut_final.Union(aut);
                aut_final.reduce();

                // the following performs -1 on the binary string i
                reach_all_zero = false;
                for (int j=i.size()-1; j>=0; j--) {
                    if (i.at(j) == '0') {
                        if (j == 0) {
                            reach_all_zero = true;
                            break;
                        }
                        i.at(j) = '1';
                    } else {
                        i.at(j) = '0';
                        break;
                    }
                }
            } while (!reach_all_zero);
        } else {
            auto aut = from_line_to_automaton(line);
            aut_final = aut_final.Union(aut);
            aut_final.reduce();
        }
    }
    aut_final.fraction_simplification();
    aut_final.reduce();
    std::cout << std::endl;
    aut_final.print();
    return 0;
}