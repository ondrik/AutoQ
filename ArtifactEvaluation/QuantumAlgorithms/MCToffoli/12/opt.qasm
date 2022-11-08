// Feynman -- quantum circuit toolkit
// Original (./MCToffoli/12/circuit.qasm):
//   cbits: 0
//   qubits: 24
//   H: 44
//   T: 154
//   cnot: 155
// Result (0.958ms):
//   cbits: 0
//   qubits: 24
//   H: 44
//   T: 154
//   cnot: 155
OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[24];
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
cx qubits[22],qubits[23];
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
