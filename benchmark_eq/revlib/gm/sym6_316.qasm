OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
cx q[0],q[6];
ccx q[0],q[5],q[6];
cx q[5],q[6];
ccx q[0],q[5],q[7];
cx q[7],q[8];
ccx q[4],q[6],q[8];
ccx q[4],q[7],q[8];
ccx q[4],q[7],q[9];
cx q[9],q[10];
ccx q[1],q[8],q[10];
ccx q[1],q[9],q[10];
cx q[4],q[11];
ccx q[4],q[6],q[11];
cx q[6],q[11];
cx q[1],q[12];
cx q[11],q[12];
ccx q[1],q[9],q[12];
ccx q[1],q[11],q[12];
ccx q[1],q[11],q[8];
x q[8];
cx q[12],q[13];
ccx q[3],q[10],q[13];
ccx q[3],q[12],q[13];
ccx q[3],q[8],q[12];
ccx q[3],q[12],q[8];
cx q[8],q[13];
ccx q[2],q[13],q[8];
x q[8];
