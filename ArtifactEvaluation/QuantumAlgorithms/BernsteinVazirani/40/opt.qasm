// Feynman -- quantum circuit toolkit
// Original (./BernsteinVazirani/40/circuit.qasm):
//   cbits: 0
//   qubits: 41
//   H: 82
//   Z: 1
//   cnot: 20
// Result (1.662ms):
//   cbits: 0
//   qubits: 41
//   H: 82
//   Z: 1
//   cnot: 20
OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[41];
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
h qubits[26];
h qubits[27];
h qubits[28];
h qubits[29];
h qubits[30];
h qubits[31];
h qubits[32];
h qubits[33];
h qubits[34];
h qubits[35];
h qubits[36];
h qubits[37];
h qubits[38];
h qubits[39];
h qubits[40];
z qubits[40];
cx qubits[0],qubits[40];
cx qubits[2],qubits[40];
cx qubits[4],qubits[40];
cx qubits[6],qubits[40];
cx qubits[8],qubits[40];
cx qubits[10],qubits[40];
cx qubits[12],qubits[40];
cx qubits[14],qubits[40];
cx qubits[16],qubits[40];
cx qubits[18],qubits[40];
cx qubits[20],qubits[40];
cx qubits[22],qubits[40];
cx qubits[24],qubits[40];
cx qubits[26],qubits[40];
cx qubits[28],qubits[40];
cx qubits[30],qubits[40];
cx qubits[32],qubits[40];
cx qubits[34],qubits[40];
cx qubits[36],qubits[40];
cx qubits[38],qubits[40];
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
h qubits[26];
h qubits[27];
h qubits[28];
h qubits[29];
h qubits[30];
h qubits[31];
h qubits[32];
h qubits[33];
h qubits[34];
h qubits[35];
h qubits[36];
h qubits[37];
h qubits[38];
h qubits[39];
h qubits[40];
