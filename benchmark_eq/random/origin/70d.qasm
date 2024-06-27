OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[70];

h qubits[17];
ry(pi/2) qubits[2];
s qubits[27];
x qubits[25];
cz qubits[50], qubits[39];
y qubits[6];
z qubits[8];
h qubits[0];
h qubits[6];
cz qubits[18], qubits[54];
z qubits[25];
ccx qubits[60], qubits[58], qubits[46];
h qubits[31];
x qubits[41];
ccx qubits[35], qubits[43], qubits[5];
s qubits[68];
cz qubits[14], qubits[37];
ccx qubits[32], qubits[46], qubits[23];
x qubits[46];
y qubits[58];
x qubits[29];
s qubits[56];
ry(pi/2) qubits[55];
z qubits[55];
z qubits[7];
h qubits[61];
cz qubits[64], qubits[27];
s qubits[49];
cx qubits[8], qubits[47];
rx(pi/2) qubits[34];
z qubits[44];
ry(pi/2) qubits[15];
y qubits[49];
cx qubits[9], qubits[38];
cz qubits[38], qubits[22];
cz qubits[35], qubits[19];
y qubits[20];
h qubits[7];
h qubits[54];
h qubits[42];
ccx qubits[42], qubits[21], qubits[9];
cz qubits[10], qubits[38];
cx qubits[48], qubits[12];
z qubits[63];
z qubits[15];
h qubits[30];
z qubits[10];
x qubits[30];
cx qubits[46], qubits[61];
cz qubits[8], qubits[54];
y qubits[56];
cz qubits[25], qubits[28];
rx(pi/2) qubits[9];
rx(pi/2) qubits[24];
rx(pi/2) qubits[13];
cz qubits[41], qubits[61];
ccx qubits[7], qubits[67], qubits[49];
cx qubits[6], qubits[10];
x qubits[28];
t qubits[60];
x qubits[9];
h qubits[59];
t qubits[47];
cz qubits[15], qubits[39];
y qubits[55];
y qubits[6];
h qubits[8];
y qubits[59];
cx qubits[61], qubits[62];
ry(pi/2) qubits[68];
z qubits[32];
h qubits[7];
h qubits[5];
ry(pi/2) qubits[17];
y qubits[15];
s qubits[0];
t qubits[55];
z qubits[45];
z qubits[29];
s qubits[67];
cx qubits[61], qubits[55];
ry(pi/2) qubits[11];
rx(pi/2) qubits[1];
z qubits[48];
y qubits[13];
cx qubits[15], qubits[58];
y qubits[69];
cz qubits[35], qubits[28];
cx qubits[50], qubits[54];
z qubits[8];
cx qubits[3], qubits[65];
cx qubits[32], qubits[50];
ry(pi/2) qubits[0];
x qubits[69];
s qubits[64];
x qubits[48];
y qubits[46];
cx qubits[35], qubits[26];
cx qubits[23], qubits[25];
cx qubits[29], qubits[60];
rx(pi/2) qubits[41];
x qubits[25];
cz qubits[2], qubits[19];
z qubits[68];
cz qubits[44], qubits[48];
s qubits[44];
h qubits[38];
x qubits[25];
ccx qubits[11], qubits[35], qubits[12];
ry(pi/2) qubits[12];
rx(pi/2) qubits[56];
x qubits[5];
cx qubits[6], qubits[8];
y qubits[60];
y qubits[7];
t qubits[5];
rx(pi/2) qubits[56];
ccx qubits[62], qubits[42], qubits[51];
s qubits[28];
h qubits[24];
t qubits[49];
cz qubits[3], qubits[14];
y qubits[0];
ccx qubits[40], qubits[68], qubits[4];
x qubits[67];
rx(pi/2) qubits[65];
ry(pi/2) qubits[12];
t qubits[43];
cx qubits[3], qubits[11];
h qubits[18];
rx(pi/2) qubits[51];
cz qubits[59], qubits[9];
ccx qubits[13], qubits[1], qubits[14];
cz qubits[17], qubits[41];
ccx qubits[29], qubits[9], qubits[57];
z qubits[25];
t qubits[25];
z qubits[52];
z qubits[2];
x qubits[47];
ccx qubits[65], qubits[0], qubits[10];
rx(pi/2) qubits[16];
ry(pi/2) qubits[36];
z qubits[13];
y qubits[31];
s qubits[28];
cx qubits[55], qubits[11];
ry(pi/2) qubits[15];
y qubits[52];
t qubits[58];
s qubits[10];
cx qubits[9], qubits[13];
ccx qubits[2], qubits[52], qubits[9];
y qubits[4];
z qubits[31];
h qubits[1];
h qubits[33];
rx(pi/2) qubits[23];
s qubits[67];
ccx qubits[57], qubits[8], qubits[64];
rx(pi/2) qubits[40];
h qubits[69];
z qubits[15];
z qubits[6];
h qubits[34];
rx(pi/2) qubits[39];
cz qubits[39], qubits[48];
ccx qubits[55], qubits[25], qubits[37];
ccx qubits[39], qubits[17], qubits[38];
ry(pi/2) qubits[52];
z qubits[63];
h qubits[27];
cx qubits[46], qubits[41];
s qubits[35];
cz qubits[24], qubits[50];
cz qubits[30], qubits[29];
z qubits[17];
h qubits[16];
cz qubits[1], qubits[22];
rx(pi/2) qubits[26];
ry(pi/2) qubits[59];
rx(pi/2) qubits[19];
y qubits[61];
z qubits[68];
z qubits[65];
s qubits[9];
ccx qubits[66], qubits[5], qubits[18];
cz qubits[29], qubits[11];
ry(pi/2) qubits[59];
y qubits[6];
t qubits[51];
rx(pi/2) qubits[29];
h qubits[57];
ry(pi/2) qubits[8];
rx(pi/2) qubits[15];
z qubits[8];
ccx qubits[19], qubits[21], qubits[41];
t qubits[16];
z qubits[37];
h qubits[4];
s qubits[18];
x qubits[13];
rx(pi/2) qubits[33];
cx qubits[0], qubits[39];
x qubits[63];
ry(pi/2) qubits[63];
h qubits[62];
ry(pi/2) qubits[65];
x qubits[34];
cz qubits[60], qubits[7];
