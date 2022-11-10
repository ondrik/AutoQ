#include <fstream>
#include <iostream>
#include <vata/parsing/timbuk_parser.hh>
#include <vata/serialization/timbuk_serializer.hh>
#include <vata/util/aut_description.hh>
#include <vata/util/util.hh>
#include <sys/wait.h>
#include <unistd.h>

#include <chrono>
#include <iomanip>
#include <regex>

using namespace std;
using VATA::Util::TreeAutomata;
using VATA::Util::ShellCmd;
using VATA::Util::ReadFile;

int type, n;

int rand_gen() {
    if (type == 3) return 1;
    else if (type == 5) return n;
    else return rand() % n + 1;
}

void rand_gen(int &a, int &b) {
    if (type == 3) { // TOP
        a = 1;
        b = 2;
    } else if (type == 5) { // BOTTOM
        a = n-1;
        b = n;
    } else {
        a = rand() % n + 1;
        do {
            b = rand() % n + 1;
        } while (b == a);
    }
}

void rand_gen(int &a, int &b, int &c) {
    if (type == 3) { // TOP
        a = 1;
        b = 2;
        c = 3;
    } else if (type == 5) { // BOTTOM
        a = n-2;
        b = n-1;
        c = n;
    } else {
        a = rand() % n + 1;
        do {
            b = rand() % n + 1;
        } while (b == a);
        do {
            c = rand() % n + 1;
        } while (c == a || c == b);
    }
}

std::string toString(std::chrono::steady_clock::duration tp)
{
    using namespace std;
    using namespace std::chrono;
    nanoseconds ns = duration_cast<nanoseconds>(tp);
    typedef duration<int, ratio<86400>> days;
    std::stringstream ss;
    char fill = ss.fill();
    ss.fill('0');
    auto d = duration_cast<days>(ns);
    ns -= d;
    auto h = duration_cast<hours>(ns);
    ns -= h;
    auto m = duration_cast<minutes>(ns);
    ns -= m;
    auto s = duration_cast<seconds>(ns);
    ns -= s;
    auto ms = duration_cast<milliseconds>(ns);
    // auto s = duration<float, std::ratio<1, 1>>(ns);
    if (d.count() > 0 || h.count() > 0)
        ss << "TOO_LONG & ";
    else if (m.count() == 0 && s.count() < 10) {
        ss << s.count() << '.' << ms.count() / 100 << "s";
    } else {
        if (m.count() > 0) ss << m.count() << 'm';
        ss << s.count() << 's';// << " & ";
    }
    ss.fill(fill);
    return ss.str();
}

// std::string toString(int tp) // expect unit: ms
// {
//     using namespace std;
//     using namespace std::chrono;
//     milliseconds ns(tp);
//     typedef duration<int, ratio<86400>> days;
//     std::stringstream ss;
//     char fill = ss.fill();
//     ss.fill('0');
//     auto d = duration_cast<days>(ns);
//     ns -= d;
//     auto h = duration_cast<hours>(ns);
//     ns -= h;
//     auto m = duration_cast<minutes>(ns);
//     ns -= m;
//     auto s = duration_cast<seconds>(ns);
//     ns -= s;
//     auto ms = duration_cast<milliseconds>(ns);
//     // auto s = duration<float, std::ratio<1, 1>>(ns);
//     if (d.count() > 0 || h.count() > 0)
//         ss << "TOO_LONG & ";
//     else if (m.count() == 0 && s.count() < 10) {
//         ss << s.count() << '.' << ms.count() / 100 << "s";
//     } else {
//         if (m.count() > 0) ss << m.count() << 'm';
//         ss << s.count() << 's';// << " & ";
//     }
//     ss.fill(fill);
//     return ss.str();
// }

