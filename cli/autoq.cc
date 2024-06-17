#include <fstream>
#include <iostream>
#include <autoq/parsing/timbuk_parser.hh>
#include <autoq/parsing/complex_parser.hh>
#include <autoq/serialization/timbuk_serializer.hh>
#include <autoq/aut_description.hh>
#include <autoq/inclusion.hh>
#include <autoq/util/util.hh>
#include <autoq/complex/ntuple.hh>
#include <autoq/complex/complex.hh>
#include <util_sim.h>
#include <sys/wait.h>
#include <unistd.h>
#include <chrono>
#include <iomanip>
#include <regex>
#include <fenv.h>

#include <fenv_darwin.h>

#include <CLI11.hpp>

using namespace std;

std::string toString(std::chrono::steady_clock::duration tp);

int extract_qubit(const std::string& filename) {
    std::ifstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Unable to open file" << std::endl;
        return -1; // Indicate an error opening the file
    }

    std::string line;
    std::regex pattern(R"(qreg\s+\w+\[(\d+)\];)");
    std::smatch match;
    while (std::getline(file, line)) {
        if (std::regex_search(line, match, pattern)) {
            return std::stoi(match[1].str());
        }
    }

    std::cerr << "Pattern not found" << std::endl;
    return -1; // Indicate that the pattern was not found
}

void adjust_N_in_nTuple(const std::string &filename) {
    if constexpr(!std::is_same_v<AUTOQ::Complex::Complex, AUTOQ::Complex::nTuple>) return;
    /************************************************************************************/
    std::ifstream qasm(filename);
    const std::regex digit("\\d+");
    const std::regex rx(R"(rx\((.+)\).+\[(\d+)\];)");
    const std::regex rz(R"(rz\((.+)\).+\[(\d+)\];)");
    const std::regex_iterator<std::string::iterator> END;
    if (!qasm.is_open()) throw std::runtime_error("[ERROR] Failed to open file " + std::string(filename) + ".");
    std::string line;
    while (getline(qasm, line)) {
        std::smatch match_rx; std::regex_search(line, match_rx, rx);
        std::smatch match_rz; std::regex_search(line, match_rz, rz);
        if (line.find("OPENQASM") == 0 || line.find("include ") == 0|| line.find("//") == 0) continue;
        if (line.find("qreg ") == 0) {
        } else if (line.find("x ") == 0) {
        } else if (line.find("y ") == 0) {
            if (AUTOQ::Complex::nTuple::N < 2) {
                AUTOQ::Complex::nTuple::N = 2;
            }
        } else if (line.find("z ") == 0) {
        } else if (line.find("h ") == 0) {
        } else if (line.find("s ") == 0) {
            if (AUTOQ::Complex::nTuple::N < 2) {
                AUTOQ::Complex::nTuple::N = 2;
            }
        } else if (line.find("sdg ") == 0) {
            if (AUTOQ::Complex::nTuple::N < 2) {
                AUTOQ::Complex::nTuple::N = 2;
            }
        } else if (line.find("t ") == 0) {
            if (AUTOQ::Complex::nTuple::N < 4) {
                AUTOQ::Complex::nTuple::N = 4;
            }
        } else if (line.find("tdg ") == 0) {
            if (AUTOQ::Complex::nTuple::N < 4) {
                AUTOQ::Complex::nTuple::N = 4;
            }
        } else if (match_rx.size() == 3) {
            std::string angle = match_rx[1];
            size_t pos = angle.find("pi");
            if (pos != std::string::npos) {
                angle.replace(pos, 2, "1");
            } else if (angle != "0") {
                AUTOQ_ERROR("The angle in rx gate is not a multiple of pi!");
                exit(1);
            }
            auto theta = ComplexParser(angle).parse().to_rational() / 2;
            if (AUTOQ::Complex::nTuple::N < static_cast<decltype(AUTOQ::Complex::nTuple::N)>(theta.denominator())) {
                AUTOQ::Complex::nTuple::N = static_cast<decltype(AUTOQ::Complex::nTuple::N)>(theta.denominator());
            }
        } else if (match_rz.size() == 3) {
            std::string angle = match_rz[1];
            size_t pos = angle.find("pi");
            if (pos != std::string::npos) {
                angle.replace(pos, 2, "1");
            } else if (angle != "0") {
                AUTOQ_ERROR("The angle in rz gate is not a multiple of pi!");
                exit(1);
            }
            auto theta = ComplexParser(angle).parse().to_rational() / 2;
            if (AUTOQ::Complex::nTuple::N < static_cast<decltype(AUTOQ::Complex::nTuple::N)>(theta.denominator())) {
                AUTOQ::Complex::nTuple::N = static_cast<decltype(AUTOQ::Complex::nTuple::N)>(theta.denominator());
            }
        } else if (line.find("ry(pi/2) ") == 0 || line.find("ry(pi / 2)") == 0) {
        } else if (line.find("cx ") == 0 || line.find("CX ") == 0 ) {
        } else if (line.find("cz ") == 0) {
        } else if (line.find("ccx ") == 0) {
        } else if (line.find("swap ") == 0) {
        } else if (line.find("PRINT_STATS") == 0) {
        } else if (line.find("PRINT_AUT") == 0) {
        } else if (line.find("STOP") == 0) {
        } else if (line.length() > 0)
            throw std::runtime_error("[ERROR] unsupported gate: " + line + ".");
    }
    qasm.close();
    // AUTOQ_DEBUG(AUTOQ::Complex::nTuple::N);
}

