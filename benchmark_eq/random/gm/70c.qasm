OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[70];

y qubits[1];
x qubits[39];
cx qubits[3], qubits[48];
cz qubits[69], qubits[35];
ccx qubits[39], qubits[69], qubits[23];
y qubits[39];
cz qubits[64], qubits[9];
ry(pi/2) qubits[64];
z qubits[46];
rx(pi/2) qubits[21];
ry(pi/2) qubits[56];
x qubits[17];
t qubits[34];
t qubits[13];
x qubits[21];
rx(pi/2) qubits[56];
cz qubits[53], qubits[67];
s qubits[16];
y qubits[45];
cz qubits[28], qubits[26];
rx(pi/2) qubits[34];
ccx qubits[54], qubits[28], qubits[43];
t qubits[16];
cz qubits[36], qubits[2];
cz qubits[65], qubits[14];
cz qubits[47], qubits[27];
ry(pi/2) qubits[69];
y qubits[51];
x qubits[10];
rx(pi/2) qubits[57];
s qubits[27];
t qubits[19];
t qubits[1];
rx(pi/2) qubits[31];
rx(pi/2) qubits[12];
rx(pi/2) qubits[21];
y qubits[18];
s qubits[21];
s qubits[63];
x qubits[46];
ry(pi/2) qubits[6];
cz qubits[58], qubits[17];
x qubits[39];
cx qubits[64], qubits[30];
x qubits[32];
x qubits[1];
rx(pi/2) qubits[55];
z qubits[33];
x qubits[62];
cz qubits[42], qubits[26];
ccx qubits[2], qubits[53], qubits[63];
ry(pi/2) qubits[47];
cx qubits[23], qubits[52];
y qubits[39];
h qubits[56];
t qubits[10];
t qubits[17];
ccx qubits[52], qubits[61], qubits[40];
cz qubits[66], qubits[25];
x qubits[29];
z qubits[14];
x qubits[38];
cz qubits[46], qubits[40];
z qubits[51];
h qubits[12];
h qubits[41];
cz qubits[42], qubits[22];
y qubits[41];
x qubits[0];
rx(pi/2) qubits[4];
y qubits[49];
h qubits[23];
cx qubits[3], qubits[60];
rx(pi/2) qubits[45];
y qubits[22];
ccx qubits[35], qubits[62], qubits[38];
t qubits[28];
ccx qubits[34], qubits[6], qubits[1];
cx qubits[40], qubits[61];
ry(pi/2) qubits[15];
cz qubits[69], qubits[31];
cx qubits[60], qubits[38];
t qubits[47];
t qubits[24];
s qubits[29];
t qubits[20];
y qubits[69];
h qubits[0];
rx(pi/2) qubits[65];
y qubits[52];
y qubits[66];
x qubits[61];
y qubits[41];
z qubits[29];
h qubits[56];
cx qubits[30], qubits[55];
cz qubits[69], qubits[7];
s qubits[53];
z qubits[6];
x qubits[65];
x qubits[32];
ry(pi/2) qubits[64];
x qubits[11];
ry(pi/2) qubits[65];
h qubits[48];
t qubits[6];
h qubits[43];
rx(pi/2) qubits[34];
z qubits[47];
z qubits[55];
s qubits[18];
ry(pi/2) qubits[18];
h qubits[36];
cx qubits[69], qubits[55];
rx(pi/2) qubits[6];
ry(pi/2) qubits[58];
rx(pi/2) qubits[30];
rx(pi/2) qubits[23];
s qubits[28];
cz qubits[9], qubits[43];
z qubits[61];
s qubits[25];
ry(pi/2) qubits[31];
z qubits[69];
h qubits[33];
h qubits[44];
rx(pi/2) qubits[67];
rx(pi/2) qubits[65];
x qubits[7];
cx qubits[14], qubits[43];
h qubits[26];
z qubits[54];
cz qubits[34], qubits[12];
t qubits[56];
z qubits[54];
ry(pi/2) qubits[14];
x qubits[26];
ccx qubits[35], qubits[37], qubits[15];
cz qubits[67], qubits[59];
z qubits[64];
h qubits[0];
cx qubits[31], qubits[21];
t qubits[16];
y qubits[54];
y qubits[26];
s qubits[8];
z qubits[64];
cz qubits[48], qubits[61];
h qubits[4];
z qubits[9];
cz qubits[60], qubits[47];
ry(pi/2) qubits[1];
y qubits[7];
h qubits[50];
t qubits[64];
s qubits[61];
y qubits[34];
rx(pi/2) qubits[12];
z qubits[52];
x qubits[5];
y qubits[31];
z qubits[55];
h qubits[14];
y qubits[25];
ry(pi/2) qubits[2];
cz qubits[29], qubits[61];
t qubits[42];
t qubits[65];
h qubits[39];
z qubits[42];
h qubits[29];
s qubits[9];
s qubits[25];
y qubits[43];
h qubits[56];
x qubits[49];
ry(pi/2) qubits[31];
t qubits[24];
ccx qubits[38], qubits[63], qubits[25];
s qubits[34];
t qubits[55];
t qubits[5];
z qubits[54];
cz qubits[31], qubits[26];
y qubits[2];
h qubits[40];
h qubits[6];
cx qubits[25], qubits[24];
z qubits[1];
ccx qubits[17], qubits[32], qubits[4];
ry(pi/2) qubits[56];
ccx qubits[46], qubits[23], qubits[52];
t qubits[40];
rx(pi/2) qubits[16];
rx(pi/2) qubits[42];
t qubits[32];
cx qubits[38], qubits[63];
ry(pi/2) qubits[19];
y qubits[12];
h qubits[67];
ry(pi/2) qubits[49];
ccx qubits[63], qubits[53], qubits[34];
z qubits[69];
y qubits[23];
z qubits[63];
ccx qubits[36], qubits[3], qubits[29];
cx qubits[19], qubits[28];
h qubits[31];
rx(pi/2) qubits[16];
