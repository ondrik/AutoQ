// Feynman -- quantum circuit toolkit
// Original (./MCToffoli/10/circuit.qasm):
//   cbits: 0
//   qubits: 20
//   H: 36
//   T: 126
//   cnot: 127
// Result (0.798ms):
//   cbits: 0
//   qubits: 20
//   H: 36
//   T: 126
//   cnot: 127
OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[20];
ccx qubits[0],qubits[1],qubits[2];
ccx qubits[3],qubits[2],qubits[4];
ccx qubits[5],qubits[4],qubits[6];
ccx qubits[7],qubits[6],qubits[8];
ccx qubits[9],qubits[8],qubits[10];
ccx qubits[11],qubits[10],qubits[12];
ccx qubits[13],qubits[12],qubits[14];
ccx qubits[15],qubits[14],qubits[16];
ccx qubits[17],qubits[16],qubits[18];
cx qubits[18],qubits[19];
ccx qubits[17],qubits[16],qubits[18];
ccx qubits[15],qubits[14],qubits[16];
ccx qubits[13],qubits[12],qubits[14];
ccx qubits[11],qubits[10],qubits[12];
ccx qubits[9],qubits[8],qubits[10];
ccx qubits[7],qubits[6],qubits[8];
ccx qubits[5],qubits[4],qubits[6];
ccx qubits[3],qubits[2],qubits[4];
ccx qubits[0],qubits[1],qubits[2];
