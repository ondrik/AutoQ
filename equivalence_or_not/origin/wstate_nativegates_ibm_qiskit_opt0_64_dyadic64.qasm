// Used Gate Set: ['rz', 'sx', 'x', 'cx', 'measure']
OPENQASM 2.0;
include "qelib1.inc";
qreg q[64];


rz(0) q[0];
rx(0.5*pi) q[0];
rz(3*pi/4) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(12837334100151102511*pi/18446744073709551616) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(12297829382473034411*pi/18446744073709551616) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(5972904630562261223*pi/9223372036854775808) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(11692657559383179851*pi/18446744073709551616) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(5749627449881901785*pi/9223372036854775808) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(11345240651406842871*pi/18446744073709551616) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(11218819947116899197*pi/18446744073709551616) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(11112620831012417103*pi/18446744073709551616) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(5510882837942816043*pi/9223372036854775808) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(1367860082725022873*pi/2305843009213693952) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(679596714605036427*pi/1152921504606846976) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(5405990498221376593*pi/9223372036854775808) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(pi/2) q[12];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(10756831161918585515*pi/18446744073709551616) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
rz(pi/2) q[13];
rx(0.5*pi) q[13];
rz(pi/2) q[13];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(2676763789932944691*pi/4611686018427387904) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
rz(pi/2) q[14];
rx(0.5*pi) q[14];
rz(pi/2) q[14];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(1332729137252067307*pi/2305843009213693952) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
rz(pi/2) q[15];
rx(0.5*pi) q[15];
rz(pi/2) q[15];
rz(0) q[16];
rx(0.5*pi) q[16];
rz(10620510214313268145*pi/18446744073709551616) q[16];
rx(0.5*pi) q[16];
rz(3*pi) q[16];
rz(pi/2) q[16];
rx(0.5*pi) q[16];
rz(pi/2) q[16];
rz(0) q[17];
rx(0.5*pi) q[17];
rz(2645639106516093047*pi/4611686018427387904) q[17];
rx(0.5*pi) q[17];
rz(3*pi) q[17];
rz(pi/2) q[17];
rx(0.5*pi) q[17];
rz(pi/2) q[17];
rz(0) q[18];
rx(0.5*pi) q[18];
rz(659221085645811299*pi/1152921504606846976) q[18];
rx(0.5*pi) q[18];
rz(3*pi) q[18];
rz(pi/2) q[18];
rx(0.5*pi) q[18];
rz(pi/2) q[18];
rz(0) q[19];
rx(0.5*pi) q[19];
rz(10515093264197865719*pi/18446744073709551616) q[19];
rx(0.5*pi) q[19];
rz(3*pi) q[19];
rz(pi/2) q[19];
rx(0.5*pi) q[19];
rz(pi/2) q[19];
rz(0) q[20];
rx(0.5*pi) q[20];
rz(10484923205972189393*pi/18446744073709551616) q[20];
rx(0.5*pi) q[20];
rz(3*pi) q[20];
rz(pi/2) q[20];
rx(0.5*pi) q[20];
rz(pi/2) q[20];
rz(0) q[21];
rx(0.5*pi) q[21];
rz(10456773335853040709*pi/18446744073709551616) q[21];
rx(0.5*pi) q[21];
rz(3*pi) q[21];
rz(pi/2) q[21];
rx(0.5*pi) q[21];
rz(pi/2) q[21];
rz(0) q[22];
rx(0.5*pi) q[22];
rz(5215213891193309957*pi/9223372036854775808) q[22];
rx(0.5*pi) q[22];
rz(3*pi) q[22];
rz(pi/2) q[22];
rx(0.5*pi) q[22];
rz(pi/2) q[22];
rz(0) q[23];
rx(0.5*pi) q[23];
rz(5202850825836329681*pi/9223372036854775808) q[23];
rx(0.5*pi) q[23];
rz(3*pi) q[23];
rz(pi/2) q[23];
rx(0.5*pi) q[23];
rz(pi/2) q[23];
rz(0) q[24];
rx(0.5*pi) q[24];
rz(10382435535961373973*pi/18446744073709551616) q[24];
rx(0.5*pi) q[24];
rz(3*pi) q[24];
rz(pi/2) q[24];
rx(0.5*pi) q[24];
rz(pi/2) q[24];
rz(0) q[25];
rx(0.5*pi) q[25];
rz(5180245583583619073*pi/9223372036854775808) q[25];
rx(0.5*pi) q[25];
rz(3*pi) q[25];
rz(pi/2) q[25];
rx(0.5*pi) q[25];
rz(pi/2) q[25];
rz(0) q[26];
rx(0.5*pi) q[26];
rz(1292468492930760003*pi/2305843009213693952) q[26];
rx(0.5*pi) q[26];
rz(3*pi) q[26];
rz(pi/2) q[26];
rx(0.5*pi) q[26];
rz(pi/2) q[26];
rz(0) q[27];
rx(0.5*pi) q[27];
rz(1290012516106242211*pi/2305843009213693952) q[27];
rx(0.5*pi) q[27];
rz(3*pi) q[27];
rz(pi/2) q[27];
rx(0.5*pi) q[27];
rz(pi/2) q[27];
rz(0) q[28];
rx(0.5*pi) q[28];
rz(1287681822142438879*pi/2305843009213693952) q[28];
rx(0.5*pi) q[28];
rz(3*pi) q[28];
rz(pi/2) q[28];
rx(0.5*pi) q[28];
rz(pi/2) q[28];
rz(0) q[29];
rx(0.5*pi) q[29];
rz(5141864433803004389*pi/9223372036854775808) q[29];
rx(0.5*pi) q[29];
rz(3*pi) q[29];
rz(pi/2) q[29];
rx(0.5*pi) q[29];
rz(pi/2) q[29];
rz(0) q[30];
rx(0.5*pi) q[30];
rz(5133424883781089869*pi/9223372036854775808) q[30];
rx(0.5*pi) q[30];
rz(3*pi) q[30];
rz(pi/2) q[30];
rx(0.5*pi) q[30];
rz(pi/2) q[30];
rz(0) q[31];
rx(0.5*pi) q[31];
rz(10250751955931197775*pi/18446744073709551616) q[31];
rx(0.5*pi) q[31];
rz(3*pi) q[31];
rz(pi/2) q[31];
rx(0.5*pi) q[31];
rz(pi/2) q[31];
rz(0) q[32];
rx(0.5*pi) q[32];
rz(5117688478547860953*pi/9223372036854775808) q[32];
rx(0.5*pi) q[32];
rz(3*pi) q[32];
rz(pi/2) q[32];
rx(0.5*pi) q[32];
rz(pi/2) q[32];
rz(0) q[33];
rx(0.5*pi) q[33];
rz(10220672245259887425*pi/18446744073709551616) q[33];
rx(0.5*pi) q[33];
rz(3*pi) q[33];
rz(pi/2) q[33];
rx(0.5*pi) q[33];
rz(pi/2) q[33];
rz(0) q[34];
rx(0.5*pi) q[34];
rz(10206590488002572153*pi/18446744073709551616) q[34];
rx(0.5*pi) q[34];
rz(3*pi) q[34];
rz(pi/2) q[34];
rx(0.5*pi) q[34];
rz(pi/2) q[34];
rz(0) q[35];
rx(0.5*pi) q[35];
rz(5096544452078573885*pi/9223372036854775808) q[35];
rx(0.5*pi) q[35];
rz(3*pi) q[35];
rz(pi/2) q[35];
rx(0.5*pi) q[35];
rz(pi/2) q[35];
rz(0) q[36];
rx(0.5*pi) q[36];
rz(5090064358070739285*pi/9223372036854775808) q[36];
rx(0.5*pi) q[36];
rz(3*pi) q[36];
rz(pi/2) q[36];
rx(0.5*pi) q[36];
rz(pi/2) q[36];
rz(0) q[37];
rx(0.5*pi) q[37];
rz(10167674680745590545*pi/18446744073709551616) q[37];
rx(0.5*pi) q[37];
rz(3*pi) q[37];
rz(pi/2) q[37];
rx(0.5*pi) q[37];
rz(pi/2) q[37];
rz(0) q[38];
rx(0.5*pi) q[38];
rz(10155694685429908631*pi/18446744073709551616) q[38];
rx(0.5*pi) q[38];
rz(3*pi) q[38];
rz(pi/2) q[38];
rx(0.5*pi) q[38];
rz(pi/2) q[38];
rz(0) q[39];
rx(0.5*pi) q[39];
rz(317004981237229535*pi/576460752303423488) q[39];
rx(0.5*pi) q[39];
rz(3*pi) q[39];
rz(pi/2) q[39];
rx(0.5*pi) q[39];
rz(pi/2) q[39];
rz(0) q[40];
rx(0.5*pi) q[40];
rz(5066520986082525577*pi/9223372036854775808) q[40];
rx(0.5*pi) q[40];
rz(3*pi) q[40];
rz(pi/2) q[40];
rx(0.5*pi) q[40];
rz(pi/2) q[40];
rz(0) q[41];
rx(0.5*pi) q[41];
rz(5061158884228508409*pi/9223372036854775808) q[41];
rx(0.5*pi) q[41];
rz(3*pi) q[41];
rz(pi/2) q[41];
rx(0.5*pi) q[41];
rz(pi/2) q[41];
rz(0) q[42];
rx(0.5*pi) q[42];
rz(10111964140330835883*pi/18446744073709551616) q[42];
rx(0.5*pi) q[42];
rz(3*pi) q[42];
rz(pi/2) q[42];
rx(0.5*pi) q[42];
rz(pi/2) q[42];
rz(0) q[43];
rx(0.5*pi) q[43];
rz(10101960224864877055*pi/18446744073709551616) q[43];
rx(0.5*pi) q[43];
rz(3*pi) q[43];
rz(pi/2) q[43];
rx(0.5*pi) q[43];
rz(pi/2) q[43];
rz(0) q[44];
rx(0.5*pi) q[44];
rz(10092286767403080663*pi/18446744073709551616) q[44];
rx(0.5*pi) q[44];
rz(3*pi) q[44];
rz(pi/2) q[44];
rx(0.5*pi) q[44];
rz(pi/2) q[44];
rz(0) q[45];
rx(0.5*pi) q[45];
rz(10082925965581707105*pi/18446744073709551616) q[45];
rx(0.5*pi) q[45];
rz(3*pi) q[45];
rz(pi/2) q[45];
rx(0.5*pi) q[45];
rz(pi/2) q[45];
rz(0) q[46];
rx(0.5*pi) q[46];
rz(10073861331455229031*pi/18446744073709551616) q[46];
rx(0.5*pi) q[46];
rz(3*pi) q[46];
rz(pi/2) q[46];
rx(0.5*pi) q[46];
rz(pi/2) q[46];
rz(0) q[47];
rx(0.5*pi) q[47];
rz(10065077569290425235*pi/18446744073709551616) q[47];
rx(0.5*pi) q[47];
rz(3*pi) q[47];
rz(pi/2) q[47];
rx(0.5*pi) q[47];
rz(pi/2) q[47];
rz(0) q[48];
rx(0.5*pi) q[48];
rz(5028280233483440699*pi/9223372036854775808) q[48];
rx(0.5*pi) q[48];
rz(3*pi) q[48];
rz(pi/2) q[48];
rx(0.5*pi) q[48];
rz(pi/2) q[48];
rz(0) q[49];
rx(0.5*pi) q[49];
rz(10048296799228937427*pi/18446744073709551616) q[49];
rx(0.5*pi) q[49];
rz(3*pi) q[49];
rz(pi/2) q[49];
rx(0.5*pi) q[49];
rz(pi/2) q[49];
rz(0) q[50];
rx(0.5*pi) q[50];
rz(2510068560322564111*pi/4611686018427387904) q[50];
rx(0.5*pi) q[50];
rz(3*pi) q[50];
rz(pi/2) q[50];
rx(0.5*pi) q[50];
rz(pi/2) q[50];
rz(0) q[51];
rx(0.5*pi) q[51];
rz(5016240645753355057*pi/9223372036854775808) q[51];
rx(0.5*pi) q[51];
rz(3*pi) q[51];
rz(pi/2) q[51];
rx(0.5*pi) q[51];
rz(pi/2) q[51];
rz(0) q[52];
rx(0.5*pi) q[52];
rz(5012453601006857131*pi/9223372036854775808) q[52];
rx(0.5*pi) q[52];
rz(3*pi) q[52];
rz(pi/2) q[52];
rx(0.5*pi) q[52];
rz(pi/2) q[52];
rz(0) q[53];
rx(0.5*pi) q[53];
rz(10017541916376332375*pi/18446744073709551616) q[53];
rx(0.5*pi) q[53];
rz(3*pi) q[53];
rz(pi/2) q[53];
rx(0.5*pi) q[53];
rz(pi/2) q[53];
rz(0) q[54];
rx(0.5*pi) q[54];
rz(5005188006714644247*pi/9223372036854775808) q[54];
rx(0.5*pi) q[54];
rz(3*pi) q[54];
rz(pi/2) q[54];
rx(0.5*pi) q[54];
rz(pi/2) q[54];
rz(0) q[55];
rx(0.5*pi) q[55];
rz(2500850164148382887*pi/4611686018427387904) q[55];
rx(0.5*pi) q[55];
rz(3*pi) q[55];
rz(pi/2) q[55];
rx(0.5*pi) q[55];
rz(pi/2) q[55];
rz(0) q[56];
rx(0.5*pi) q[56];
rz(4998303774024560959*pi/9223372036854775808) q[56];
rx(0.5*pi) q[56];
rz(3*pi) q[56];
rz(pi/2) q[56];
rx(0.5*pi) q[56];
rz(pi/2) q[56];
rz(0) q[57];
rx(0.5*pi) q[57];
rz(9989988887223948107*pi/18446744073709551616) q[57];
rx(0.5*pi) q[57];
rz(3*pi) q[57];
rz(pi/2) q[57];
rx(0.5*pi) q[57];
rz(pi/2) q[57];
rz(0) q[58];
rx(0.5*pi) q[58];
rz(9983537333125972665*pi/18446744073709551616) q[58];
rx(0.5*pi) q[58];
rz(3*pi) q[58];
rz(pi/2) q[58];
rx(0.5*pi) q[58];
rz(pi/2) q[58];
rz(0) q[59];
rx(0.5*pi) q[59];
rz(4988622985052692819*pi/9223372036854775808) q[59];
rx(0.5*pi) q[59];
rz(3*pi) q[59];
rz(pi/2) q[59];
rx(0.5*pi) q[59];
rz(pi/2) q[59];
rz(0) q[60];
rx(0.5*pi) q[60];
rz(2492777069170893053*pi/4611686018427387904) q[60];
rx(0.5*pi) q[60];
rz(3*pi) q[60];
rz(pi/2) q[60];
rx(0.5*pi) q[60];
rz(pi/2) q[60];
rz(0) q[61];
rx(0.5*pi) q[61];
rz(9965118097129416801*pi/18446744073709551616) q[61];
rx(0.5*pi) q[61];
rz(3*pi) q[61];
rz(pi/2) q[61];
rx(0.5*pi) q[61];
rz(pi/2) q[61];
rz(0) q[62];
rx(0.5*pi) q[62];
rz(9959269615501282497*pi/18446744073709551616) q[62];
rx(0.5*pi) q[62];
rz(3*pi) q[62];
rz(pi/2) q[62];
rx(0.5*pi) q[62];
rz(pi/2) q[62];
x q[63];
cx q[63],q[62];
rz(pi/2) q[62];
rx(0.5*pi) q[62];
rz(pi/2) q[62];
rz(0) q[62];
rx(0.5*pi) q[62];
rz(26934218531917819373*pi/18446744073709551616) q[62];
rx(0.5*pi) q[62];
rz(3*pi) q[62];
cx q[62],q[61];
rz(pi/2) q[61];
rx(0.5*pi) q[61];
rz(pi/2) q[61];
rz(0) q[61];
rx(0.5*pi) q[61];
rz(13464185025144840773*pi/9223372036854775808) q[61];
rx(0.5*pi) q[61];
rz(3*pi) q[61];
cx q[61],q[60];
rz(pi/2) q[60];
rx(0.5*pi) q[60];
rz(pi/2) q[60];
rz(0) q[60];
rx(0.5*pi) q[60];
rz(13461189935367766297*pi/9223372036854775808) q[60];
rx(0.5*pi) q[60];
rz(3*pi) q[60];
cx q[60],q[59];
rz(pi/2) q[59];
rx(0.5*pi) q[59];
rz(pi/2) q[59];
rz(0) q[59];
rx(0.5*pi) q[59];
rz(13458121088656858703*pi/9223372036854775808) q[59];
rx(0.5*pi) q[59];
rz(3*pi) q[59];
cx q[59],q[58];
rz(pi/2) q[58];
rx(0.5*pi) q[58];
rz(pi/2) q[58];
rz(0) q[58];
rx(0.5*pi) q[58];
rz(26909950814293133315*pi/18446744073709551616) q[58];
rx(0.5*pi) q[58];
rz(3*pi) q[58];
cx q[58],q[57];
rz(pi/2) q[57];
rx(0.5*pi) q[57];
rz(pi/2) q[57];
rz(0) q[57];
rx(0.5*pi) q[57];
rz(26903499260195154937*pi/18446744073709551616) q[57];
rx(0.5*pi) q[57];
rz(3*pi) q[57];
cx q[57],q[56];
rz(pi/2) q[56];
rx(0.5*pi) q[56];
rz(pi/2) q[56];
rz(0) q[56];
rx(0.5*pi) q[56];
rz(13448440299684991737*pi/9223372036854775808) q[56];
rx(0.5*pi) q[56];
rz(3*pi) q[56];
cx q[56],q[55];
rz(pi/2) q[55];
rx(0.5*pi) q[55];
rz(pi/2) q[55];
rz(0) q[55];
rx(0.5*pi) q[55];
rz(6722521872706392287*pi/4611686018427387904) q[55];
rx(0.5*pi) q[55];
rz(3*pi) q[55];
cx q[55],q[54];
rz(pi/2) q[54];
rx(0.5*pi) q[54];
rz(pi/2) q[54];
rz(0) q[54];
rx(0.5*pi) q[54];
rz(26883112133989816899*pi/18446744073709551616) q[54];
rx(0.5*pi) q[54];
rz(3*pi) q[54];
cx q[54],q[53];
rz(pi/2) q[53];
rx(0.5*pi) q[53];
rz(pi/2) q[53];
rz(0) q[53];
rx(0.5*pi) q[53];
rz(26875946231042770669*pi/18446744073709551616) q[53];
rx(0.5*pi) q[53];
rz(3*pi) q[53];
cx q[53],q[52];
rz(pi/2) q[52];
rx(0.5*pi) q[52];
rz(pi/2) q[52];
rz(0) q[52];
rx(0.5*pi) q[52];
rz(26868580945405385259*pi/18446744073709551616) q[52];
rx(0.5*pi) q[52];
rz(3*pi) q[52];
cx q[52],q[51];
rz(pi/2) q[51];
rx(0.5*pi) q[51];
rz(pi/2) q[51];
rz(0) q[51];
rx(0.5*pi) q[51];
rz(26861006855912395279*pi/18446744073709551616) q[51];
rx(0.5*pi) q[51];
rz(3*pi) q[51];
cx q[51],q[50];
rz(pi/2) q[50];
rx(0.5*pi) q[50];
rz(pi/2) q[50];
rz(0) q[50];
rx(0.5*pi) q[50];
rz(26853213906128845425*pi/18446744073709551616) q[50];
rx(0.5*pi) q[50];
rz(3*pi) q[50];
cx q[50],q[49];
rz(pi/2) q[49];
rx(0.5*pi) q[49];
rz(pi/2) q[49];
rz(0) q[49];
rx(0.5*pi) q[49];
rz(6711297837047542285*pi/4611686018427387904) q[49];
rx(0.5*pi) q[49];
rz(3*pi) q[49];
cx q[49],q[48];
rz(pi/2) q[48];
rx(0.5*pi) q[48];
rz(pi/2) q[48];
rz(0) q[48];
rx(0.5*pi) q[48];
rz(26836927680452223995*pi/18446744073709551616) q[48];
rx(0.5*pi) q[48];
rz(3*pi) q[48];
cx q[48],q[47];
rz(pi/2) q[47];
rx(0.5*pi) q[47];
rz(pi/2) q[47];
rz(0) q[47];
rx(0.5*pi) q[47];
rz(26828410578128676635*pi/18446744073709551616) q[47];
rx(0.5*pi) q[47];
rz(3*pi) q[47];
cx q[47],q[46];
rz(pi/2) q[46];
rx(0.5*pi) q[46];
rz(pi/2) q[46];
rz(0) q[46];
rx(0.5*pi) q[46];
rz(3352453351995484325*pi/2305843009213693952) q[46];
rx(0.5*pi) q[46];
rz(3*pi) q[46];
cx q[46],q[45];
rz(pi/2) q[45];
rx(0.5*pi) q[45];
rz(pi/2) q[45];
rz(0) q[45];
rx(0.5*pi) q[45];
rz(1675660136364837393*pi/1152921504606846976) q[45];
rx(0.5*pi) q[45];
rz(3*pi) q[45];
cx q[45],q[44];
rz(pi/2) q[44];
rx(0.5*pi) q[44];
rz(pi/2) q[44];
rz(0) q[44];
rx(0.5*pi) q[44];
rz(26801201380016022969*pi/18446744073709551616) q[44];
rx(0.5*pi) q[44];
rz(3*pi) q[44];
cx q[44],q[43];
rz(pi/2) q[43];
rx(0.5*pi) q[43];
rz(pi/2) q[43];
rz(0) q[43];
rx(0.5*pi) q[43];
rz(13395763961277112407*pi/9223372036854775808) q[43];
rx(0.5*pi) q[43];
rz(3*pi) q[43];
cx q[43],q[42];
rz(pi/2) q[42];
rx(0.5*pi) q[42];
rz(pi/2) q[42];
rz(0) q[42];
rx(0.5*pi) q[42];
rz(13390762003544133581*pi/9223372036854775808) q[42];
rx(0.5*pi) q[42];
rz(3*pi) q[42];
cx q[42],q[41];
rz(pi/2) q[41];
rx(0.5*pi) q[41];
rz(pi/2) q[41];
rz(0) q[41];
rx(0.5*pi) q[41];
rz(6692792594740521263*pi/4611686018427387904) q[41];
rx(0.5*pi) q[41];
rz(3*pi) q[41];
cx q[41],q[40];
rz(pi/2) q[40];
rx(0.5*pi) q[40];
rz(pi/2) q[40];
rz(0) q[40];
rx(0.5*pi) q[40];
rz(26760446175254050715*pi/18446744073709551616) q[40];
rx(0.5*pi) q[40];
rz(3*pi) q[40];
cx q[40],q[39];
rz(pi/2) q[39];
rx(0.5*pi) q[39];
rz(pi/2) q[39];
rz(0) q[39];
rx(0.5*pi) q[39];
rz(26749328747827758511*pi/18446744073709551616) q[39];
rx(0.5*pi) q[39];
rz(3*pi) q[39];
cx q[39],q[38];
rz(pi/2) q[38];
rx(0.5*pi) q[38];
rz(pi/2) q[38];
rz(0) q[38];
rx(0.5*pi) q[38];
rz(26737793461989194413*pi/18446744073709551616) q[38];
rx(0.5*pi) q[38];
rz(3*pi) q[38];
cx q[38],q[37];
rz(pi/2) q[37];
rx(0.5*pi) q[37];
rz(pi/2) q[37];
rz(0) q[37];
rx(0.5*pi) q[37];
rz(6681453366668378125*pi/4611686018427387904) q[37];
rx(0.5*pi) q[37];
rz(3*pi) q[37];
cx q[37],q[36];
rz(pi/2) q[36];
rx(0.5*pi) q[36];
rz(pi/2) q[36];
rz(0) q[36];
rx(0.5*pi) q[36];
rz(26713359431277626235*pi/18446744073709551616) q[36];
rx(0.5*pi) q[36];
rz(3*pi) q[36];
cx q[36],q[35];
rz(pi/2) q[35];
rx(0.5*pi) q[35];
rz(pi/2) q[35];
rz(0) q[35];
rx(0.5*pi) q[35];
rz(6675099810815489259*pi/4611686018427387904) q[35];
rx(0.5*pi) q[35];
rz(3*pi) q[35];
cx q[35],q[34];
rz(pi/2) q[34];
rx(0.5*pi) q[34];
rz(pi/2) q[34];
rz(0) q[34];
rx(0.5*pi) q[34];
rz(26686897659416535001*pi/18446744073709551616) q[34];
rx(0.5*pi) q[34];
rz(3*pi) q[34];
cx q[34],q[33];
rz(pi/2) q[33];
rx(0.5*pi) q[33];
rz(pi/2) q[33];
rz(0) q[33];
rx(0.5*pi) q[33];
rz(6668203975539803611*pi/4611686018427387904) q[33];
rx(0.5*pi) q[33];
rz(3*pi) q[33];
cx q[33],q[32];
rz(pi/2) q[32];
rx(0.5*pi) q[32];
rz(pi/2) q[32];
rz(0) q[32];
rx(0.5*pi) q[32];
rz(6664527797580845725*pi/4611686018427387904) q[32];
rx(0.5*pi) q[32];
rz(3*pi) q[32];
cx q[32],q[31];
rz(pi/2) q[31];
rx(0.5*pi) q[31];
rz(pi/2) q[31];
rz(0) q[31];
rx(0.5*pi) q[31];
rz(26642736191487907031*pi/18446744073709551616) q[31];
rx(0.5*pi) q[31];
rz(3*pi) q[31];
cx q[31],q[30];
rz(pi/2) q[30];
rx(0.5*pi) q[30];
rz(pi/2) q[30];
rz(0) q[30];
rx(0.5*pi) q[30];
rz(26626638379856923893*pi/18446744073709551616) q[30];
rx(0.5*pi) q[30];
rz(3*pi) q[30];
cx q[30],q[29];
rz(pi/2) q[29];
rx(0.5*pi) q[29];
rz(pi/2) q[29];
rz(0) q[29];
rx(0.5*pi) q[29];
rz(26609759279813096615*pi/18446744073709551616) q[29];
rx(0.5*pi) q[29];
rz(3*pi) q[29];
cx q[29],q[28];
rz(pi/2) q[28];
rx(0.5*pi) q[28];
rz(pi/2) q[28];
rz(0) q[28];
rx(0.5*pi) q[28];
rz(26592033570279596709*pi/18446744073709551616) q[28];
rx(0.5*pi) q[28];
rz(3*pi) q[28];
cx q[28],q[27];
rz(pi/2) q[27];
rx(0.5*pi) q[27];
rz(pi/2) q[27];
rz(0) q[27];
rx(0.5*pi) q[27];
rz(6643347004642291339*pi/4611686018427387904) q[27];
rx(0.5*pi) q[27];
rz(3*pi) q[27];
cx q[27],q[26];
rz(pi/2) q[26];
rx(0.5*pi) q[26];
rz(pi/2) q[26];
rz(0) q[26];
rx(0.5*pi) q[26];
rz(6638435050993256489*pi/4611686018427387904) q[26];
rx(0.5*pi) q[26];
rz(3*pi) q[26];
cx q[26],q[25];
rz(pi/2) q[25];
rx(0.5*pi) q[25];
rz(pi/2) q[25];
rz(0) q[25];
rx(0.5*pi) q[25];
rz(13266498490125932449*pi/9223372036854775808) q[25];
rx(0.5*pi) q[25];
rz(3*pi) q[25];
cx q[25],q[24];
rz(pi/2) q[24];
rx(0.5*pi) q[24];
rz(pi/2) q[24];
rz(0) q[24];
rx(0.5*pi) q[24];
rz(13255526305728865123*pi/9223372036854775808) q[24];
rx(0.5*pi) q[24];
rz(3*pi) q[24];
cx q[24],q[23];
rz(pi/2) q[23];
rx(0.5*pi) q[23];
rz(pi/2) q[23];
rz(0) q[23];
rx(0.5*pi) q[23];
rz(26487786495746444857*pi/18446744073709551616) q[23];
rx(0.5*pi) q[23];
rz(3*pi) q[23];
cx q[23],q[22];
rz(pi/2) q[22];
rx(0.5*pi) q[22];
rz(pi/2) q[22];
rz(0) q[22];
rx(0.5*pi) q[22];
rz(6615765091258119755*pi/4611686018427387904) q[22];
rx(0.5*pi) q[22];
rz(3*pi) q[22];
cx q[22],q[21];
rz(pi/2) q[21];
rx(0.5*pi) q[21];
rz(pi/2) q[21];
rz(0) q[21];
rx(0.5*pi) q[21];
rz(26436714811566064097*pi/18446744073709551616) q[21];
rx(0.5*pi) q[21];
rz(3*pi) q[21];
cx q[21],q[20];
rz(pi/2) q[20];
rx(0.5*pi) q[20];
rz(pi/2) q[20];
rz(0) q[20];
rx(0.5*pi) q[20];
rz(26408564941446911303*pi/18446744073709551616) q[20];
rx(0.5*pi) q[20];
rz(3*pi) q[20];
cx q[20],q[19];
rz(pi/2) q[19];
rx(0.5*pi) q[19];
rz(pi/2) q[19];
rz(0) q[19];
rx(0.5*pi) q[19];
rz(13189197441610618075*pi/9223372036854775808) q[19];
rx(0.5*pi) q[19];
rz(3*pi) q[19];
cx q[19],q[18];
rz(pi/2) q[18];
rx(0.5*pi) q[18];
rz(pi/2) q[18];
rz(0) q[18];
rx(0.5*pi) q[18];
rz(6586487694271529831*pi/4611686018427387904) q[18];
rx(0.5*pi) q[18];
rz(3*pi) q[18];
cx q[18],q[17];
rz(pi/2) q[17];
rx(0.5*pi) q[17];
rz(pi/2) q[17];
rz(0) q[17];
rx(0.5*pi) q[17];
rz(13155465860677364841*pi/9223372036854775808) q[17];
rx(0.5*pi) q[17];
rz(3*pi) q[17];
cx q[17],q[16];
rz(pi/2) q[16];
rx(0.5*pi) q[16];
rz(pi/2) q[16];
rz(0) q[16];
rx(0.5*pi) q[16];
rz(6568244483276458431*pi/4611686018427387904) q[16];
rx(0.5*pi) q[16];
rz(3*pi) q[16];
cx q[16],q[15];
rz(pi/2) q[15];
rx(0.5*pi) q[15];
rz(pi/2) q[15];
rz(0) q[15];
rx(0.5*pi) q[15];
rz(26231655049402564589*pi/18446744073709551616) q[15];
rx(0.5*pi) q[15];
rz(3*pi) q[15];
cx q[15],q[14];
rz(pi/2) q[14];
rx(0.5*pi) q[14];
rz(pi/2) q[14];
rz(0) q[14];
rx(0.5*pi) q[14];
rz(26186432987687323693*pi/18446744073709551616) q[14];
rx(0.5*pi) q[14];
rz(3*pi) q[14];
cx q[14],q[13];
rz(pi/2) q[13];
rx(0.5*pi) q[13];
rz(pi/2) q[13];
rz(0) q[13];
rx(0.5*pi) q[13];
rz(26136656985500516355*pi/18446744073709551616) q[13];
rx(0.5*pi) q[13];
rz(3*pi) q[13];
cx q[13],q[12];
rz(pi/2) q[12];
rx(0.5*pi) q[12];
rz(pi/2) q[12];
rz(0) q[12];
rx(0.5*pi) q[12];
rz(6520376787744087905*pi/4611686018427387904) q[12];
rx(0.5*pi) q[12];
rz(3*pi) q[12];
cx q[12],q[11];
rz(pi/2) q[11];
rx(0.5*pi) q[11];
rz(pi/2) q[11];
rz(0) q[11];
rx(0.5*pi) q[11];
rz(26019940713738520799*pi/18446744073709551616) q[11];
rx(0.5*pi) q[11];
rz(3*pi) q[11];
cx q[11],q[10];
rz(pi/2) q[10];
rx(0.5*pi) q[10];
rz(pi/2) q[10];
rz(0) q[10];
rx(0.5*pi) q[10];
rz(25950607485618918885*pi/18446744073709551616) q[10];
rx(0.5*pi) q[10];
rz(3*pi) q[10];
cx q[10],q[9];
cx q[62],q[63];
cx q[61],q[62];
cx q[60],q[61];
cx q[59],q[60];
cx q[58],q[59];
cx q[57],q[58];
cx q[56],q[57];
cx q[55],q[56];
cx q[54],q[55];
cx q[53],q[54];
cx q[52],q[53];
cx q[51],q[52];
cx q[50],q[51];
cx q[49],q[50];
cx q[48],q[49];
cx q[47],q[48];
cx q[46],q[47];
cx q[45],q[46];
cx q[44],q[45];
cx q[43],q[44];
cx q[42],q[43];
cx q[41],q[42];
cx q[40],q[41];
cx q[39],q[40];
cx q[38],q[39];
cx q[37],q[38];
cx q[36],q[37];
cx q[35],q[36];
cx q[34],q[35];
cx q[33],q[34];
cx q[32],q[33];
cx q[31],q[32];
cx q[30],q[31];
cx q[29],q[30];
cx q[28],q[29];
cx q[27],q[28];
cx q[26],q[27];
cx q[25],q[26];
cx q[24],q[25];
cx q[23],q[24];
cx q[22],q[23];
cx q[21],q[22];
cx q[20],q[21];
cx q[19],q[20];
cx q[18],q[19];
cx q[17],q[18];
cx q[16],q[17];
cx q[15],q[16];
cx q[14],q[15];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
rz(pi/2) q[9];
rx(0.5*pi) q[9];
rz(pi/2) q[9];
rz(0) q[9];
rx(0.5*pi) q[9];
rz(25871722471533469783*pi/18446744073709551616) q[9];
rx(0.5*pi) q[9];
rz(3*pi) q[9];
cx q[9],q[8];
rz(pi/2) q[8];
rx(0.5*pi) q[8];
rz(pi/2) q[8];
rz(0) q[8];
rx(0.5*pi) q[8];
rz(25780867316406685941*pi/18446744073709551616) q[8];
rx(0.5*pi) q[8];
rz(3*pi) q[8];
cx q[8],q[7];
rz(pi/2) q[7];
rx(0.5*pi) q[7];
rz(pi/2) q[7];
rz(0) q[7];
rx(0.5*pi) q[7];
rz(12837334100151102511*pi/9223372036854775808) q[7];
rx(0.5*pi) q[7];
rz(3*pi) q[7];
cx q[7],q[6];
rz(pi/2) q[6];
rx(0.5*pi) q[6];
rz(pi/2) q[6];
rz(0) q[6];
rx(0.5*pi) q[6];
rz(25548247496012260761*pi/18446744073709551616) q[6];
rx(0.5*pi) q[6];
rz(3*pi) q[6];
cx q[6],q[5];
rz(pi/2) q[5];
rx(0.5*pi) q[5];
rz(pi/2) q[5];
rz(0) q[5];
rx(0.5*pi) q[5];
rz(6348558311913824575*pi/4611686018427387904) q[5];
rx(0.5*pi) q[5];
rz(3*pi) q[5];
cx q[5],q[4];
rz(pi/2) q[4];
rx(0.5*pi) q[4];
rz(pi/2) q[4];
rz(0) q[4];
rx(0.5*pi) q[4];
rz(12600415294017962771*pi/9223372036854775808) q[4];
rx(0.5*pi) q[4];
rz(3*pi) q[4];
cx q[4],q[3];
rz(pi/2) q[3];
rx(0.5*pi) q[3];
rz(pi/2) q[3];
rz(0) q[3];
rx(0.5*pi) q[3];
rz(12473839443147290299*pi/9223372036854775808) q[3];
rx(0.5*pi) q[3];
rz(3*pi) q[3];
cx q[3],q[2];
rz(pi/2) q[2];
rx(0.5*pi) q[2];
rz(pi/2) q[2];
rz(0) q[2];
rx(0.5*pi) q[2];
rz(24595658764946068821*pi/18446744073709551616) q[2];
rx(0.5*pi) q[2];
rz(3*pi) q[2];
cx q[2],q[1];
rz(pi/2) q[1];
rx(0.5*pi) q[1];
rz(pi/2) q[1];
rz(0) q[1];
rx(0.5*pi) q[1];
rz(24056154047268005231*pi/18446744073709551616) q[1];
rx(0.5*pi) q[1];
rz(3*pi) q[1];
cx q[1],q[0];
rz(pi/2) q[0];
rx(0.5*pi) q[0];
rz(pi/2) q[0];
rz(0) q[0];
rx(0.5*pi) q[0];
rz(5*pi/4) q[0];
rx(0.5*pi) q[0];
rz(3*pi) q[0];
cx q[9],q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