int main(int argc, char **argv) {
    feenableexcept(FE_ALL_EXCEPT & ~FE_INEXACT);

    CLI::App app{" "}; //{"My CLI App"};
    std::string pre, circuit, post, constraint, circuit1, circuit2;

    CLI::App* executionC = app.add_subcommand("exC", "executionC");
    executionC->add_option("pre.{aut|hsl|spec}", pre, "the precondition file")->required()->type_name("");
    executionC->add_option("circuit.qasm", circuit, "the OpenQASM 3.0 circuit file")->required()->type_name("")->check(CLI::ExistingFile);
    executionC->callback([&]() {
        adjust_N_in_nTuple(circuit);
    });

    bool latex = false;
    CLI::App* verificationC = app.add_subcommand("verC", "verificationC");
    verificationC->add_option("pre.{aut|hsl|spec}", pre, "the precondition file")->required()->type_name("");
    verificationC->add_option("circuit.qasm", circuit, "the OpenQASM 3.0 circuit file")->required()->type_name("")->check(CLI::ExistingFile);
    verificationC->add_option("post.{aut|hsl|spec}", post, "the postcondition file")->required()->type_name("");
    verificationC->add_flag("-l,--latex", latex, "Print the statistics for tables in LaTeX");
    verificationC->callback([&]() {
        adjust_N_in_nTuple(circuit);
    });

    CLI::App* executionS = app.add_subcommand("exS", "executionS");
    executionS->add_option("pre.{aut|hsl|spec}", pre, "the precondition file")->required()->type_name("");
    executionS->add_option("circuit.qasm", circuit, "the OpenQASM 3.0 circuit file")->required()->type_name("")->check(CLI::ExistingFile);
    executionS->callback([&]() {
        adjust_N_in_nTuple(circuit);
    });

    CLI::App* verificationS = app.add_subcommand("verS", "verificationS");
    verificationS->add_option("pre.{aut|hsl|spec}", pre, "the precondition file")->required()->type_name("");
    verificationS->add_option("circuit.qasm", circuit, "the OpenQASM 3.0 circuit file")->required()->type_name("")->check(CLI::ExistingFile);
    verificationS->add_option("post.{aut|hsl|spec}", post, "the postcondition file")->required()->type_name("");
    verificationS->add_option("constraint.smt", constraint, "the constraint file")->type_name("");
    verificationS->callback([&]() {
        adjust_N_in_nTuple(circuit);
    });

    CLI::App* equivalence_checking = app.add_subcommand("eq", "equivalence checking");
    equivalence_checking->add_option("circuit1.qasm", circuit1, "the OpenQASM 2.0 circuit file")->required()->type_name("")->check(CLI::ExistingFile);
    equivalence_checking->add_option("circuit2.qasm", circuit2, "the OpenQASM 2.0 circuit file")->required()->type_name("")->check(CLI::ExistingFile);
    equivalence_checking->add_flag("-l,--latex", latex, "Print the statistics for tables in LaTeX");
    equivalence_checking->callback([&]() {
        adjust_N_in_nTuple(circuit1);
        adjust_N_in_nTuple(circuit2);
    });

    bool short_time = false, long_time = false;
    app.add_flag("-t", short_time, "print times");
    app.add_flag("--time", long_time, "print times");
    CLI11_PARSE(app, argc, argv); // Parse the command-line arguments

    auto start = chrono::steady_clock::now();
    bool runConcrete; // or runSymbolic
    if (executionC->parsed()) {
        runConcrete = true;
        AUTOQ::TreeAutomata aut = AUTOQ::Parsing::TimbukParser<AUTOQ::Symbol::Concrete>::FromFileToAutomata(pre);
        aut.execute(circuit);
        aut.print_aut();
    } else if (verificationC->parsed()) {
        runConcrete = true;
        auto aut = AUTOQ::Parsing::TimbukParser<AUTOQ::Symbol::Concrete>::FromFileToAutomata(pre);
        auto aut2 = AUTOQ::Parsing::TimbukParser<AUTOQ::Symbol::Concrete>::FromFileToAutomata(post);
        aut.execute(circuit);
        bool verify = AUTOQ::TreeAutomata::check_inclusion(aut, aut2);
        if (latex) {
            aut.print_stats();
        } else {
            std::cout << "The quantum program has [" << aut.qubitNum << "] qubits and [" << AUTOQ::TreeAutomata::gateCount << "] gates.\nThe verification process [" << (verify ? "passed" : "failed") << "] in [" << toString(chrono::steady_clock::now() - start) << "] with [" << getPeakRSS() / 1024 / 1024 << "MB] memory usage.\n";
        }
    } else if (executionS->parsed()) {
        runConcrete = false;
        AUTOQ::SymbolicAutomata aut = AUTOQ::Parsing::TimbukParser<AUTOQ::Symbol::Symbolic>::FromFileToAutomata(pre);
        aut.execute(circuit);
        aut.print_aut();
    } else if (verificationS->parsed()) {
        runConcrete = false;
        AUTOQ::SymbolicAutomata aut = AUTOQ::Parsing::TimbukParser<AUTOQ::Symbol::Symbolic>::FromFileToAutomata(pre);
        AUTOQ::PredicateAutomata spec = AUTOQ::Parsing::TimbukParser<AUTOQ::Symbol::Predicate>::FromFileToAutomata(post);

        std::stringstream buffer;
        if (!constraint.empty()) {
            std::ifstream t(constraint);
            if (!t) // in case the file could not be open
                throw std::runtime_error("[ERROR] Failed to open file " + std::string(constraint) + ".");
            buffer << t.rdbuf();
        }
        AUTOQ::Constraint C(buffer.str().c_str());

        aut.execute(circuit);
        // std::cout << "OUTPUT AUTOMATON:\n";
        // std::cout << "=================\n";
        // aut.print_aut();
        // std::cout << "=================\n";
        bool verify = AUTOQ::check_inclusion(C, aut, spec);
        if (latex) {
            aut.print_stats();
        } else {
            std::cout << "The quantum program has [" << aut.qubitNum << "] qubits and [" << AUTOQ::SymbolicAutomata::gateCount << "] gates.\nThe verification process [" << (verify ? "passed" : "failed") << "] in [" << toString(chrono::steady_clock::now() - start) << "] with [" << getPeakRSS() / 1024 / 1024 << "MB] memory usage.\n";
        }
    } else if (equivalence_checking->parsed()) {
        runConcrete = true;
        AUTOQ::TreeAutomata aut = AUTOQ::TreeAutomata::prefix_basis(extract_qubit(circuit1));
        AUTOQ::TreeAutomata aut2 = AUTOQ::TreeAutomata::prefix_basis(extract_qubit(circuit2));
        aut.execute(circuit1);
        aut2.execute(circuit2);
        bool result = AUTOQ::TreeAutomata::check_inclusion(aut, aut2);
        if (latex) {
            if (short_time) {
                std::cout << toString(AUTOQ::TreeAutomata::total_gate_time - AUTOQ::TreeAutomata::total_removeuseless_time - AUTOQ::TreeAutomata::total_reduce_time) << ","
                          << toString(AUTOQ::TreeAutomata::total_removeuseless_time) << ","
                          << toString(AUTOQ::TreeAutomata::total_reduce_time) << ","
                          << toString(AUTOQ::TreeAutomata::total_include_time) << ","
                          << toString(chrono::steady_clock::now() - start) << " & " << (result ? "T" : "F") << "\n";
            } else {
                std::cout << toString(chrono::steady_clock::now() - start) << " & " << (result ? "T" : "F") << "\n";
            }
        } else {
            std::cout << "The two quantum programs are verified to be [" << (result ? "equal" : "unequal") << "] in [" << toString(chrono::steady_clock::now() - start) << "] with [" << getPeakRSS() / 1024 / 1024 << "MB] memory usage.\n";
        }
    }
    /**************/
    if (long_time) {
        if (runConcrete)
            std::cout << "=\n"
                    << "The total time spent on gate operations (excluding remove_useless and reduce) is [" << toString(AUTOQ::TreeAutomata::total_gate_time - AUTOQ::TreeAutomata::total_removeuseless_time - AUTOQ::TreeAutomata::total_reduce_time) << "].\n"
                    << "The total time spent on remove_useless(...) is [" << toString(AUTOQ::TreeAutomata::total_removeuseless_time) << "].\n"
                    << "The total time spent on reduce(...) is [" << toString(AUTOQ::TreeAutomata::total_reduce_time) << "].\n"
                    << "The total time spent on check_inclusion(...) is [" << toString(AUTOQ::TreeAutomata::total_include_time) << "].\n";
        else
            std::cout << "=\n"
                    << "The total time spent on gate operations (excluding remove_useless and reduce) is [" << toString(AUTOQ::SymbolicAutomata::total_gate_time - AUTOQ::SymbolicAutomata::total_removeuseless_time - AUTOQ::SymbolicAutomata::total_reduce_time) << "].\n"
                    << "The total time spent on remove_useless(...) is [" << toString(AUTOQ::SymbolicAutomata::total_removeuseless_time) << "].\n"
                    << "The total time spent on reduce(...) is [" << toString(AUTOQ::SymbolicAutomata::total_reduce_time) << "].\n"
                    << "The total time spent on check_inclusion(...) is [" << toString(AUTOQ::SymbolicAutomata::total_include_time) << "].\n";
    }
    /**************/
    return 0;
}

std::string toString(std::chrono::steady_clock::duration tp) {
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
    if (d.count() > 0)
        ss << d.count() << 'd' << h.count() << 'h' << m.count() << 'm' << s.count() << 's';
    else if (h.count() > 0)
        ss << h.count() << 'h' << m.count() << 'm' << s.count() << 's';
    else if (m.count() == 0 && s.count() < 10) {
        ss << s.count() << '.' << ms.count() / 100 << "s";
    } else {
        if (m.count() > 0) ss << m.count() << 'm';
        ss << s.count() << 's';// << " & ";
    }
    ss.fill(fill);
    return ss.str();
}
