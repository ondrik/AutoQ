OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
ccx q[0],q[1],q[2];
ccx q[0],q[1],q[3];
cx q[0],q[3];
x q[3];
ccx q[0],q[1],q[4];
cx q[1],q[4];
x q[4];
cx q[0],q[5];
ccx q[0],q[1],q[5];
cx q[1],q[5];
x q[5];
