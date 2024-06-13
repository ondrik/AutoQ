OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(1 * pi / 1) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(1611 * pi / 1024) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(1343 * pi / 1024) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(1 * pi / 1024) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(1 * pi / 2) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
rz(0) q[5];
rx(0.5 * pi) q[5];
rz(1913 * pi / 1024) q[5];
rx(0.5 * pi) q[5];
rz(3 * pi) q[5];
rz(0) q[6];
rx(0.5 * pi) q[6];
rz(1 * pi / 2) q[6];
rx(0.5 * pi) q[6];
rz(3 * pi) q[6];
rz(0) q[7];
rx(0.5 * pi) q[7];
rz(2 * pi / 1) q[7];
rx(0.5 * pi) q[7];
rz(3 * pi) q[7];
rz(0) q[8];
rx(0.5 * pi) q[8];
rz(679 * pi / 1024) q[8];
rx(0.5 * pi) q[8];
rz(3 * pi) q[8];
rz(0) q[9];
rx(0.5 * pi) q[9];
rz(0 * pi / 1) q[9];
rx(0.5 * pi) q[9];
rz(3 * pi) q[9];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(1489 * pi / 1024) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(467 * pi / 512) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(243 * pi / 256) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(505 * pi / 512) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(1 * pi / 1) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
rz(0) q[5];
rx(0.5 * pi) q[5];
rz(0 * pi / 1) q[5];
rx(0.5 * pi) q[5];
rz(3 * pi) q[5];
rz(0) q[6];
rx(0.5 * pi) q[6];
rz(1 * pi / 1) q[6];
rx(0.5 * pi) q[6];
rz(3 * pi) q[6];
rz(0) q[7];
rx(0.5 * pi) q[7];
rz(1 * pi / 1) q[7];
rx(0.5 * pi) q[7];
rz(3 * pi) q[7];
rz(0) q[8];
rx(0.5 * pi) q[8];
rz(1 * pi / 2) q[8];
rx(0.5 * pi) q[8];
rz(3 * pi) q[8];
rz(0) q[9];
rx(0.5 * pi) q[9];
rz(3 * pi / 2) q[9];
rx(0.5 * pi) q[9];
rz(3 * pi) q[9];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(1583 * pi / 1024) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(1 * pi / 2) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(867 * pi / 512) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(1535 * pi / 1024) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi / 2) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
rz(0) q[5];
rx(0.5 * pi) q[5];
rz(313 * pi / 512) q[5];
rx(0.5 * pi) q[5];
rz(3 * pi) q[5];
rz(0) q[6];
rx(0.5 * pi) q[6];
rz(1 * pi / 2) q[6];
rx(0.5 * pi) q[6];
rz(3 * pi) q[6];
rz(0) q[7];
rx(0.5 * pi) q[7];
rz(929 * pi / 1024) q[7];
rx(0.5 * pi) q[7];
rz(3 * pi) q[7];
rz(0) q[8];
rx(0.5 * pi) q[8];
rz(3 * pi / 2) q[8];
rx(0.5 * pi) q[8];
rz(3 * pi) q[8];
rz(0) q[9];
rx(0.5 * pi) q[9];
rz(167 * pi / 1024) q[9];
rx(0.5 * pi) q[9];
rz(3 * pi) q[9];
