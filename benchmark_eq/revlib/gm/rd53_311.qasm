OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
cx q[3],q[5];
ccx q[3],q[4],q[5];
cx q[4],q[5];
ccx q[3],q[4],q[6];
ccx q[0],q[5],q[7];
ccx q[0],q[6],q[7];
x q[5];
ccx q[0],q[6],q[8];
cx q[8],q[9];
ccx q[2],q[7],q[9];
ccx q[2],q[8],q[9];
ccx q[2],q[8],q[10];
cx q[10],q[9];
ccx q[1],q[9],q[10];
cx q[3],q[11];
cx q[4],q[11];
cx q[0],q[11];
ccx q[0],q[5],q[6];
ccx q[0],q[6],q[5];
x q[11];
cx q[2],q[11];
x q[11];
cx q[1],q[11];
x q[11];
cx q[5],q[12];
ccx q[2],q[7],q[12];
ccx q[2],q[5],q[12];
x q[7];
ccx q[2],q[7],q[5];
ccx q[2],q[5],q[7];
cx q[7],q[12];
ccx q[1],q[12],q[7];
x q[7];
