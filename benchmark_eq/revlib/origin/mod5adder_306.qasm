OPENQASM 2.0;
include "qelib1.inc";
qreg q[32];
cx q[1],q[6];
cx q[4],q[6];
ccx q[3],q[6],q[7];
cx q[6],q[7];
cx q[3],q[8];
ccx q[2],q[7],q[8];
ccx q[2],q[3],q[8];
ccx q[3],q[4],q[9];
ccx q[1],q[4],q[10];
cx q[1],q[10];
cx q[10],q[11];
ccx q[0],q[4],q[11];
ccx q[0],q[10],q[11];
ccx q[1],q[4],q[12];
cx q[12],q[13];
ccx q[0],q[6],q[13];
ccx q[0],q[12],q[13];
cx q[13],q[14];
ccx q[3],q[11],q[14];
ccx q[3],q[13],q[14];
cx q[14],q[9];
ccx q[2],q[9],q[14];
cx q[14],q[8];
ccx q[5],q[8],q[14];
cx q[0],q[15];
cx q[4],q[15];
cx q[1],q[16];
ccx q[1],q[4],q[16];
cx q[4],q[16];
cx q[0],q[17];
ccx q[0],q[16],q[17];
cx q[16],q[17];
cx q[3],q[18];
cx q[17],q[18];
ccx q[3],q[15],q[18];
ccx q[3],q[17],q[18];
cx q[0],q[19];
cx q[6],q[19];
ccx q[0],q[16],q[19];
ccx q[0],q[6],q[19];
x q[19];
ccx q[3],q[19],q[15];
ccx q[3],q[15],q[19];
x q[19];
ccx q[2],q[19],q[18];
ccx q[2],q[18],q[19];
cx q[0],q[20];
cx q[6],q[20];
ccx q[0],q[10],q[20];
ccx q[0],q[6],q[20];
cx q[20],q[21];
ccx q[3],q[16],q[21];
ccx q[3],q[20],q[21];
cx q[4],q[22];
ccx q[0],q[10],q[22];
ccx q[0],q[4],q[22];
cx q[0],q[23];
ccx q[0],q[6],q[23];
cx q[6],q[23];
x q[23];
ccx q[3],q[23],q[22];
ccx q[3],q[22],q[23];
cx q[23],q[21];
ccx q[2],q[21],q[23];
cx q[23],q[19];
ccx q[5],q[19],q[23];
cx q[0],q[24];
cx q[12],q[24];
ccx q[0],q[16],q[24];
ccx q[0],q[12],q[24];
ccx q[3],q[24],q[25];
cx q[24],q[25];
cx q[0],q[26];
cx q[12],q[26];
cx q[3],q[27];
ccx q[3],q[26],q[27];
cx q[26],q[27];
cx q[27],q[25];
ccx q[2],q[25],q[27];
ccx q[1],q[4],q[28];
cx q[4],q[28];
cx q[0],q[29];
cx q[12],q[29];
ccx q[0],q[28],q[29];
ccx q[0],q[12],q[29];
ccx q[3],q[29],q[30];
cx q[29],q[30];
ccx q[0],q[28],q[31];
cx q[0],q[31];
cx q[31],q[11];
ccx q[3],q[11],q[31];
cx q[31],q[30];
ccx q[2],q[30],q[31];
x q[31];
ccx q[5],q[31],q[27];
ccx q[5],q[27],q[31];
