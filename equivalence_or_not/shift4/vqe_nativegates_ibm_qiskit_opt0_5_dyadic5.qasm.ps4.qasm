OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(9 * pi / 16) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(15 * pi / 32) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(9 * pi / 16) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi / 2) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(1 * pi / 1) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(19 * pi / 32) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(11 * pi / 8) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(31 * pi / 32) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(0 * pi / 1) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(5 * pi / 4) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(15 * pi / 8) q[2];
rx(0.5 * pi) q[2];
rz(98305*pi/32768) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi / 2) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi / 2) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
