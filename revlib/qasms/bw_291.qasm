OPENQASM 2.0;
include "qelib1.inc";
qreg q[87];
ccx q[2],q[4],q[5];
cx q[4],q[5];
cx q[5],q[6];
ccx q[1],q[2],q[6];
ccx q[1],q[5],q[6];
cx q[2],q[7];
ccx q[3],q[6],q[7];
ccx q[2],q[3],q[7];
ccx q[2],q[4],q[8];
cx q[4],q[9];
cx q[2],q[9];
cx q[1],q[10];
ccx q[1],q[9],q[10];
cx q[9],q[10];
cx q[3],q[11];
cx q[10],q[11];
ccx q[3],q[8],q[11];
ccx q[3],q[10],q[11];
cx q[11],q[12];
ccx q[0],q[7],q[12];
ccx q[0],q[11],q[12];
x q[12];
ccx q[1],q[2],q[13];
cx q[1],q[13];
ccx q[1],q[8],q[14];
cx q[1],q[14];
cx q[3],q[15];
cx q[1],q[15];
ccx q[3],q[14],q[15];
ccx q[1],q[3],q[15];
cx q[15],q[16];
ccx q[0],q[13],q[16];
ccx q[0],q[15],q[16];
x q[16];
cx q[4],q[17];
ccx q[2],q[4],q[17];
cx q[2],q[17];
cx q[17],q[18];
ccx q[1],q[4],q[18];
ccx q[1],q[17],q[18];
cx q[3],q[19];
cx q[14],q[19];
ccx q[3],q[18],q[19];
ccx q[3],q[14],q[19];
x q[14];
cx q[19],q[20];
ccx q[0],q[2],q[20];
ccx q[0],q[19],q[20];
x q[20];
cx q[3],q[21];
cx q[17],q[21];
ccx q[3],q[8],q[21];
ccx q[3],q[17],q[21];
cx q[21],q[22];
ccx q[0],q[2],q[22];
ccx q[0],q[21],q[22];
x q[22];
cx q[2],q[23];
ccx q[1],q[17],q[23];
ccx q[1],q[2],q[23];
ccx q[3],q[23],q[24];
cx q[3],q[24];
ccx q[2],q[4],q[25];
cx q[2],q[25];
cx q[25],q[26];
ccx q[1],q[8],q[26];
ccx q[1],q[25],q[26];
cx q[3],q[27];
cx q[26],q[27];
ccx q[3],q[10],q[27];
x q[10];
ccx q[3],q[26],q[27];
cx q[27],q[24];
ccx q[0],q[24],q[27];
x q[27];
cx q[1],q[28];
ccx q[1],q[5],q[28];
cx q[5],q[28];
cx q[3],q[29];
cx q[28],q[29];
ccx q[3],q[8],q[29];
ccx q[3],q[28],q[29];
cx q[29],q[30];
ccx q[0],q[2],q[30];
ccx q[0],q[29],q[30];
x q[30];
cx q[6],q[31];
ccx q[2],q[3],q[31];
ccx q[3],q[6],q[31];
cx q[25],q[32];
ccx q[1],q[9],q[32];
ccx q[1],q[25],q[32];
cx q[9],q[33];
ccx q[1],q[2],q[33];
ccx q[1],q[9],q[33];
x q[33];
ccx q[3],q[33],q[32];
ccx q[3],q[32],q[33];
cx q[33],q[34];
ccx q[0],q[31],q[34];
ccx q[0],q[33],q[34];
x q[34];
cx q[2],q[35];
ccx q[1],q[5],q[35];
ccx q[1],q[2],q[35];
cx q[35],q[36];
ccx q[3],q[23],q[36];
ccx q[3],q[35],q[36];
cx q[8],q[37];
ccx q[1],q[9],q[37];
ccx q[1],q[8],q[37];
ccx q[3],q[37],q[38];
cx q[38],q[36];
ccx q[0],q[36],q[38];
x q[38];
ccx q[1],q[9],q[39];
cx q[1],q[39];
cx q[3],q[40];
cx q[39],q[40];
ccx q[3],q[17],q[40];
ccx q[3],q[39],q[40];
cx q[40],q[31];
ccx q[0],q[31],q[40];
x q[40];
ccx q[1],q[8],q[41];
cx q[8],q[41];
cx q[3],q[42];
cx q[41],q[42];
ccx q[3],q[8],q[42];
ccx q[3],q[41],q[42];
cx q[42],q[43];
ccx q[0],q[2],q[43];
ccx q[0],q[42],q[43];
x q[43];
cx q[3],q[44];
ccx q[3],q[5],q[44];
cx q[5],q[44];
cx q[3],q[45];
cx q[37],q[45];
cx q[45],q[46];
ccx q[0],q[44],q[46];
ccx q[0],q[45],q[46];
x q[46];
cx q[17],q[47];
ccx q[1],q[2],q[47];
ccx q[1],q[17],q[47];
cx q[47],q[48];
ccx q[3],q[6],q[48];
ccx q[3],q[47],q[48];
cx q[2],q[49];
ccx q[1],q[8],q[49];
ccx q[1],q[2],q[49];
ccx q[1],q[4],q[50];
cx q[4],q[50];
cx q[3],q[51];
cx q[50],q[51];
ccx q[3],q[49],q[51];
ccx q[3],q[50],q[51];
cx q[51],q[48];
ccx q[0],q[48],q[51];
x q[51];
ccx q[1],q[8],q[52];
cx q[52],q[53];
ccx q[3],q[8],q[53];
ccx q[3],q[52],q[53];
cx q[53],q[54];
ccx q[0],q[2],q[54];
ccx q[0],q[53],q[54];
x q[54];
cx q[5],q[55];
ccx q[3],q[6],q[55];
ccx q[3],q[5],q[55];
cx q[5],q[56];
ccx q[1],q[9],q[56];
ccx q[1],q[5],q[56];
ccx q[3],q[56],q[57];
cx q[56],q[57];
cx q[57],q[55];
ccx q[0],q[55],q[57];
x q[57];
cx q[5],q[58];
ccx q[1],q[17],q[58];
ccx q[1],q[5],q[58];
cx q[58],q[59];
ccx q[3],q[47],q[59];
ccx q[3],q[58],q[59];
x q[58];
ccx q[3],q[8],q[60];
cx q[60],q[61];
ccx q[0],q[59],q[61];
ccx q[0],q[60],q[61];
cx q[60],q[7];
x q[61];
cx q[9],q[62];
ccx q[1],q[25],q[62];
ccx q[1],q[9],q[62];
x q[25];
cx q[3],q[63];
cx q[62],q[63];
ccx q[3],q[37],q[63];
ccx q[3],q[62],q[63];
cx q[0],q[64];
ccx q[0],q[63],q[64];
cx q[63],q[64];
x q[64];
ccx q[3],q[49],q[65];
cx q[65],q[66];
ccx q[0],q[2],q[66];
ccx q[0],q[65],q[66];
x q[66];
cx q[17],q[67];
ccx q[1],q[5],q[67];
ccx q[1],q[17],q[67];
cx q[67],q[68];
ccx q[3],q[5],q[68];
ccx q[3],q[67],q[68];
ccx q[3],q[25],q[23];
ccx q[3],q[23],q[25];
cx q[25],q[69];
ccx q[0],q[68],q[69];
ccx q[0],q[25],q[69];
x q[69];
cx q[2],q[70];
ccx q[3],q[13],q[70];
ccx q[2],q[3],q[70];
cx q[17],q[71];
ccx q[1],q[8],q[71];
ccx q[1],q[17],q[71];
cx q[1],q[72];
ccx q[1],q[17],q[72];
cx q[17],q[72];
cx q[3],q[73];
cx q[72],q[73];
ccx q[3],q[71],q[73];
ccx q[3],q[72],q[73];
cx q[73],q[70];
ccx q[0],q[70],q[73];
x q[73];
ccx q[1],q[17],q[74];
cx q[1],q[74];
cx q[3],q[75];
cx q[74],q[75];
ccx q[3],q[8],q[75];
ccx q[3],q[74],q[75];
cx q[75],q[76];
ccx q[0],q[2],q[76];
ccx q[0],q[75],q[76];
x q[76];
cx q[2],q[77];
ccx q[3],q[35],q[77];
ccx q[2],q[3],q[77];
cx q[3],q[78];
cx q[39],q[78];
ccx q[3],q[8],q[78];
ccx q[3],q[39],q[78];
cx q[78],q[77];
ccx q[0],q[77],q[78];
x q[78];
cx q[9],q[79];
ccx q[1],q[5],q[79];
ccx q[1],q[9],q[79];
ccx q[3],q[10],q[79];
ccx q[3],q[79],q[10];
cx q[0],q[80];
ccx q[0],q[10],q[80];
cx q[10],q[80];
x q[80];
cx q[3],q[81];
cx q[9],q[81];
ccx q[3],q[37],q[81];
ccx q[3],q[9],q[81];
cx q[81],q[44];
ccx q[0],q[44],q[81];
x q[81];
ccx q[3],q[67],q[82];
cx q[3],q[82];
cx q[9],q[83];
ccx q[1],q[17],q[83];
ccx q[1],q[9],q[83];
x q[17];
ccx q[3],q[14],q[83];
ccx q[3],q[83],q[14];
cx q[14],q[82];
ccx q[0],q[82],q[14];
ccx q[0],q[7],q[60];
x q[14];
ccx q[3],q[58],q[62];
ccx q[3],q[62],q[58];
cx q[58],q[68];
ccx q[0],q[68],q[58];
x q[58];
x q[60];
cx q[9],q[8];
ccx q[1],q[8],q[9];
ccx q[3],q[17],q[9];
ccx q[3],q[9],q[17];
cx q[17],q[84];
ccx q[0],q[2],q[84];
ccx q[0],q[17],q[84];
x q[84];
cx q[3],q[85];
ccx q[3],q[72],q[85];
cx q[72],q[85];
cx q[0],q[86];
ccx q[0],q[85],q[86];
cx q[85],q[86];
x q[86];
