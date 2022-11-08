OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[70];

cz qubits[0], qubits[40];
ry(pi/2) qubits[10];
ccx qubits[0], qubits[55], qubits[10];
x qubits[53];
h qubits[6];
cx qubits[53], qubits[20];
cz qubits[46], qubits[34];
rx(pi/2) qubits[21];
s qubits[5];
ccx qubits[7], qubits[18], qubits[24];
cz qubits[0], qubits[29];
z qubits[56];
cx qubits[14], qubits[42];
rx(pi/2) qubits[51];
x qubits[37];
cz qubits[0], qubits[32];
y qubits[18];
z qubits[8];
ccx qubits[7], qubits[66], qubits[15];
rx(pi/2) qubits[18];
x qubits[21];
h qubits[16];
h qubits[66];
ccx qubits[64], qubits[25], qubits[49];
z qubits[67];
rx(pi/2) qubits[23];
t qubits[56];
rx(pi/2) qubits[16];
rx(pi/2) qubits[20];
y qubits[13];
ccx qubits[1], qubits[33], qubits[19];
z qubits[30];
ry(pi/2) qubits[49];
s qubits[43];
y qubits[32];
rx(pi/2) qubits[64];
y qubits[18];
rx(pi/2) qubits[7];
z qubits[51];
t qubits[2];
z qubits[65];
h qubits[35];
z qubits[47];
cz qubits[1], qubits[61];
cz qubits[15], qubits[24];
t qubits[36];
y qubits[44];
x qubits[56];
t qubits[28];
ccx qubits[31], qubits[35], qubits[0];
s qubits[35];
h qubits[59];
x qubits[24];
x qubits[32];
rx(pi/2) qubits[62];
cz qubits[43], qubits[51];
t qubits[57];
ry(pi/2) qubits[43];
cz qubits[9], qubits[53];
y qubits[17];
h qubits[7];
h qubits[68];
cx qubits[46], qubits[41];
cx qubits[59], qubits[33];
y qubits[9];
s qubits[7];
ccx qubits[25], qubits[39], qubits[65];
z qubits[49];
cx qubits[11], qubits[57];
h qubits[65];
y qubits[52];
z qubits[25];
x qubits[46];
cz qubits[51], qubits[62];
t qubits[29];
ccx qubits[58], qubits[54], qubits[27];
cz qubits[45], qubits[36];
x qubits[52];
cz qubits[23], qubits[33];
ccx qubits[52], qubits[25], qubits[0];
x qubits[12];
cx qubits[13], qubits[54];
ry(pi/2) qubits[41];
t qubits[6];
h qubits[28];
y qubits[9];
s qubits[29];
z qubits[34];
t qubits[17];
x qubits[1];
ccx qubits[53], qubits[8], qubits[18];
h qubits[27];
h qubits[53];
x qubits[18];
ccx qubits[32], qubits[31], qubits[62];
y qubits[14];
y qubits[25];
h qubits[54];
t qubits[41];
ry(pi/2) qubits[67];
t qubits[6];
s qubits[61];
cz qubits[24], qubits[45];
cx qubits[19], qubits[65];
cx qubits[47], qubits[22];
ccx qubits[31], qubits[4], qubits[47];
z qubits[37];
rx(pi/2) qubits[30];
h qubits[34];
y qubits[11];
rx(pi/2) qubits[53];
z qubits[62];
cz qubits[34], qubits[35];
t qubits[57];
s qubits[34];
y qubits[13];
y qubits[42];
cx qubits[61], qubits[19];
rx(pi/2) qubits[20];
cz qubits[47], qubits[67];
y qubits[26];
x qubits[61];
cx qubits[6], qubits[60];
h qubits[26];
h qubits[3];
ry(pi/2) qubits[68];
s qubits[54];
s qubits[36];
y qubits[5];
cx qubits[36], qubits[38];
ccx qubits[44], qubits[30], qubits[4];
cx qubits[62], qubits[67];
ccx qubits[60], qubits[28], qubits[45];
z qubits[31];
cz qubits[49], qubits[21];
y qubits[6];
s qubits[39];
cz qubits[16], qubits[30];
rx(pi/2) qubits[45];
s qubits[43];
x qubits[9];
z qubits[31];
cz qubits[65], qubits[3];
y qubits[25];
z qubits[7];
cx qubits[68], qubits[47];
cx qubits[29], qubits[9];
rx(pi/2) qubits[9];
rx(pi/2) qubits[55];
z qubits[61];
x qubits[51];
ccx qubits[66], qubits[2], qubits[65];
y qubits[57];
h qubits[25];
z qubits[7];
cz qubits[61], qubits[23];
cz qubits[16], qubits[19];
ccx qubits[60], qubits[17], qubits[27];
rx(pi/2) qubits[58];
h qubits[41];
cx qubits[32], qubits[39];
cx qubits[23], qubits[5];
ry(pi/2) qubits[43];
y qubits[32];
rx(pi/2) qubits[30];
ccx qubits[14], qubits[56], qubits[27];
h qubits[5];
y qubits[56];
cx qubits[59], qubits[17];
rx(pi/2) qubits[61];
cz qubits[42], qubits[13];
cz qubits[20], qubits[55];
s qubits[52];
rx(pi/2) qubits[11];
cz qubits[41], qubits[29];
y qubits[55];
rx(pi/2) qubits[29];
cz qubits[22], qubits[55];
ccx qubits[61], qubits[18], qubits[19];
h qubits[17];
t qubits[22];
x qubits[12];
y qubits[11];
s qubits[27];
s qubits[16];
h qubits[20];
t qubits[48];
ccx qubits[28], qubits[20], qubits[2];
z qubits[17];
y qubits[60];
y qubits[39];
ccx qubits[59], qubits[30], qubits[6];
cx qubits[64], qubits[35];
z qubits[16];
ccx qubits[42], qubits[30], qubits[22];
s qubits[58];
x qubits[66];
t qubits[31];
ry(pi/2) qubits[61];
rx(pi/2) qubits[59];
cx qubits[7], qubits[20];
cz qubits[12], qubits[23];
x qubits[64];
ry(pi/2) qubits[5];
ccx qubits[28], qubits[26], qubits[30];
ccx qubits[56], qubits[47], qubits[17];
rx(pi/2) qubits[19];
s qubits[20];
ry(pi/2) qubits[50];
ccx qubits[32], qubits[11], qubits[47];
