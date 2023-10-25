OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[11];

h qubits[10];
h qubits[9];
h qubits[8];
h qubits[7];
h qubits[6];
h qubits[5];
z qubits[10];
ccx qubits[0], qubits[5], qubits[10];
ccx qubits[1], qubits[6], qubits[10];
ccx qubits[2], qubits[7], qubits[10];
ccx qubits[3], qubits[8], qubits[10];
ccx qubits[4], qubits[9], qubits[10];
h qubits[10];
h qubits[9];
h qubits[8];
h qubits[7];
h qubits[6];
h qubits[5];
