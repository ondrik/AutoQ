OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[9];
x qubits[2];
h qubits[7];
h qubits[7];
ccx qubits[0],qubits[2],qubits[7];
h qubits[7];
h qubits[7];
x qubits[2];
x qubits[0];
h qubits[6];
h qubits[8];
h qubits[6];
ccx qubits[1],qubits[7],qubits[6];
h qubits[6];
h qubits[8];
ccx qubits[0],qubits[2],qubits[8];
h qubits[8];
h qubits[8];
h qubits[6];
cx qubits[6],qubits[5];
cx qubits[6],qubits[3];
cx qubits[8],qubits[7];
x qubits[1];
x qubits[7];
h qubits[3];
h qubits[6];
h qubits[6];
ccx qubits[1],qubits[8],qubits[6];
h qubits[6];
h qubits[3];
ccx qubits[1],qubits[7],qubits[3];
h qubits[3];
h qubits[6];
h qubits[3];
x qubits[1];
cx qubits[6],qubits[4];
cx qubits[8],qubits[5];
h qubits[5];
h qubits[8];
h qubits[5];
ccx qubits[1],qubits[7],qubits[5];
h qubits[5];
h qubits[8];
ccx qubits[0],qubits[2],qubits[8];
h qubits[8];
h qubits[8];
h qubits[5];
x qubits[0];
x qubits[7];
cx qubits[5],qubits[8];
