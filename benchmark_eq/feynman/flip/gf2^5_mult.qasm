OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[15];
h qubits[10];
h qubits[11];
h qubits[12];
h qubits[13];
h qubits[10];
ccx qubits[4],qubits[6],qubits[10];
h qubits[10];
h qubits[10];
ccx qubits[3],qubits[7],qubits[10];
h qubits[10];
h qubits[10];
ccx qubits[2],qubits[8],qubits[10];
h qubits[10];
h qubits[10];
ccx qubits[1],qubits[9],qubits[10];
h qubits[10];
h qubits[11];
ccx qubits[4],qubits[7],qubits[11];
h qubits[11];
h qubits[11];
ccx qubits[3],qubits[8],qubits[11];
h qubits[11];
h qubits[11];
ccx qubits[2],qubits[9],qubits[11];
h qubits[11];
h qubits[12];
ccx qubits[4],qubits[8],qubits[12];
h qubits[12];
h qubits[12];
ccx qubits[3],qubits[9],qubits[12];
h qubits[12];
h qubits[13];
ccx qubits[4],qubits[9],qubits[13];
h qubits[13];
h qubits[10];
h qubits[11];
h qubits[12];
h qubits[13];
cx qubits[13],qubits[10];
cx qubits[14],qubits[12];
cx qubits[11],qubits[13];
cx qubits[10],qubits[12];
h qubits[10];
h qubits[11];
h qubits[12];
h qubits[13];
h qubits[14];
h qubits[14];
ccx qubits[4],qubits[5],qubits[14];
h qubits[14];
h qubits[14];
ccx qubits[3],qubits[6],qubits[14];
h qubits[14];
h qubits[14];
ccx qubits[2],qubits[7],qubits[14];
h qubits[14];
h qubits[14];
ccx qubits[1],qubits[8],qubits[14];
h qubits[14];
h qubits[14];
ccx qubits[0],qubits[9],qubits[14];
h qubits[14];
h qubits[13];
ccx qubits[3],qubits[5],qubits[13];
h qubits[13];
h qubits[13];
ccx qubits[2],qubits[6],qubits[13];
h qubits[13];
h qubits[13];
ccx qubits[1],qubits[7],qubits[13];
h qubits[13];
h qubits[13];
ccx qubits[0],qubits[8],qubits[13];
h qubits[13];
h qubits[12];
ccx qubits[2],qubits[5],qubits[12];
h qubits[12];
h qubits[12];
ccx qubits[1],qubits[6],qubits[12];
h qubits[12];
h qubits[12];
ccx qubits[0],qubits[7],qubits[12];
h qubits[12];
h qubits[11];
ccx qubits[1],qubits[5],qubits[11];
h qubits[11];
h qubits[11];
ccx qubits[0],qubits[6],qubits[11];
h qubits[11];
h qubits[10];
ccx qubits[0],qubits[5],qubits[10];
h qubits[10];
h qubits[10];
h qubits[11];
h qubits[12];
h qubits[13];
h qubits[14];
