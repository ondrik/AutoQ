OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[10];
h qubits[6];
h qubits[9];
h qubits[3];
ccx qubits[1],qubits[2],qubits[3];
h qubits[3];
cx qubits[1],qubits[2];
h qubits[3];
ccx qubits[0],qubits[2],qubits[3];
h qubits[3];
h qubits[3];
h qubits[6];
ccx qubits[4],qubits[5],qubits[6];
h qubits[6];
cx qubits[4],qubits[5];
h qubits[6];
ccx qubits[3],qubits[5],qubits[6];
h qubits[6];
h qubits[6];
h qubits[9];
ccx qubits[7],qubits[8],qubits[9];
h qubits[9];
cx qubits[7],qubits[8];
h qubits[9];
ccx qubits[6],qubits[8],qubits[9];
h qubits[9];
cx qubits[6],qubits[8];
h qubits[9];
h qubits[6];
h qubits[6];
ccx qubits[3],qubits[5],qubits[6];
h qubits[6];
cx qubits[4],qubits[5];
h qubits[6];
ccx qubits[4],qubits[5],qubits[6];
h qubits[6];
cx qubits[3],qubits[5];
cx qubits[4],qubits[5];
h qubits[6];
h qubits[3];
h qubits[3];
ccx qubits[0],qubits[2],qubits[3];
h qubits[3];
cx qubits[1],qubits[2];
h qubits[3];
ccx qubits[1],qubits[2],qubits[3];
h qubits[3];
cx qubits[0],qubits[2];
cx qubits[1],qubits[2];
h qubits[3];
