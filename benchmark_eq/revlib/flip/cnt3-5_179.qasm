OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
cx q[2],q[0];
cx q[3],q[5];
cx q[6],q[8];
cx q[9],q[11];
cx q[12],q[15];
ccx q[14],q[13],q[12];
cx q[12],q[15];
ccx q[10],q[12],q[9];
ccx q[15],q[13],q[14];
cx q[13],q[15];
cx q[9],q[11];
ccx q[11],q[12],q[10];
cx q[12],q[11];
ccx q[7],q[9],q[6];
cx q[6],q[8];
ccx q[4],q[6],q[3];
cx q[3],q[5];
ccx q[1],q[3],q[0];
cx q[0],q[2];
ccx q[2],q[3],q[1];
cx q[3],q[2];
ccx q[5],q[6],q[4];
cx q[6],q[5];
ccx q[8],q[9],q[7];
cx q[9],q[8];
