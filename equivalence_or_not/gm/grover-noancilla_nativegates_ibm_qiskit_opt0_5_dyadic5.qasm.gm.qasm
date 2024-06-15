OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/16) q[3];
x q[4];
cx q[3],q[4];
rz(0-pi/16) q[4];
cx q[3],q[4];
rz(pi/16) q[4];
cx q[3],q[2];
rz(0-pi/16) q[2];
cx q[2],q[4];
rz(pi/16) q[4];
cx q[2],q[4];
rz(0-pi/16) q[4];
cx q[3],q[2];
rz(pi/16) q[2];
cx q[2],q[4];
rz(0-pi/16) q[4];
cx q[2],q[4];
rz(pi/16) q[4];
cx q[2],q[1];
rz(0-pi/16) q[1];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[3],q[1];
rz(pi/16) q[1];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[2],q[1];
rz(0-pi/16) q[1];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[3],q[1];
rz(pi/16) q[1];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[1],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[2],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[1],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
x q[1];
rz(pi/8) q[1];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[2],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
x q[2];
rz(pi/8) q[2];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
x q[0];
rz(pi/8) q[0];
cx q[0],q[1];
rz(0-pi/8) q[1];
cx q[0],q[1];
cx q[1],q[2];
rz(0-pi/8) q[2];
cx q[0],q[2];
rz(pi/8) q[2];
cx q[1],q[2];
rz(0-pi/8) q[2];
cx q[0],q[2];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
x q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/8) q[3];
cx q[2],q[3];
rz(0-pi/8) q[3];
cx q[1],q[3];
rz(pi/8) q[3];
cx q[2],q[3];
rz(0-pi/8) q[3];
cx q[0],q[3];
rz(pi/8) q[3];
cx q[2],q[3];
rz(0-pi/8) q[3];
cx q[1],q[3];
x q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/8) q[3];
cx q[2],q[3];
x q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(0-pi/8) q[3];
cx q[0],q[3];
x q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
x q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/16) q[3];
cx q[3],q[4];
rz(0-pi/16) q[4];
cx q[3],q[4];
rz(pi/16) q[4];
cx q[3],q[2];
rz(0-pi/16) q[2];
cx q[2],q[4];
rz(pi/16) q[4];
cx q[2],q[4];
rz(0-pi/16) q[4];
cx q[3],q[2];
rz(pi/16) q[2];
cx q[2],q[4];
rz(0-pi/16) q[4];
cx q[2],q[4];
rz(pi/16) q[4];
cx q[2],q[1];
rz(0-pi/16) q[1];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[3],q[1];
rz(pi/16) q[1];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[2],q[1];
rz(0-pi/16) q[1];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[3],q[1];
rz(pi/16) q[1];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[1],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[2],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[1],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
x q[1];
rz(pi/8) q[1];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[2],q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
x q[2];
rz(pi/8) q[2];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
x q[0];
rz(pi/8) q[0];
cx q[0],q[1];
rz(0-pi/8) q[1];
cx q[0],q[1];
cx q[1],q[2];
rz(0-pi/8) q[2];
cx q[0],q[2];
rz(pi/8) q[2];
cx q[1],q[2];
rz(0-pi/8) q[2];
cx q[0],q[2];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
x q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/8) q[3];
cx q[2],q[3];
rz(0-pi/8) q[3];
cx q[1],q[3];
rz(pi/8) q[3];
cx q[2],q[3];
rz(0-pi/8) q[3];
cx q[0],q[3];
rz(pi/8) q[3];
cx q[2],q[3];
rz(0-pi/8) q[3];
cx q[1],q[3];
x q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/8) q[3];
cx q[2],q[3];
x q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(0-pi/8) q[3];
cx q[0],q[3];
x q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
x q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/16) q[3];
cx q[3],q[4];
rz(0-pi/16) q[4];
cx q[3],q[4];
rz(pi/16) q[4];
cx q[3],q[2];
rz(0-pi/16) q[2];
cx q[2],q[4];
rz(pi/16) q[4];
cx q[2],q[4];
rz(0-pi/16) q[4];
cx q[3],q[2];
rz(pi/16) q[2];
cx q[2],q[4];
rz(0-pi/16) q[4];
cx q[2],q[4];
rz(pi/16) q[4];
cx q[2],q[1];
rz(0-pi/16) q[1];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[3],q[1];
rz(pi/16) q[1];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[2],q[1];
rz(0-pi/16) q[1];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[3],q[1];
rz(pi/16) q[1];
cx q[1],q[4];
rz(0-pi/16) q[4];
cx q[1],q[4];
rz(pi/16) q[4];
cx q[1],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[2],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[1],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
x q[1];
rz(pi/8) q[1];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[2],q[0];
rz(0-pi/16) q[0];
cx q[0],q[4];
rz(pi/16) q[4];
cx q[0],q[4];
rz(0-pi/16) q[4];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
x q[2];
rz(pi/8) q[2];
cx q[3],q[0];
rz(pi/16) q[0];
cx q[0],q[4];
rz(0-pi/16) q[4];
cx q[0],q[4];
rz(pi/16) q[4];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
x q[0];
rz(pi/8) q[0];
cx q[0],q[1];
rz(0-pi/8) q[1];
cx q[0],q[1];
cx q[1],q[2];
rz(0-pi/8) q[2];
cx q[0],q[2];
rz(pi/8) q[2];
cx q[1],q[2];
rz(0-pi/8) q[2];
cx q[0],q[2];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
x q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/8) q[3];
cx q[2],q[3];
rz(0-pi/8) q[3];
cx q[1],q[3];
rz(pi/8) q[3];
cx q[2],q[3];
rz(0-pi/8) q[3];
cx q[0],q[3];
rz(pi/8) q[3];
cx q[2],q[3];
rz(0-pi/8) q[3];
cx q[1],q[3];
x q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(pi/8) q[3];
cx q[2],q[3];
x q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(0-pi/8) q[3];
cx q[0],q[3];
x q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
x q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
