OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
ccx q[0],q[1],q[9];
cx q[0],q[1];
ccx q[2],q[9],q[10];
ccx q[1],q[2],q[9];
cx q[1],q[2];
ccx q[3],q[10],q[11];
ccx q[3],q[9],q[10];
ccx q[2],q[3],q[9];
cx q[2],q[3];
ccx q[4],q[10],q[11];
ccx q[4],q[9],q[10];
ccx q[3],q[4],q[9];
cx q[3],q[4];
ccx q[5],q[10],q[11];
ccx q[5],q[9],q[10];
ccx q[4],q[5],q[9];
cx q[4],q[5];
ccx q[6],q[10],q[11];
ccx q[6],q[9],q[10];
cx q[5],q[6];
ccx q[7],q[10],q[11];
ccx q[7],q[9],q[10];
ccx q[6],q[7],q[9];
cx q[6],q[7];
ccx q[8],q[10],q[11];
ccx q[8],q[9],q[10];
cx q[10],q[11];
