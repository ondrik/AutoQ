OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[12];
h qubits[9];
h qubits[10];
h qubits[8];
ccx qubits[3],qubits[5],qubits[8];
h qubits[8];
h qubits[8];
ccx qubits[2],qubits[6],qubits[8];
h qubits[8];
h qubits[8];
ccx qubits[1],qubits[7],qubits[8];
h qubits[8];
h qubits[9];
ccx qubits[3],qubits[6],qubits[9];
h qubits[9];
h qubits[9];
ccx qubits[2],qubits[7],qubits[9];
h qubits[9];
h qubits[10];
ccx qubits[3],qubits[7],qubits[10];
h qubits[10];
h qubits[8];
h qubits[9];
h qubits[10];
cx qubits[10],qubits[11];
cx qubits[9],qubits[10];
cx qubits[8],qubits[9];
h qubits[8];
h qubits[9];
h qubits[10];
h qubits[11];
h qubits[11];
ccx qubits[3],qubits[4],qubits[11];
h qubits[11];
h qubits[11];
ccx qubits[2],qubits[5],qubits[11];
h qubits[11];
h qubits[11];
ccx qubits[1],qubits[6],qubits[11];
h qubits[11];
h qubits[11];
ccx qubits[0],qubits[7],qubits[11];
h qubits[11];
h qubits[10];
ccx qubits[2],qubits[4],qubits[10];
h qubits[10];
h qubits[10];
ccx qubits[1],qubits[5],qubits[10];
h qubits[10];
h qubits[10];
ccx qubits[0],qubits[6],qubits[10];
h qubits[10];
h qubits[9];
ccx qubits[1],qubits[4],qubits[9];
h qubits[9];
h qubits[9];
ccx qubits[0],qubits[5],qubits[9];
h qubits[9];
h qubits[8];
ccx qubits[0],qubits[4],qubits[8];
h qubits[8];
h qubits[8];
h qubits[9];
h qubits[10];
h qubits[11];
