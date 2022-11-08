// Feynman -- quantum circuit toolkit
// Original (./BernsteinVazirani/25/circuit.qasm):
//   cbits: 0
//   qubits: 26
//   H: 52
//   Z: 1
//   cnot: 13
// Result (1.164ms):
//   cbits: 0
//   qubits: 26
//   H: 52
//   Z: 1
//   cnot: 13
OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[26];
h qubits[0];
h qubits[1];
h qubits[2];
h qubits[3];
h qubits[4];
h qubits[5];
h qubits[6];
h qubits[7];
h qubits[8];
h qubits[9];
h qubits[10];
h qubits[11];
h qubits[12];
h qubits[13];
h qubits[14];
h qubits[15];
h qubits[16];
h qubits[17];
h qubits[18];
h qubits[19];
h qubits[20];
h qubits[21];
h qubits[22];
h qubits[23];
h qubits[24];
h qubits[25];
z qubits[25];
cx qubits[0],qubits[25];
cx qubits[2],qubits[25];
cx qubits[4],qubits[25];
cx qubits[6],qubits[25];
cx qubits[8],qubits[25];
cx qubits[10],qubits[25];
cx qubits[12],qubits[25];
cx qubits[14],qubits[25];
cx qubits[16],qubits[25];
cx qubits[18],qubits[25];
cx qubits[20],qubits[25];
cx qubits[22],qubits[25];
cx qubits[24],qubits[25];
h qubits[0];
h qubits[1];
h qubits[2];
h qubits[3];
h qubits[4];
h qubits[5];
h qubits[6];
h qubits[7];
h qubits[8];
h qubits[9];
h qubits[10];
h qubits[11];
h qubits[12];
h qubits[13];
h qubits[14];
h qubits[15];
h qubits[16];
h qubits[17];
h qubits[18];
h qubits[19];
h qubits[20];
h qubits[21];
h qubits[22];
h qubits[23];
h qubits[24];
h qubits[25];
