OPENQASM 2.0;
include "qelib1.inc";
qreg q[25];
ccx q[2],q[1],q[0];
cx q[2],q[1];
ccx q[5],q[4],q[3];
cx q[5],q[4];
ccx q[8],q[7],q[6];
cx q[8],q[7];
ccx q[11],q[10],q[9];
cx q[11],q[10];
ccx q[14],q[13],q[12];
cx q[14],q[13];
ccx q[17],q[16],q[15];
cx q[17],q[16];
ccx q[20],q[19],q[18];
cx q[20],q[19];
ccx q[24],q[23],q[21];
cx q[24],q[23];
ccx q[23],q[22],q[21];
ccx q[19],q[21],q[18];
ccx q[16],q[18],q[15];
ccx q[13],q[15],q[12];
ccx q[10],q[12],q[9];
cx q[10],q[12];
cx q[13],q[15];
cx q[16],q[18];
cx q[19],q[21];
cx q[23],q[22];
ccx q[7],q[9],q[6];
ccx q[4],q[6],q[3];
ccx q[1],q[3],q[0];
cx q[1],q[3];
cx q[4],q[6];
cx q[7],q[9];
