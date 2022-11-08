// Feynman -- quantum circuit toolkit
// Original (./MCToffoli/14/circuit.qasm):
//   cbits: 0
//   qubits: 28
//   H: 52
//   T: 182
//   cnot: 183
// Result (1.017ms):
//   cbits: 0
//   qubits: 28
//   H: 52
//   T: 182
//   cnot: 183
OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[28];
ccx qubits[0],qubits[1],qubits[2];
ccx qubits[3],qubits[2],qubits[4];
ccx qubits[5],qubits[4],qubits[6];
ccx qubits[7],qubits[6],qubits[8];
ccx qubits[9],qubits[8],qubits[10];
ccx qubits[11],qubits[10],qubits[12];
ccx qubits[13],qubits[12],qubits[14];
ccx qubits[15],qubits[14],qubits[16];
ccx qubits[17],qubits[16],qubits[18];
ccx qubits[19],qubits[18],qubits[20];
ccx qubits[21],qubits[20],qubits[22];
ccx qubits[23],qubits[22],qubits[24];
ccx qubits[25],qubits[24],qubits[26];
cx qubits[26],qubits[27];
ccx qubits[25],qubits[24],qubits[26];
ccx qubits[23],qubits[22],qubits[24];
ccx qubits[21],qubits[20],qubits[22];
ccx qubits[19],qubits[18],qubits[20];
ccx qubits[17],qubits[16],qubits[18];
ccx qubits[15],qubits[14],qubits[16];
ccx qubits[13],qubits[12],qubits[14];
ccx qubits[11],qubits[10],qubits[12];
ccx qubits[9],qubits[8],qubits[10];
ccx qubits[7],qubits[6],qubits[8];
ccx qubits[5],qubits[4],qubits[6];
ccx qubits[3],qubits[2],qubits[4];
ccx qubits[0],qubits[1],qubits[2];
