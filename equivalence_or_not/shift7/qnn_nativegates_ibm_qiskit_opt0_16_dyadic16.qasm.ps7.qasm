OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
rz(pi / 2) q[0];
rx(0.5 * pi) q[0];
rz(pi / 2) q[0];
rz(20861 * pi / 32768) q[0];
rz(pi / 2) q[1];
rx(0.5 * pi) q[1];
rz(pi / 2) q[1];
rz(20861 * pi / 32768) q[1];
cx q[0],q[1];
rz(23919 * pi / 8192) q[1];
cx q[0],q[1];
rz(pi / 2) q[2];
rx(0.5 * pi) q[2];
rz(pi / 2) q[2];
rz(20861 * pi / 32768) q[2];
cx q[0],q[2];
rz(23919 * pi / 8192) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(23919 * pi / 8192) q[2];
cx q[1],q[2];
rz(pi / 2) q[3];
rx(0.5 * pi) q[3];
rz(pi / 2) q[3];
rz(20861 * pi / 32768) q[3];
cx q[0],q[3];
rz(23919 * pi / 8192) q[3];
cx q[0],q[3];
cx q[1],q[3];
rz(23919 * pi / 8192) q[3];
cx q[1],q[3];
cx q[2],q[3];
rz(23919 * pi / 8192) q[3];
cx q[2],q[3];
rz(pi / 2) q[4];
rx(0.5 * pi) q[4];
rz(pi / 2) q[4];
rz(20861 * pi / 32768) q[4];
cx q[0],q[4];
rz(23919 * pi / 8192) q[4];
cx q[0],q[4];
cx q[1],q[4];
rz(23919 * pi / 8192) q[4];
cx q[1],q[4];
cx q[2],q[4];
rz(23919 * pi / 8192) q[4];
cx q[2],q[4];
cx q[3],q[4];
rz(23919 * pi / 8192) q[4];
cx q[3],q[4];
rz(pi / 2) q[5];
rx(0.5 * pi) q[5];
rz(pi / 2) q[5];
rz(20861 * pi / 32768) q[5];
cx q[0],q[5];
rz(23919 * pi / 8192) q[5];
cx q[0],q[5];
cx q[1],q[5];
rz(23919 * pi / 8192) q[5];
cx q[1],q[5];
cx q[2],q[5];
rz(23919 * pi / 8192) q[5];
cx q[2],q[5];
cx q[3],q[5];
rz(23919 * pi / 8192) q[5];
cx q[3],q[5];
cx q[4],q[5];
rz(23919 * pi / 8192) q[5];
cx q[4],q[5];
rz(pi / 2) q[6];
rx(0.5 * pi) q[6];
rz(pi / 2) q[6];
rz(20861 * pi / 32768) q[6];
cx q[0],q[6];
rz(23919 * pi / 8192) q[6];
cx q[0],q[6];
cx q[1],q[6];
rz(23919 * pi / 8192) q[6];
cx q[1],q[6];
cx q[2],q[6];
rz(23919 * pi / 8192) q[6];
cx q[2],q[6];
cx q[3],q[6];
rz(23919 * pi / 8192) q[6];
cx q[3],q[6];
cx q[4],q[6];
rz(23919 * pi / 8192) q[6];
cx q[4],q[6];
cx q[5],q[6];
rz(23919 * pi / 8192) q[6];
cx q[5],q[6];
rz(pi / 2) q[7];
rx(0.5 * pi) q[7];
rz(pi / 2) q[7];
rz(20861 * pi / 32768) q[7];
cx q[0],q[7];
rz(23919 * pi / 8192) q[7];
cx q[0],q[7];
cx q[1],q[7];
rz(23919 * pi / 8192) q[7];
cx q[1],q[7];
cx q[2],q[7];
rz(23919 * pi / 8192) q[7];
cx q[2],q[7];
cx q[3],q[7];
rz(23919 * pi / 8192) q[7];
cx q[3],q[7];
cx q[4],q[7];
rz(23919 * pi / 8192) q[7];
cx q[4],q[7];
cx q[5],q[7];
rz(23919 * pi / 8192) q[7];
cx q[5],q[7];
cx q[6],q[7];
rz(23919 * pi / 8192) q[7];
cx q[6],q[7];
rz(pi / 2) q[8];
rx(0.5 * pi) q[8];
rz(pi / 2) q[8];
rz(20861 * pi / 32768) q[8];
cx q[0],q[8];
rz(23919 * pi / 8192) q[8];
cx q[0],q[8];
cx q[1],q[8];
rz(23919 * pi / 8192) q[8];
cx q[1],q[8];
cx q[2],q[8];
rz(23919 * pi / 8192) q[8];
cx q[2],q[8];
cx q[3],q[8];
rz(23919 * pi / 8192) q[8];
cx q[3],q[8];
cx q[4],q[8];
rz(23919 * pi / 8192) q[8];
cx q[4],q[8];
cx q[5],q[8];
rz(23919 * pi / 8192) q[8];
cx q[5],q[8];
cx q[6],q[8];
rz(23919 * pi / 8192) q[8];
cx q[6],q[8];
cx q[7],q[8];
rz(23919 * pi / 8192) q[8];
cx q[7],q[8];
rz(pi / 2) q[9];
rx(0.5 * pi) q[9];
rz(pi / 2) q[9];
rz(20861 * pi / 32768) q[9];
cx q[0],q[9];
rz(23919 * pi / 8192) q[9];
cx q[0],q[9];
cx q[1],q[9];
rz(23919 * pi / 8192) q[9];
cx q[1],q[9];
cx q[2],q[9];
rz(23919 * pi / 8192) q[9];
cx q[2],q[9];
cx q[3],q[9];
rz(23919 * pi / 8192) q[9];
cx q[3],q[9];
cx q[4],q[9];
rz(23919 * pi / 8192) q[9];
cx q[4],q[9];
cx q[5],q[9];
rz(23919 * pi / 8192) q[9];
cx q[5],q[9];
cx q[6],q[9];
rz(23919 * pi / 8192) q[9];
cx q[6],q[9];
cx q[7],q[9];
rz(23919 * pi / 8192) q[9];
cx q[7],q[9];
cx q[8],q[9];
rz(23919 * pi / 8192) q[9];
cx q[8],q[9];
rz(pi / 2) q[10];
rx(0.5 * pi) q[10];
rz(pi / 2) q[10];
rz(20861 * pi / 32768) q[10];
cx q[0],q[10];
rz(23919 * pi / 8192) q[10];
cx q[0],q[10];
cx q[1],q[10];
rz(23919 * pi / 8192) q[10];
cx q[1],q[10];
cx q[2],q[10];
rz(23919 * pi / 8192) q[10];
cx q[2],q[10];
cx q[3],q[10];
rz(23919 * pi / 8192) q[10];
cx q[3],q[10];
cx q[4],q[10];
rz(23919 * pi / 8192) q[10];
cx q[4],q[10];
cx q[5],q[10];
rz(23919 * pi / 8192) q[10];
cx q[5],q[10];
cx q[6],q[10];
rz(23919 * pi / 8192) q[10];
cx q[6],q[10];
cx q[7],q[10];
rz(23919 * pi / 8192) q[10];
cx q[7],q[10];
cx q[8],q[10];
rz(23919 * pi / 8192) q[10];
cx q[8],q[10];
cx q[9],q[10];
rz(23919 * pi / 8192) q[10];
cx q[9],q[10];
rz(pi / 2) q[11];
rx(0.5 * pi) q[11];
rz(pi / 2) q[11];
rz(20861 * pi / 32768) q[11];
cx q[0],q[11];
rz(23919 * pi / 8192) q[11];
cx q[0],q[11];
cx q[1],q[11];
rz(23919 * pi / 8192) q[11];
cx q[1],q[11];
cx q[2],q[11];
rz(23919 * pi / 8192) q[11];
cx q[2],q[11];
cx q[3],q[11];
rz(23919 * pi / 8192) q[11];
cx q[3],q[11];
cx q[4],q[11];
rz(23919 * pi / 8192) q[11];
cx q[4],q[11];
cx q[5],q[11];
rz(23919 * pi / 8192) q[11];
cx q[5],q[11];
cx q[6],q[11];
rz(23919 * pi / 8192) q[11];
cx q[6],q[11];
cx q[7],q[11];
rz(23919 * pi / 8192) q[11];
cx q[7],q[11];
cx q[8],q[11];
rz(23919 * pi / 8192) q[11];
cx q[8],q[11];
cx q[9],q[11];
rz(23919 * pi / 8192) q[11];
cx q[9],q[11];
cx q[10],q[11];
rz(23919 * pi / 8192) q[11];
cx q[10],q[11];
rz(pi / 2) q[12];
rx(0.5 * pi) q[12];
rz(pi / 2) q[12];
rz(20861 * pi / 32768) q[12];
cx q[0],q[12];
rz(23919 * pi / 8192) q[12];
cx q[0],q[12];
cx q[1],q[12];
rz(23919 * pi / 8192) q[12];
cx q[1],q[12];
cx q[2],q[12];
rz(23919 * pi / 8192) q[12];
cx q[2],q[12];
cx q[3],q[12];
rz(23919 * pi / 8192) q[12];
cx q[3],q[12];
cx q[4],q[12];
rz(23919 * pi / 8192) q[12];
cx q[4],q[12];
cx q[5],q[12];
rz(23919 * pi / 8192) q[12];
cx q[5],q[12];
cx q[6],q[12];
rz(23919 * pi / 8192) q[12];
cx q[6],q[12];
cx q[7],q[12];
rz(23919 * pi / 8192) q[12];
cx q[7],q[12];
cx q[8],q[12];
rz(23919 * pi / 8192) q[12];
cx q[8],q[12];
cx q[9],q[12];
rz(23919 * pi / 8192) q[12];
cx q[9],q[12];
cx q[10],q[12];
rz(23919 * pi / 8192) q[12];
cx q[10],q[12];
cx q[11],q[12];
rz(23919 * pi / 8192) q[12];
cx q[11],q[12];
rz(pi / 2) q[13];
rx(0.5 * pi) q[13];
rz(pi / 2) q[13];
rz(20861 * pi / 32768) q[13];
cx q[0],q[13];
rz(23919 * pi / 8192) q[13];
cx q[0],q[13];
cx q[1],q[13];
rz(23919 * pi / 8192) q[13];
cx q[1],q[13];
cx q[2],q[13];
rz(23919 * pi / 8192) q[13];
cx q[2],q[13];
cx q[3],q[13];
rz(23919 * pi / 8192) q[13];
cx q[3],q[13];
cx q[4],q[13];
rz(23919 * pi / 8192) q[13];
cx q[4],q[13];
cx q[5],q[13];
rz(23919 * pi / 8192) q[13];
cx q[5],q[13];
cx q[6],q[13];
rz(23919 * pi / 8192) q[13];
cx q[6],q[13];
cx q[7],q[13];
rz(23919 * pi / 8192) q[13];
cx q[7],q[13];
cx q[8],q[13];
rz(23919 * pi / 8192) q[13];
cx q[8],q[13];
cx q[9],q[13];
rz(23919 * pi / 8192) q[13];
cx q[9],q[13];
cx q[10],q[13];
rz(23919 * pi / 8192) q[13];
cx q[10],q[13];
cx q[11],q[13];
rz(23919 * pi / 8192) q[13];
cx q[11],q[13];
cx q[12],q[13];
rz(23919 * pi / 8192) q[13];
cx q[12],q[13];
rz(pi / 2) q[14];
rx(0.5 * pi) q[14];
rz(pi / 2) q[14];
rz(20861 * pi / 32768) q[14];
cx q[0],q[14];
rz(23919 * pi / 8192) q[14];
cx q[0],q[14];
cx q[1],q[14];
rz(23919 * pi / 8192) q[14];
cx q[1],q[14];
cx q[2],q[14];
rz(23919 * pi / 8192) q[14];
cx q[2],q[14];
cx q[3],q[14];
rz(23919 * pi / 8192) q[14];
cx q[3],q[14];
cx q[4],q[14];
rz(23919 * pi / 8192) q[14];
cx q[4],q[14];
cx q[5],q[14];
rz(23919 * pi / 8192) q[14];
cx q[5],q[14];
cx q[6],q[14];
rz(23919 * pi / 8192) q[14];
cx q[6],q[14];
cx q[7],q[14];
rz(23919 * pi / 8192) q[14];
cx q[7],q[14];
cx q[8],q[14];
rz(23919 * pi / 8192) q[14];
cx q[8],q[14];
cx q[9],q[14];
rz(23919 * pi / 8192) q[14];
cx q[9],q[14];
cx q[10],q[14];
rz(23919 * pi / 8192) q[14];
cx q[10],q[14];
cx q[11],q[14];
rz(23919 * pi / 8192) q[14];
cx q[11],q[14];
cx q[12],q[14];
rz(23919 * pi / 8192) q[14];
cx q[12],q[14];
cx q[13],q[14];
rz(23919 * pi / 8192) q[14];
cx q[13],q[14];
rz(pi / 2) q[15];
rx(0.5 * pi) q[15];
rz(pi / 2) q[15];
rz(20861 * pi / 32768) q[15];
cx q[0],q[15];
rz(23919 * pi / 8192) q[15];
cx q[0],q[15];
rz(pi / 2) q[0];
rx(0.5 * pi) q[0];
rz(pi / 2) q[0];
rz(20861 * pi / 32768) q[0];
cx q[1],q[15];
rz(23919 * pi / 8192) q[15];
cx q[1],q[15];
rz(pi / 2) q[1];
rx(0.5 * pi) q[1];
rz(pi / 2) q[1];
rz(20861 * pi / 32768) q[1];
cx q[0],q[1];
rz(23919 * pi / 8192) q[1];
cx q[0],q[1];
cx q[2],q[15];
rz(23919 * pi / 8192) q[15];
cx q[2],q[15];
rz(pi / 2) q[2];
rx(0.5 * pi) q[2];
rz(pi / 2) q[2];
rz(20861 * pi / 32768) q[2];
cx q[0],q[2];
rz(23919 * pi / 8192) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(23919 * pi / 8192) q[2];
cx q[1],q[2];
cx q[3],q[15];
rz(23919 * pi / 8192) q[15];
cx q[3],q[15];
rz(pi / 2) q[3];
rx(0.5 * pi) q[3];
rz(pi / 2) q[3];
rz(20861 * pi / 32768) q[3];
cx q[0],q[3];
rz(23919 * pi / 8192) q[3];
cx q[0],q[3];
cx q[1],q[3];
rz(23919 * pi / 8192) q[3];
cx q[1],q[3];
cx q[2],q[3];
rz(23919 * pi / 8192) q[3];
cx q[2],q[3];
cx q[4],q[15];
rz(23919 * pi / 8192) q[15];
cx q[4],q[15];
rz(pi / 2) q[4];
rx(0.5 * pi) q[4];
rz(pi / 2) q[4];
rz(20861 * pi / 32768) q[4];
cx q[0],q[4];
rz(23919 * pi / 8192) q[4];
cx q[0],q[4];
cx q[1],q[4];
rz(23919 * pi / 8192) q[4];
cx q[1],q[4];
cx q[2],q[4];
rz(23919 * pi / 8192) q[4];
cx q[2],q[4];
cx q[3],q[4];
rz(23919 * pi / 8192) q[4];
cx q[3],q[4];
cx q[5],q[15];
rz(23919 * pi / 8192) q[15];
cx q[5],q[15];
rz(pi / 2) q[5];
rx(0.5 * pi) q[5];
rz(pi / 2) q[5];
rz(20861 * pi / 32768) q[5];
cx q[0],q[5];
rz(23919 * pi / 8192) q[5];
cx q[0],q[5];
cx q[1],q[5];
rz(23919 * pi / 8192) q[5];
cx q[1],q[5];
cx q[2],q[5];
rz(23919 * pi / 8192) q[5];
cx q[2],q[5];
cx q[3],q[5];
rz(23919 * pi / 8192) q[5];
cx q[3],q[5];
cx q[4],q[5];
rz(23919 * pi / 8192) q[5];
cx q[4],q[5];
cx q[6],q[15];
rz(23919 * pi / 8192) q[15];
cx q[6],q[15];
rz(pi / 2) q[6];
rx(0.5 * pi) q[6];
rz(pi / 2) q[6];
rz(20861 * pi / 32768) q[6];
cx q[0],q[6];
rz(23919 * pi / 8192) q[6];
cx q[0],q[6];
cx q[1],q[6];
rz(23919 * pi / 8192) q[6];
cx q[1],q[6];
cx q[2],q[6];
rz(23919 * pi / 8192) q[6];
cx q[2],q[6];
cx q[3],q[6];
rz(23919 * pi / 8192) q[6];
cx q[3],q[6];
cx q[4],q[6];
rz(23919 * pi / 8192) q[6];
cx q[4],q[6];
cx q[5],q[6];
rz(23919 * pi / 8192) q[6];
cx q[5],q[6];
cx q[7],q[15];
rz(23919 * pi / 8192) q[15];
cx q[7],q[15];
rz(pi / 2) q[7];
rx(0.5 * pi) q[7];
rz(pi / 2) q[7];
rz(20861 * pi / 32768) q[7];
cx q[0],q[7];
rz(23919 * pi / 8192) q[7];
cx q[0],q[7];
cx q[1],q[7];
rz(23919 * pi / 8192) q[7];
cx q[1],q[7];
cx q[2],q[7];
rz(23919 * pi / 8192) q[7];
cx q[2],q[7];
cx q[3],q[7];
rz(23919 * pi / 8192) q[7];
cx q[3],q[7];
cx q[4],q[7];
rz(23919 * pi / 8192) q[7];
cx q[4],q[7];
cx q[5],q[7];
rz(23919 * pi / 8192) q[7];
cx q[5],q[7];
cx q[6],q[7];
rz(23919 * pi / 8192) q[7];
cx q[6],q[7];
cx q[8],q[15];
rz(23919 * pi / 8192) q[15];
cx q[8],q[15];
rz(pi / 2) q[8];
rx(0.5 * pi) q[8];
rz(pi / 2) q[8];
rz(20861 * pi / 32768) q[8];
cx q[0],q[8];
rz(23919 * pi / 8192) q[8];
cx q[0],q[8];
cx q[1],q[8];
rz(23919 * pi / 8192) q[8];
cx q[1],q[8];
cx q[2],q[8];
rz(23919 * pi / 8192) q[8];
cx q[2],q[8];
cx q[3],q[8];
rz(23919 * pi / 8192) q[8];
cx q[3],q[8];
cx q[4],q[8];
rz(23919 * pi / 8192) q[8];
cx q[4],q[8];
cx q[5],q[8];
rz(23919 * pi / 8192) q[8];
cx q[5],q[8];
cx q[6],q[8];
rz(23919 * pi / 8192) q[8];
cx q[6],q[8];
cx q[7],q[8];
rz(23919 * pi / 8192) q[8];
cx q[7],q[8];
cx q[9],q[15];
rz(23919 * pi / 8192) q[15];
cx q[9],q[15];
cx q[10],q[15];
rz(23919 * pi / 8192) q[15];
cx q[10],q[15];
rz(pi / 2) q[10];
rx(0.5 * pi) q[10];
rz(pi / 2) q[10];
rz(20861 * pi / 32768) q[10];
cx q[11],q[15];
rz(23919 * pi / 8192) q[15];
cx q[11],q[15];
rz(pi / 2) q[11];
rx(0.5 * pi) q[11];
rz(pi / 2) q[11];
rz(20861 * pi / 32768) q[11];
cx q[12],q[15];
rz(23919 * pi / 8192) q[15];
cx q[12],q[15];
rz(pi / 2) q[12];
rx(0.5 * pi) q[12];
rz(pi / 2) q[12];
rz(20861 * pi / 32768) q[12];
cx q[13],q[15];
rz(23919 * pi / 8192) q[15];
cx q[13],q[15];
rz(pi / 2) q[13];
rx(0.5 * pi) q[13];
rz(pi / 2) q[13];
rz(20861 * pi / 32768) q[13];
cx q[14],q[15];
rz(23919 * pi / 8192) q[15];
cx q[14],q[15];
rz(pi / 2) q[14];
rx(0.5 * pi) q[14];
rz(pi / 2) q[14];
rz(20861 * pi / 32768) q[14];
rz(pi / 2) q[15];
rx(0.5 * pi) q[15];
rz(pi / 2) q[15];
rz(20861 * pi / 32768) q[15];
rz(pi / 2) q[9];
rx(0.5 * pi) q[9];
rz(pi / 2) q[9];
rz(20861 * pi / 32768) q[9];
cx q[0],q[9];
rz(23919 * pi / 8192) q[9];
cx q[0],q[9];
cx q[0],q[10];
cx q[1],q[9];
rz(23919 * pi / 8192) q[10];
cx q[0],q[10];
cx q[0],q[11];
rz(23919 * pi / 8192) q[11];
cx q[0],q[11];
cx q[0],q[12];
rz(23919 * pi / 8192) q[12];
cx q[0],q[12];
cx q[0],q[13];
rz(23919 * pi / 8192) q[13];
cx q[0],q[13];
cx q[0],q[14];
rz(23919 * pi / 8192) q[14];
cx q[0],q[14];
cx q[0],q[15];
rz(23919 * pi / 8192) q[15];
cx q[0],q[15];
rz(0) q[0];
rx(0.5 * pi) q[0];
rz(37639 * pi / 32768) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(23919 * pi / 8192) q[9];
cx q[1],q[9];
cx q[1],q[10];
rz(23919 * pi / 8192) q[10];
cx q[1],q[10];
cx q[1],q[11];
rz(23919 * pi / 8192) q[11];
cx q[1],q[11];
cx q[1],q[12];
rz(23919 * pi / 8192) q[12];
cx q[1],q[12];
cx q[1],q[13];
rz(23919 * pi / 8192) q[13];
cx q[1],q[13];
cx q[1],q[14];
rz(23919 * pi / 8192) q[14];
cx q[1],q[14];
cx q[1],q[15];
rz(23919 * pi / 8192) q[15];
cx q[1],q[15];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(40679 * pi / 32768) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
cx q[2],q[9];
rz(23919 * pi / 8192) q[9];
cx q[2],q[9];
cx q[2],q[10];
rz(23919 * pi / 8192) q[10];
cx q[2],q[10];
cx q[2],q[11];
rz(23919 * pi / 8192) q[11];
cx q[2],q[11];
cx q[2],q[12];
rz(23919 * pi / 8192) q[12];
cx q[2],q[12];
cx q[2],q[13];
rz(23919 * pi / 8192) q[13];
cx q[2],q[13];
cx q[2],q[14];
rz(23919 * pi / 8192) q[14];
cx q[2],q[14];
cx q[2],q[15];
rz(23919 * pi / 8192) q[15];
cx q[2],q[15];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(17833 * pi / 16384) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
cx q[3],q[9];
rz(23919 * pi / 8192) q[9];
cx q[3],q[9];
cx q[3],q[10];
rz(23919 * pi / 8192) q[10];
cx q[3],q[10];
cx q[3],q[11];
rz(23919 * pi / 8192) q[11];
cx q[3],q[11];
cx q[3],q[12];
rz(23919 * pi / 8192) q[12];
cx q[3],q[12];
cx q[3],q[13];
rz(23919 * pi / 8192) q[13];
cx q[3],q[13];
cx q[3],q[14];
rz(23919 * pi / 8192) q[14];
cx q[3],q[14];
cx q[3],q[15];
rz(23919 * pi / 8192) q[15];
cx q[3],q[15];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(80399 * pi / 65536) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
cx q[4],q[9];
rz(23919 * pi / 8192) q[9];
cx q[4],q[9];
cx q[4],q[10];
rz(23919 * pi / 8192) q[10];
cx q[4],q[10];
cx q[4],q[11];
rz(23919 * pi / 8192) q[11];
cx q[4],q[11];
cx q[4],q[12];
rz(23919 * pi / 8192) q[12];
cx q[4],q[12];
cx q[4],q[13];
rz(23919 * pi / 8192) q[13];
cx q[4],q[13];
cx q[4],q[14];
rz(23919 * pi / 8192) q[14];
cx q[4],q[14];
cx q[4],q[15];
rz(23919 * pi / 8192) q[15];
cx q[4],q[15];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(16473 * pi / 16384) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
cx q[5],q[9];
rz(23919 * pi / 8192) q[9];
cx q[5],q[9];
cx q[5],q[10];
rz(23919 * pi / 8192) q[10];
cx q[5],q[10];
cx q[5],q[11];
rz(23919 * pi / 8192) q[11];
cx q[5],q[11];
cx q[5],q[12];
rz(23919 * pi / 8192) q[12];
cx q[5],q[12];
cx q[5],q[13];
rz(23919 * pi / 8192) q[13];
cx q[5],q[13];
cx q[5],q[14];
rz(23919 * pi / 8192) q[14];
cx q[5],q[14];
cx q[5],q[15];
rz(23919 * pi / 8192) q[15];
cx q[5],q[15];
rz(0) q[5];
rx(0.5 * pi) q[5];
rz(34979 * pi / 32768) q[5];
rx(0.5 * pi) q[5];
rz(3 * pi) q[5];
cx q[6],q[9];
rz(23919 * pi / 8192) q[9];
cx q[6],q[9];
cx q[6],q[10];
rz(23919 * pi / 8192) q[10];
cx q[6],q[10];
cx q[6],q[11];
rz(23919 * pi / 8192) q[11];
cx q[6],q[11];
cx q[6],q[12];
rz(23919 * pi / 8192) q[12];
cx q[6],q[12];
cx q[6],q[13];
rz(23919 * pi / 8192) q[13];
cx q[6],q[13];
cx q[6],q[14];
rz(23919 * pi / 8192) q[14];
cx q[6],q[14];
cx q[6],q[15];
rz(23919 * pi / 8192) q[15];
cx q[6],q[15];
rz(0) q[6];
rx(0.5 * pi) q[6];
rz(76031 * pi / 65536) q[6];
rx(0.5 * pi) q[6];
rz(3 * pi) q[6];
cx q[7],q[9];
rz(23919 * pi / 8192) q[9];
cx q[7],q[9];
cx q[7],q[10];
rz(23919 * pi / 8192) q[10];
cx q[7],q[10];
cx q[7],q[11];
rz(23919 * pi / 8192) q[11];
cx q[7],q[11];
cx q[7],q[12];
rz(23919 * pi / 8192) q[12];
cx q[7],q[12];
cx q[7],q[13];
rz(23919 * pi / 8192) q[13];
cx q[7],q[13];
cx q[7],q[14];
rz(23919 * pi / 8192) q[14];
cx q[7],q[14];
cx q[7],q[15];
rz(23919 * pi / 8192) q[15];
cx q[7],q[15];
rz(0) q[7];
rx(0.5 * pi) q[7];
rz(66951 * pi / 65536) q[7];
rx(0.5 * pi) q[7];
rz(3 * pi) q[7];
cx q[8],q[9];
rz(23919 * pi / 8192) q[9];
cx q[8],q[9];
cx q[8],q[10];
rz(23919 * pi / 8192) q[10];
cx q[8],q[10];
cx q[8],q[11];
rz(23919 * pi / 8192) q[11];
cx q[8],q[11];
cx q[8],q[12];
rz(23919 * pi / 8192) q[12];
cx q[8],q[12];
cx q[8],q[13];
rz(23919 * pi / 8192) q[13];
cx q[8],q[13];
cx q[8],q[14];
rz(23919 * pi / 8192) q[14];
cx q[8],q[14];
cx q[8],q[15];
rz(23919 * pi / 8192) q[15];
cx q[8],q[15];
rz(0) q[8];
rx(0.5 * pi) q[8];
rz(21447 * pi / 16384) q[8];
rx(0.5 * pi) q[8];
rz(3 * pi) q[8];
cx q[9],q[10];
rz(23919 * pi / 8192) q[10];
cx q[9],q[10];
cx q[9],q[11];
rz(23919 * pi / 8192) q[11];
cx q[9],q[11];
cx q[10],q[11];
rz(23919 * pi / 8192) q[11];
cx q[10],q[11];
cx q[9],q[12];
rz(23919 * pi / 8192) q[12];
cx q[9],q[12];
cx q[10],q[12];
rz(23919 * pi / 8192) q[12];
cx q[10],q[12];
cx q[11],q[12];
rz(23919 * pi / 8192) q[12];
cx q[11],q[12];
cx q[9],q[13];
rz(23919 * pi / 8192) q[13];
cx q[9],q[13];
cx q[10],q[13];
rz(23919 * pi / 8192) q[13];
cx q[10],q[13];
cx q[11],q[13];
rz(23919 * pi / 8192) q[13];
cx q[11],q[13];
cx q[12],q[13];
rz(23919 * pi / 8192) q[13];
cx q[12],q[13];
cx q[9],q[14];
rz(23919 * pi / 8192) q[14];
cx q[9],q[14];
cx q[10],q[14];
rz(23919 * pi / 8192) q[14];
cx q[10],q[14];
cx q[11],q[14];
rz(23919 * pi / 8192) q[14];
cx q[11],q[14];
cx q[12],q[14];
rz(23919 * pi / 8192) q[14];
cx q[12],q[14];
cx q[13],q[14];
rz(23919 * pi / 8192) q[14];
cx q[13],q[14];
cx q[9],q[15];
rz(23919 * pi / 8192) q[15];
cx q[9],q[15];
cx q[10],q[15];
rz(23919 * pi / 8192) q[15];
cx q[10],q[15];
rz(0) q[10];
rx(0.5 * pi) q[10];
rz(40677 * pi / 32768) q[10];
rx(0.5 * pi) q[10];
rz(3 * pi) q[10];
cx q[11],q[15];
rz(23919 * pi / 8192) q[15];
cx q[11],q[15];
rz(0) q[11];
rx(0.5 * pi) q[11];
rz(80521 * pi / 65536) q[11];
rx(0.5 * pi) q[11];
rz(3 * pi) q[11];
cx q[12],q[15];
rz(23919 * pi / 8192) q[15];
cx q[12],q[15];
rz(0) q[12];
rx(0.5 * pi) q[12];
rz(79617 * pi / 65536) q[12];
rx(0.5 * pi) q[12];
rz(3 * pi) q[12];
cx q[13],q[15];
rz(23919 * pi / 8192) q[15];
cx q[13],q[15];
rz(0) q[13];
rx(0.5 * pi) q[13];
rz(69393 * pi / 65536) q[13];
rx(0.5 * pi) q[13];
rz(3 * pi) q[13];
cx q[14],q[15];
rz(23919 * pi / 8192) q[15];
cx q[14],q[15];
rz(0) q[14];
rx(0.5 * pi) q[14];
rz(84779 * pi / 65536) q[14];
rx(0.5 * pi) q[14];
rz(3 * pi) q[14];
rz(0) q[15];
rx(0.5 * pi) q[15];
rz(10457 * pi / 8192) q[15];
rx(0.5 * pi) q[15];
rz(3 * pi) q[15];
cx q[14],q[15];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
rz(0) q[11];
rx(0.5 * pi) q[11];
rz(78015 * pi / 65536) q[11];
rx(0.5 * pi) q[11];
rz(3 * pi) q[11];
rz(0) q[12];
rx(0.5 * pi) q[12];
rz(76909 * pi / 65536) q[12];
rx(0.5 * pi) q[12];
rz(3 * pi) q[12];
rz(0) q[13];
rx(0.5 * pi) q[13];
rz(41075 * pi / 32768) q[13];
rx(0.5 * pi) q[13];
rz(3 * pi) q[13];
rz(0) q[14];
rx(0.5 * pi) q[14];
rz(78553 * pi / 65536) q[14];
rx(0.5 * pi) q[14];
rz(3 * pi) q[14];
rz(0) q[15];
rx(0.5 * pi) q[15];
rz(34897 * pi / 32768) q[15];
rx(0.5 * pi) q[15];
rz(3 * pi) q[15];
rz(0) q[9];
rx(0.5 * pi) q[9];
rz(67605 * pi / 65536) q[9];
rx(0.5 * pi) q[9];
rz(3 * pi) q[9];
cx q[9],q[10];
rz(0) q[10];
rx(0.5 * pi) q[10];
rz(76921 * pi / 65536) q[10];
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
rz(40727 * pi / 32768) q[0];
rx(0.5 * pi) q[0];
rz(3 * pi) q[0];
rz(0) q[1];
rx(0.5 * pi) q[1];
rz(79753 * pi / 65536) q[1];
rx(0.5 * pi) q[1];
rz(3 * pi) q[1];
rz(0) q[2];
rx(0.5 * pi) q[2];
rz(68921 * pi / 65536) q[2];
rx(0.5 * pi) q[2];
rz(3 * pi) q[2];
rz(0) q[3];
rx(0.5 * pi) q[3];
rz(85221 * pi / 65536) q[3];
rx(0.5 * pi) q[3];
rz(3 * pi) q[3];
rz(0) q[4];
rx(0.5 * pi) q[4];
rz(79585 * pi / 65536) q[4];
rx(0.5 * pi) q[4];
rz(3 * pi) q[4];
rz(0) q[5];
rx(0.5 * pi) q[5];
rz(78873 * pi / 65536) q[5];
rx(0.5 * pi) q[5];
rz(3 * pi) q[5];
rz(0) q[6];
rx(0.5 * pi) q[6];
rz(10597 * pi / 8192) q[6];
rx(0.5 * pi) q[6];
rz(3 * pi) q[6];
rz(0) q[7];
rx(0.5 * pi) q[7];
rz(41583 * pi / 32768) q[7];
rx(0.5 * pi) q[7];
rz(100663297*pi/33554432) q[7];
rz(0) q[8];
rx(0.5 * pi) q[8];
rz(34203 * pi / 32768) q[8];
rx(0.5 * pi) q[8];
rz(3 * pi) q[8];
rz(0) q[9];
rx(0.5 * pi) q[9];
rz(72037 * pi / 65536) q[9];
rx(0.5 * pi) q[9];
rz(3 * pi) q[9];
