OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
cx q[2],q[0];
cx q[4],q[1];
ccx q[1],q[3],q[2];
cx q[1],q[3];
ccx q[2],q[0],q[3];
cx q[3],q[2];
ccx q[3],q[1],q[4];
ccx q[2],q[0],q[3];
