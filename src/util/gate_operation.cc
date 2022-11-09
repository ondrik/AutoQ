#include <vata/util/aut_description.hh>

// #define TO_QASM
#define QASM_FILENAME "circuit.qasm"
// OPENQASM 2.0;
// include "qelib1.inc";
// qreg qubits[?];

namespace {
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
}

int VATA::Util::TreeAutomata::count_transitions() {
    int count = 0;
    for (const auto &t : transitions)
        for (const auto &in_outs : t.second) {
            count += in_outs.second.size();
        }
    return count;
}

void VATA::Util::TreeAutomata::X(int k) {
    #ifdef TO_QASM
        system(("echo 'x qubits[" + std::to_string(k-1) + "];' >> " + QASM_FILENAME).c_str());
        return;
    #endif
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    TreeAutomata aut2 = *this;
    aut1.value_restriction(k, false);
    aut1.branch_restriction(k, true);
    aut2.value_restriction(k, true);
    aut2.branch_restriction(k, false);
    *this = aut1 + aut2;
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "X" << k << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::Y(int k) {
    #ifdef TO_QASM
        system(("echo 'y qubits[" + std::to_string(k-1) + "];' >> " + QASM_FILENAME).c_str());
        return;
    #endif
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    TreeAutomata aut2 = *this;
    aut1.value_restriction(k, false);
    aut1.branch_restriction(k, true);
    aut2.value_restriction(k, true);
    aut2.branch_restriction(k, false);
    *this = aut1 - aut2;
    omega_multiplication();
    omega_multiplication();
    this->semi_undeterminize();
    remove_useless();
    reduce();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "Y" << k << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::Z(int t) {
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    TreeAutomata aut2 = *this;
    aut1.branch_restriction(t, false);
    aut2.branch_restriction(t, true);
    *this = aut1 - aut2;
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "Z" << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::H(int t) {
    #ifdef TO_QASM
        system(("echo 'h qubits[" + std::to_string(t-1) + "];' >> " + QASM_FILENAME).c_str());
        return;
    #endif
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    aut1.value_restriction(t, false);
    TreeAutomata aut2 = *this;
    aut2.value_restriction(t, true);
    aut2.branch_restriction(t, false);
    TreeAutomata aut3 = *this;
    aut3.branch_restriction(t, true);
    *this = aut1 + aut2 - aut3;
    divide_by_the_square_root_of_two();
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "H" << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::S(int t) {
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    TreeAutomata aut2 = *this;
    aut1.branch_restriction(t, false);
    aut2.branch_restriction(t, true);
    aut2.omega_multiplication(2);
    *this = aut1 + aut2;
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "S" << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::T(int t) {
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    TreeAutomata aut2 = *this;
    aut1.branch_restriction(t, false);
    aut2.branch_restriction(t, true);
    aut2.omega_multiplication();
    *this = aut1 + aut2;
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "T" << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::Rx(int t) {
    #ifdef TO_QASM
        system(("echo 'rx(pi/2) qubits[" + std::to_string(t-1) + "];' >> " + QASM_FILENAME).c_str());
        return;
    #endif
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    TreeAutomata aut2 = *this;
    aut2.value_restriction(t, false);
    aut2.branch_restriction(t, true);
    TreeAutomata aut3 = *this;
    aut3.value_restriction(t, true);
    aut3.branch_restriction(t, false);
    aut2 = aut2 + aut3;
    aut2.omega_multiplication(2);
    *this = aut1 - aut2;
    divide_by_the_square_root_of_two();
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "Rx" << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::Ry(int t) {
    #ifdef TO_QASM
        system(("echo 'ry(pi/2) qubits[" + std::to_string(t-1) + "];' >> " + QASM_FILENAME).c_str());
        return;
    #endif
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    aut1.value_restriction(t, false);
    TreeAutomata aut2 = *this;
    aut2.branch_restriction(t, true);
    TreeAutomata aut3 = *this;
    aut3.value_restriction(t, true);
    aut3.branch_restriction(t, false);
    *this = aut1 + aut2 - aut3;
    divide_by_the_square_root_of_two();
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "Ry" << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::CNOT(int c, int t, bool opt) {
    #ifdef TO_QASM
        system(("echo 'cx qubits[" + std::to_string(c-1) + "], qubits[" + std::to_string(t-1) + "];' >> " + QASM_FILENAME).c_str());
        return;
    #endif
    auto start = std::chrono::steady_clock::now();
    assert(c != t);
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    aut1.branch_restriction(c, false);
    TreeAutomata aut2 = *this;
    aut2.branch_restriction(c, true);
    TreeAutomata aut3 = aut2;
    aut2.value_restriction(t, false);
    aut2.branch_restriction(t, true);
    aut3.value_restriction(t, true);
    aut3.branch_restriction(t, false);
    *this = aut1 + aut2 + aut3;
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "CNOT" << c << "," << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::CZ(int c, int t) {
    #ifdef TO_QASM
        system(("echo 'cz qubits[" + std::to_string(c-1) + "], qubits[" + std::to_string(t-1) + "];' >> " + QASM_FILENAME).c_str());
        return;
    #endif
    auto start = std::chrono::steady_clock::now();
    assert(c != t);
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    aut1.branch_restriction(c, false);
    TreeAutomata aut2 = *this;
    aut2.branch_restriction(t, false);
    TreeAutomata aut3 = aut2;
    aut3.branch_restriction(c, false);
    TreeAutomata aut4 = *this;
    aut4.branch_restriction(t, true);
    aut4.branch_restriction(c, true);
    *this = aut1 + aut2 - aut3 - aut4;
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "CZ" << c << "," << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::Toffoli(int c, int c2, int t) {
    #ifdef TO_QASM
        system(("echo 'ccx qubits[" + std::to_string(c-1) + "], qubits[" + std::to_string(c2-1) + "], qubits[" + std::to_string(t-1) + "];' >> " + QASM_FILENAME).c_str());
        return;
    #endif
    auto start = std::chrono::steady_clock::now();
    assert(c != c2 && c2 != t && t != c);
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    aut1.branch_restriction(c, false);
    TreeAutomata aut2 = *this;
    aut2.branch_restriction(c2, false);
    TreeAutomata aut3 = aut2;
    aut3.branch_restriction(c, false);
    TreeAutomata aut4 = *this;
    aut4.branch_restriction(c, true);
    aut4.branch_restriction(c2, true);
    TreeAutomata aut5 = aut4;
    aut4.value_restriction(t, false);
    aut4.branch_restriction(t, true);
    aut5.value_restriction(t, true);
    aut5.branch_restriction(t, false);
    *this = aut1 + aut2 - aut3 + aut4 + aut5;
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "Toffoli" << c << "," << c2 << "," << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::Tdg(int t) {
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    TreeAutomata aut2 = *this;
    aut1.branch_restriction(t, false);
    aut2.branch_restriction(t, true);
    aut2.omega_multiplication(7);
    *this = aut1 + aut2;
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "Tdg" << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::Sdg(int t) {
    auto start = std::chrono::steady_clock::now();
    this->semi_determinize();
    TreeAutomata aut1 = *this;
    TreeAutomata aut2 = *this;
    aut1.branch_restriction(t, false);
    aut2.branch_restriction(t, true);
    aut2.omega_multiplication(6);
    *this = aut1 + aut2;
    this->semi_undeterminize();
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "Sdg" << t << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

void VATA::Util::TreeAutomata::swap(int t1, int t2) {
    auto start = std::chrono::steady_clock::now();
    CNOT(t1, t2);
    CNOT(t2, t1);
    CNOT(t1, t2);
    gateCount++;
    auto duration = std::chrono::steady_clock::now() - start;
    if (gateLog) std::cout << "swap" << t1 << "," << t2 << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
}

// void VATA::Util::TreeAutomata::Fredkin(int c, int t, int t2) {
//     auto start = std::chrono::steady_clock::now();
//     assert(c != t && t != t2 && t2 != c);
//     this->semi_determinize();
//     TreeAutomata aut1 = *this;
//     aut1.branch_restriction(c, false);
//     TreeAutomata aut2 = *this;
//     aut2.branch_restriction(c, true);
//     TreeAutomata aut3 = aut2;
//     TreeAutomata aut4 = aut2;
//     TreeAutomata aut5 = aut2;
//     aut2.branch_restriction(t, true);
//     aut2.branch_restriction(t2, true);
//     aut3.branch_restriction(t, false);
//     aut3.branch_restriction(t2, false);
//     aut4.value_restriction(t, false);
//     aut4.value_restriction(t2, true);
//     aut4.branch_restriction(t2, false);
//     aut4.branch_restriction(t, true);
//     aut5.value_restriction(t, true);
//     aut5.value_restriction(t2, false);
//     aut5.branch_restriction(t2, true);
//     aut5.branch_restriction(t, false);
//     *this = aut1 + aut2 + aut3 + aut4 + aut5;
//     this->semi_undeterminize();
//     gateCount++;
//     auto duration = std::chrono::steady_clock::now() - start;
//     if (gateLog) std::cout << "Fredkin" << c << "," << t << "," << t2 << "：" << stateNum << " states " << count_transitions() << " transitions " << toString(duration) << "\n";
// }

void VATA::Util::TreeAutomata::randG(int G, int A, int B, int C) {
    int g, a, b, c;
    do { 
        g = rand() % 11;
        a = rand() % qubitNum + 1;
        if (g >= 8) {
            do {
                b = rand() % qubitNum + 1;
            } while (b == a);
        }
        if (g >= 10) {
            do {
                c = rand() % qubitNum + 1;
            } while (c == a || c == b);
        }
    } while (g==G && a==A && (g<8 || G<8 || b==B) && (g<10 || G<10 || c==C));
    switch(g) {
        case 0: X(a); break;
        case 1: Y(a); break;
        case 2: Z(a); break;
        case 3: H(a); break;
        case 4: S(a); break;
        case 5: T(a); break;
        case 6: Rx(a); break;
        case 7: Ry(a); break;
        case 8: CNOT(a, b); break;
        case 9: CZ(a, b); break;
        case 10: Toffoli(a, b, c); break;
        // case 11: Fredkin(a, b, c); break;
        default: break;
    }
}