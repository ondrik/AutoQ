OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(2 * pi) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(24673 * pi / 16384) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(49309 * pi / 32768) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(2 * pi) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(32795 * pi / 32768) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
rz(0) q[5];
rx(0.5 * pi) q[5];
rz(16391 * pi / 32768) q[5];
rx(0.5 * pi) q[5];
rz(3 * pi) q[5];
rz(0) q[6];
rx(0.5 * pi) q[6];
rz(1 * pi / 1) q[6];
rx(0.5 * pi) q[6];
rz(3 * pi) q[6];
rz(0) q[7];
rx(0.5 * pi) q[7];
rz(2 * pi) q[7];
rx(0.5 * pi) q[7];
rz(3 * pi) q[7];
rz(0) q[8];
rx(0.5 * pi) q[8];
rz(24587 * pi / 16384) q[8];
rx(0.5 * pi) q[8];
rz(3 * pi) q[8];
rz(0) q[9];
rx(0.5 * pi) q[9];
rz(2 * pi) q[9];
rx(0.5 * pi) q[9];
rz(3 * pi) q[9];
rz(0) q[10];
rx(0.5 * pi) q[10];
rz(6919 * pi / 8192) q[10];
rx(0.5 * pi) q[10];
rz(3 * pi) q[10];
rz(0) q[11];
rx(0.5 * pi) q[11];
rz(9581 * pi / 32768) q[11];
rx(0.5 * pi) q[11];
rz(3 * pi) q[11];
rz(0) q[12];
rx(0.5 * pi) q[12];
rz(16435 * pi / 32768) q[12];
rx(0.5 * pi) q[12];
rz(3 * pi) q[12];
rz(0) q[13];
rx(0.5 * pi) q[13];
rz(24559 * pi / 16384) q[13];
rx(0.5 * pi) q[13];
rz(3 * pi) q[13];
rz(0) q[14];
rx(0.5 * pi) q[14];
rz(8191 * pi / 16384) q[14];
rx(0.5 * pi) q[14];
rz(3 * pi) q[14];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
rz(0) q[11];
rx(0.5 * pi) q[11];
rz(38955 * pi / 32768) q[11];
rx(0.5 * pi) q[11];
rz(3 * pi) q[11];
rz(0) q[12];
rx(0.5 * pi) q[12];
rz(65505 * pi / 32768) q[12];
rx(0.5 * pi) q[12];
rz(3 * pi) q[12];
rz(0) q[13];
rx(0.5 * pi) q[13];
rz(32803 * pi / 32768) q[13];
rx(0.5 * pi) q[13];
rz(3 * pi) q[13];
rz(0) q[14];
rx(0.5 * pi) q[14];
rz(0) q[14];
rx(0.5 * pi) q[14];
rz(3 * pi) q[14];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
rz(0) q[12];
rx(0.5 * pi) q[12];
rz(16353 * pi / 32768) q[12];
rx(0.5 * pi) q[12];
rz(3 * pi) q[12];
rz(0) q[13];
rx(0.5 * pi) q[13];
rz(49167 * pi / 32768) q[13];
rx(0.5 * pi) q[13];
rz(3 * pi) q[13];
rz(0) q[14];
rx(0.5 * pi) q[14];
rz(12287 * pi / 8192) q[14];
rx(0.5 * pi) q[14];
rz(3 * pi) q[14];
cx q[9],q[10];
rz(0) q[10];
rx(0.5 * pi) q[10];
rz(20557 * pi / 32768) q[10];
rx(0.5 * pi) q[10];
rz(3 * pi) q[10];
cx q[10],q[11];
rz(0) q[11];
rx(0.5 * pi) q[11];
rz(6677 * pi / 16384) q[11];
rx(0.5 * pi) q[11];
rz(3 * pi) q[11];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[2], q[1];
cx q[0],q[1];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(8241 * pi / 8192) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi / 2) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(4091 * pi / 8192) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(49179 * pi / 32768) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(16403 * pi / 32768) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
rz(0) q[5];
rx(0.5 * pi) q[5];
rz(39837 * pi / 32768) q[5];
rx(0.5 * pi) q[5];
rz(3 * pi) q[5];
rz(0) q[6];
rx(0.5 * pi) q[6];
rz(12849 * pi / 16384) q[6];
rx(0.5 * pi) q[6];
rz(3 * pi) q[6];
rz(0) q[7];
rx(0.5 * pi) q[7];
rz(3 * pi / 2) q[7];
rx(0.5 * pi) q[7];
rz(3 * pi) q[7];
rz(0) q[8];
rx(0.5 * pi) q[8];
rz(19245 * pi / 32768) q[8];
rx(0.5 * pi) q[8];
rz(3 * pi) q[8];
rz(0) q[9];
rx(0.5 * pi) q[9];
rz(25999 * pi / 16384) q[9];
rx(0.5 * pi) q[9];
rz(3 * pi) q[9];
cx q[9],q[10];
rz(0) q[10];
rx(0.5 * pi) q[10];
rz(49127 * pi / 32768) q[10];
rx(0.5 * pi) q[10];
rz(3 * pi) q[10];
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
rz(13 * pi / 2048) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(16385 * pi / 32768) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(8419 * pi / 8192) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(32909 * pi / 32768) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(24565 * pi / 16384) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
rz(0) q[5];
rx(0.5 * pi) q[5];
rz(4089 * pi / 8192) q[5];
rx(0.5 * pi) q[5];
rz(3 * pi) q[5];
rz(0) q[6];
rx(0.5 * pi) q[6];
rz(32765 * pi / 32768) q[6];
rx(0.5 * pi) q[6];
rz(3 * pi) q[6];
rz(0) q[7];
rx(0.5 * pi) q[7];
rz(8209 * pi / 16384) q[7];
rx(0.5 * pi) q[7];
rz(3 * pi) q[7];
rz(0) q[8];
rx(0.5 * pi) q[8];
rz(51119 * pi / 32768) q[8];
rx(0.5 * pi) q[8];
rz(3 * pi) q[8];
rz(0) q[9];
rx(0.5 * pi) q[9];
rz(4095 * pi / 2048) q[9];
rx(0.5 * pi) q[9];
rz(3 * pi) q[9];