int main(int argc, char **argv) {
    int gateCount = 0;
    std::vector<VATA::Util::TreeAutomata> autvec;
    auto startSim = chrono::steady_clock::now();
    for (int var2=0; var2<=1; var2++) {
        int stateBefore, transitionBefore;
        string line;
        ifstream qasm(argv[var2+1]);
        const std::regex digit("\\d+");
        const std::regex_iterator<std::string::iterator> END;
        if (!qasm.is_open()) return EXIT_FAILURE;
        while (getline(qasm, line)) {
            if (line.find("OPENQASM") == 0 || line.find("include ") == 0|| line.find("//") == 0) continue;
            if (line.find("qreg ") == 0) {
                std::regex_iterator<std::string::iterator> it(line.begin(), line.end(), digit);
                while (it != END) {
                    autvec.push_back(VATA::Util::TreeAutomata::zero(atoi(it->str().c_str())));
                    stateBefore = autvec[var2].stateNum;
                    transitionBefore = autvec[var2].transition_size();
                    // if (atoi(it->str().c_str()) != autvec[var2].qubitNum)
                    //     throw std::exception();
                    ++it;
                }
            } else if (line.find("x ") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].X(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("y ") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].Y(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("z ") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].Z(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("h ") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].H(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("s ") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].S(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("sdg ") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].Sdg(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("t ") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].T(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("tdg ") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].Tdg(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("rx(pi/2) ") == 0 || line.find("rx(pi / 2)") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].Rx(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("ry(pi/2) ") == 0 || line.find("ry(pi / 2)") == 0) {
                std::smatch match_pieces;
                if (std::regex_search(line, match_pieces, digit))
                    autvec[var2].Ry(1 + atoi(match_pieces[0].str().c_str()));
            } else if (line.find("cx ") == 0 || line.find("CX ") == 0 ) {
                std::regex_iterator<std::string::iterator> it(line.begin(), line.end(), digit);
                std::vector<int> pos;
                while (it != END) {
                    pos.push_back(1 + atoi(it->str().c_str()));
                    ++it;
                }
                autvec[var2].CNOT(pos[0], pos[1]);
            } else if (line.find("cz ") == 0) {
                std::regex_iterator<std::string::iterator> it(line.begin(), line.end(), digit);
                std::vector<int> pos;
                while (it != END) {
                    pos.push_back(1 + atoi(it->str().c_str()));
                    ++it;
                }
                autvec[var2].CZ(pos[0], pos[1]);
            } else if (line.find("ccx ") == 0) {
                std::regex_iterator<std::string::iterator> it(line.begin(), line.end(), digit);
                std::vector<int> pos;
                while (it != END) {
                    pos.push_back(1 + atoi(it->str().c_str()));
                    ++it;
                }
                autvec[var2].Toffoli(pos[0], pos[1], pos[2]);
            } else if (line.find("swap ") == 0) {
                std::regex_iterator<std::string::iterator> it(line.begin(), line.end(), digit);
                std::vector<int> pos;
                while (it != END) {
                    pos.push_back(1 + atoi(it->str().c_str()));
                    ++it;
                }
                autvec[var2].swap(pos[0], pos[1]);
            } else if (line.length() > 0)
                throw std::runtime_error("Unsupported gate: " + line);
        }
        qasm.close();
        if (var2 == 0)
            gateCount = VATA::Util::TreeAutomata::gateCount;
    }

    for (int vvv=0; vvv<=1; vvv++) {
        std::ofstream fileLhs(argv[3+vvv]);
        autvec[vvv].fraction_simplication();
        fileLhs << VATA::Serialization::TimbukSerializer::Serialize(autvec[vvv]);
        fileLhs.close(); // Notice that we assume fractions in argv[4] are already simplified.
    }
    if (argc >= 5) {
        if (!VATA::Util::TreeAutomata::check_inclusion(argv[3], argv[4])) {
            auto durationSim = chrono::steady_clock::now() - startSim;
            // throw std::runtime_error("Does not satisfy the postcondition!");
            std::cout // << VATA::Util::Convert::ToString(autvec[0].qubitNum) << " & " << gateCount
                // << " & " << stateBefore << " & " << aut.stateNum
                // << " & " << transitionBefore << " & " << aut.transition_size()
                // << " & " 
                << toString(durationSim) << " & V";
            return 0;
        }
    }

    auto durationSim = chrono::steady_clock::now() - startSim;
    std::cout //<< VATA::Util::Convert::ToString(autvec[0].qubitNum) << " & " << gateCount
        // << " & " << stateBefore << " & " << aut.stateNum
        // << " & " << transitionBefore << " & " << aut.transition_size()
        // << " & "
        << toString(durationSim) << " & X";
    return 0;
}
