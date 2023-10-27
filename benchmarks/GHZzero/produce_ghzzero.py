#!/usr/bin/python3
import os

for n in range(2, 1000):
    folder = str(n).zfill(3)
    os.mkdir(folder)
    os.chdir(folder)

    #########################################
    with open("circuit.qasm", "w") as file:
        file.write("OPENQASM 2.0;\n")
        file.write('include "qelib1.inc";\n')
        file.write(f'qreg qubits[{n}];\n\n')

        file.write(f'h qubits[0];\n')
        for i in range(0, n-1):
            file.write(f'cx qubits[{i}], qubits[{i+1}];\n')
    #########################################

    #########################################
    with open("pre.aut", "w") as file:
        file.write("Ops " + ' '.join(f'[{i}]:2' for i in range(1, n+1)) + ' [0,0,0,0,0]:0 [1,0,0,0,0]:0\n')
        file.write("Automaton Zero\n")
        # file.write(f"States {' '.join([str(i) for i in range(2*n + 1)])}\n")
        file.write("Final States 0\n")
        file.write("Transitions\n")
        file.write(f"[{1}]({2}, {1}) -> {0}\n")
        for level in range(2, n+1):
            file.write(f"[{level}]({2*level - 1}, {2*level - 1}) -> {2*level - 3}\n")
            file.write(f"[{level}]({2*level}, {2*level - 1}) -> {2*level - 2}\n")
        file.write(f"[0,0,0,0,0] -> {2*n-1}\n")
        file.write(f"[1,0,0,0,0] -> {2*n}\n")
    #########################################

    os.chdir('..')