OPENQASM 2.0;
include "qelib1.inc";
qreg q[35];
ccx q[0],q[1],q[2];
cx q[0],q[1];
x q[1];
ccx q[3],q[4],q[5];
cx q[3],q[4];
ccx q[2],q[4],q[5];
cx q[2],q[4];
x q[4];
cx q[3],q[4];
ccx q[6],q[7],q[9];
cx q[6],q[7];
ccx q[10],q[11],q[12];
cx q[10],q[11];
ccx q[7],q[11],q[8];
ccx q[9],q[11],q[12];
ccx q[5],q[8],q[12];
ccx q[5],q[7],q[9];
ccx q[7],q[11],q[8];
cx q[5],q[7];
x q[7];
cx q[6],q[7];
cx q[9],q[11];
x q[11];
cx q[10],q[11];
ccx q[7],q[11],q[8];
ccx q[5],q[7],q[9];
ccx q[13],q[14],q[16];
cx q[13],q[14];
ccx q[17],q[18],q[20];
cx q[17],q[18];
ccx q[14],q[18],q[15];
ccx q[21],q[22],q[24];
cx q[21],q[22];
ccx q[25],q[26],q[27];
cx q[25],q[26];
ccx q[22],q[26],q[23];
ccx q[15],q[23],q[19];
ccx q[24],q[26],q[27];
ccx q[20],q[23],q[27];
ccx q[12],q[19],q[27];
ccx q[12],q[15],q[20];
ccx q[12],q[14],q[16];
ccx q[15],q[23],q[19];
ccx q[14],q[18],q[15];
cx q[12],q[14];
x q[14];
cx q[13],q[14];
cx q[16],q[18];
x q[18];
cx q[17],q[18];
ccx q[14],q[18],q[15];
ccx q[12],q[14],q[16];
ccx q[20],q[22],q[24];
ccx q[22],q[26],q[23];
cx q[20],q[22];
x q[22];
cx q[21],q[22];
cx q[24],q[26];
x q[26];
cx q[25],q[26];
ccx q[22],q[26],q[23];
ccx q[15],q[23],q[19];
ccx q[20],q[22],q[24];
ccx q[12],q[15],q[20];
ccx q[28],q[29],q[31];
cx q[28],q[29];
ccx q[32],q[33],q[34];
cx q[32],q[33];
ccx q[29],q[33],q[30];
ccx q[31],q[33],q[34];
ccx q[27],q[30],q[34];
ccx q[27],q[29],q[31];
ccx q[29],q[33],q[30];
cx q[27],q[29];
x q[29];
cx q[28],q[29];
cx q[31],q[33];
ccx q[27],q[29],q[31];
ccx q[12],q[19],q[27];
ccx q[20],q[23],q[27];
ccx q[15],q[23],q[19];
ccx q[16],q[18],q[20];
ccx q[14],q[18],q[15];
cx q[13],q[14];
ccx q[13],q[14],q[16];
x q[14];
cx q[17],q[18];
ccx q[17],q[18],q[20];
x q[18];
ccx q[24],q[26],q[27];
ccx q[22],q[26],q[23];
cx q[21],q[22];
ccx q[21],q[22],q[24];
x q[22];
cx q[25],q[26];
ccx q[25],q[26],q[27];
x q[26];
cx q[28],q[29];
ccx q[28],q[29],q[31];
x q[29];
ccx q[5],q[8],q[12];
ccx q[2],q[4],q[5];
ccx q[0],q[1],q[2];
x q[1];
cx q[3],q[4];
ccx q[3],q[4],q[5];
x q[4];
ccx q[9],q[11],q[12];
ccx q[7],q[11],q[8];
cx q[10],q[11];
ccx q[10],q[11],q[12];
x q[11];
cx q[6],q[7];
ccx q[6],q[7],q[9];
x q[7];
