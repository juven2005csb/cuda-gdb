//Original:/testcases/core/c_dsp32mult_dr_ih/c_dsp32mult_dr_ih.dsp
// Spec Reference: dsp32mult single dr ih
# mach: bfin

.include "testutils.inc"
	start

imm32 r0, 0x8b235625;
imm32 r1, 0x98ba5127;
imm32 r2, 0xa3846725;
imm32 r3, 0x00080027;
imm32 r4, 0xb0ab8d29;
imm32 r5, 0x10ace82b;
imm32 r6, 0xc00c008d;
imm32 r7, 0xd2467028;
R4.H = R0.L * R0.L, R4.L = R0.L * R0.L (IH);
R5.H = R0.L * R1.L, R5.L = R0.L * R1.H (IH);
R6.H = R1.L * R0.L, R6.L = R1.H * R0.L (IH);
R7.H = R1.L * R1.L, R7.L = R1.H * R1.H (IH);
R0.H = R0.L * R0.L, R0.L = R0.L * R0.L (IH);
R1.H = R0.L * R1.L, R1.L = R0.L * R1.H (IH);
R2.H = R1.L * R0.L, R2.L = R1.H * R0.L (IH);
R3.H = R1.L * R1.L, R3.L = R1.H * R1.H (IH);
CHECKREG r0, 0x1CFD1CFD;
CHECKREG r1, 0x0930F44E;
CHECKREG r2, 0xFEAD010A;
CHECKREG r3, 0x00890054;
CHECKREG r4, 0x1CFD1CFD;
CHECKREG r5, 0x1B4FDD40;
CHECKREG r6, 0x1B4FDD40;
CHECKREG r7, 0x19BA29A9;

imm32 r0, 0x9923a635;
imm32 r1, 0x6f995137;
imm32 r2, 0x1324b735;
imm32 r3, 0x99060037;
imm32 r4, 0x809bcd39;
imm32 r5, 0xb0a99f3b;
imm32 r6, 0xa00c093d;
imm32 r7, 0x12467093;
R4.H = R2.L * R2.H, R4.L = R2.H * R2.L (IH);
R5.H = R2.L * R3.H, R5.L = R2.H * R3.H (IH);
R6.H = R3.L * R2.L, R6.L = R3.L * R2.H (IH);
R7.H = R3.L * R3.H, R7.L = R3.L * R3.H (IH);
R2.H = R2.L * R2.H, R2.L = R2.H * R2.L (IH);
R3.H = R2.L * R3.H, R3.L = R2.H * R3.H (IH);
R0.H = R3.L * R2.H, R0.L = R3.L * R2.L (IH);
R1.H = R3.L * R3.H, R1.L = R3.L * R3.H (IH);
CHECKREG r0, 0xFFF4FFF4;
CHECKREG r1, 0x00050005;
CHECKREG r2, 0xFA8FFA8F;
CHECKREG r3, 0x02300230;
CHECKREG r4, 0xFA8FFA8F;
CHECKREG r5, 0x1D48F84D;
CHECKREG r6, 0xFFF00004;
CHECKREG r7, 0xFFEAFFEA;

imm32 r0, 0x19235655;
imm32 r1, 0xc9ba5157;
imm32 r2, 0x63246755;
imm32 r3, 0x0a060055;
imm32 r4, 0x90abc509;
imm32 r5, 0x10acef5b;
imm32 r6, 0xb00a005d;
imm32 r7, 0x1246a05f;
R0.H = R4.H * R4.L, R0.L = R4.L * R4.L (IH);
R1.H = R4.H * R5.L, R1.L = R4.L * R5.H (IH);
R2.H = R5.H * R4.L, R2.L = R5.H * R4.L (IH);
R3.H = R5.L * R5.L, R3.L = R5.H * R5.H (IH);
R4.H = R4.H * R4.L, R4.L = R4.L * R4.L (IH);
R5.H = R4.H * R5.L, R5.L = R4.L * R5.L (IH);
R6.H = R5.L * R4.L, R6.L = R5.H * R4.L (IH);
R7.H = R5.H * R5.L, R7.L = R5.H * R5.H (IH);
CHECKREG r0, 0x19A50D95;
CHECKREG r1, 0x073DFC29;
CHECKREG r2, 0xFC29FC29;
CHECKREG r3, 0x01150116;
CHECKREG r4, 0x19A50D95;
CHECKREG r5, 0xFE55FF1E;
CHECKREG r6, 0xFFF4FFE9;
CHECKREG r7, 0x00010003;

imm32 r0, 0xbb235666;
imm32 r1, 0xefba5166;
imm32 r2, 0x13248766;
imm32 r3, 0xe0060066;
imm32 r4, 0x9eab9d69;
imm32 r5, 0x10ecef6b;
imm32 r6, 0x800ee06d;
imm32 r7, 0x12467e6f;
// test the unsigned U=1
R0.H = R6.H * R6.H, R0.L = R6.L * R6.L (IH);
R1.H = R6.H * R7.H, R1.L = R6.L * R7.H (IH);
R2.H = R7.H * R6.H, R2.L = R7.H * R6.L (IH);
R3.H = R7.H * R7.H, R3.L = R7.H * R7.H (IH);
R6.H = R6.H * R6.H, R6.L = R6.L * R6.L (IH);
R7.H = R6.H * R7.H, R7.L = R6.L * R7.H (IH);
R4.H = R7.H * R6.H, R4.L = R7.H * R6.L (IH);
R5.H = R7.H * R7.H, R5.L = R7.H * R7.H (IH);
CHECKREG r0, 0x3FF203E5;
CHECKREG r1, 0xF6DEFDBF;
CHECKREG r2, 0xF6DEFDBF;
CHECKREG r3, 0x014E014E;
CHECKREG r4, 0x01240012;
CHECKREG r5, 0x00150015;
CHECKREG r6, 0x3FF203E5;
CHECKREG r7, 0x04910047;

// mix order
imm32 r0, 0xac23a675;
imm32 r1, 0xcfba5127;
imm32 r2, 0x13c46705;
imm32 r3, 0x00060007;
imm32 r4, 0x90accd09;
imm32 r5, 0x10acdfdb;
imm32 r6, 0x000cc00d;
imm32 r7, 0x1246fc0f;
R0.H = R0.L * R7.L, R0.L = R0.H * R7.H (IH);
R1.H = R1.L * R6.L, R1.L = R1.L * R6.H (IH);
R2.H = R2.H * R5.L, R2.L = R2.H * R5.L (IH);
R3.H = R3.L * R4.L, R3.L = R3.L * R4.L (IH);
R4.H = R4.L * R3.L, R4.L = R4.L * R3.L (IH);
R5.H = R5.H * R2.L, R5.L = R5.H * R2.L (IH);
R6.H = R6.L * R1.L, R6.L = R6.L * R1.L (IH);
R7.H = R7.H * R0.L, R7.L = R7.H * R0.H (IH);
CHECKREG r0, 0x0161FA04;
CHECKREG r1, 0xEBBA0004;
CHECKREG r2, 0xFD85FD85;
CHECKREG r3, 0xFFFFFFFF;
CHECKREG r4, 0x00000000;
CHECKREG r5, 0xFFD7FFD7;
CHECKREG r6, 0xFFFFFFFF;
CHECKREG r7, 0xFF930019;

imm32 r0, 0xab235a75;
imm32 r1, 0xcfba5127;
imm32 r2, 0xdd246905;
imm32 r3, 0x00d6d007;
imm32 r4, 0x90abcd09;
imm32 r5, 0x10aceddb;
imm32 r6, 0x000c0d0d;
imm32 r7, 0x1246700f;
R0.H = R7.H * R0.H, R0.L = R7.H * R0.L (IH);
R1.H = R6.H * R1.H, R1.L = R6.L * R1.L (IH);
R2.H = R5.H * R2.H, R2.L = R5.H * R2.L (IH);
R3.H = R4.H * R3.H, R3.L = R4.H * R3.L (IH);
R4.H = R3.H * R4.H, R4.L = R3.H * R4.L (IH);
R5.H = R2.H * R5.H, R5.L = R2.H * R5.L (IH);
R6.H = R1.H * R6.H, R6.L = R1.H * R6.L (IH);
R7.H = R0.L * R7.H, R7.L = R0.H * R7.H (IH);
CHECKREG r0, 0xF9F10675;
CHECKREG r1, 0xFFFE0423;
CHECKREG r2, 0xFDBB06D7;
CHECKREG r3, 0xFFA314DD;
CHECKREG r4, 0x00280013;
CHECKREG r5, 0xFFDA0029;
CHECKREG r6, 0x00000000;
CHECKREG r7, 0x0076FF91;

imm32 r0, 0xfb235675;
imm32 r1, 0xcfba5127;
imm32 r2, 0x13f46705;
imm32 r3, 0x000f0007;
imm32 r4, 0x90abfd09;
imm32 r5, 0x10acefdb;
imm32 r6, 0x000c00fd;
imm32 r7, 0x1246700f;
R2.H = R0.L * R6.L, R2.L = R0.L * R6.H (IH);
R3.H = R1.H * R7.H, R3.L = R1.H * R7.L (IH);
R0.H = R2.L * R0.L, R0.L = R2.H * R0.H (IH);
R1.H = R3.L * R1.L, R1.L = R3.H * R1.H (IH);
R4.H = R4.L * R2.L, R4.L = R4.H * R2.H (IH);
R5.H = R5.L * R3.H, R5.L = R5.H * R3.L (IH);
R6.H = R6.H * R4.L, R6.L = R6.L * R4.H (IH);
R7.H = R7.L * R5.L, R7.L = R7.H * R5.H (IH);
CHECKREG r0, 0x0001FFFE;
CHECKREG r1, 0xF94D00A6;
CHECKREG r2, 0x00550004;
CHECKREG r3, 0xFC8EEADF;
CHECKREG r4, 0x0000FFDB;
CHECKREG r5, 0x0038FEA0;
CHECKREG r6, 0x00000000;
CHECKREG r7, 0xFF660004;

imm32 r0, 0xab2d5675;
imm32 r1, 0xcfbad127;
imm32 r2, 0x13246d05;
imm32 r3, 0x000600d7;
imm32 r4, 0x908bcd09;
imm32 r5, 0x10a9efdb;
imm32 r6, 0x000c500d;
imm32 r7, 0x1246760f;
R4.H = R5.L * R2.L, R4.L = R5.L * R2.H (IH);
R6.H = R6.H * R3.L, R6.L = R6.L * R3.H (IH);
R0.H = R7.L * R4.L, R0.L = R7.L * R4.H (IH);
R1.H = R0.L * R5.H, R1.L = R0.L * R5.L (IH);
R2.H = R1.L * R6.L, R2.L = R1.L * R6.H (IH);
R5.H = R2.L * R7.H, R5.L = R2.H * R7.L (IH);
R3.H = R3.L * R0.L, R3.L = R3.L * R0.H (IH);
R7.H = R4.H * R1.L, R7.L = R4.L * R1.H (IH);
CHECKREG r0, 0xFF71FCD4;
CHECKREG r1, 0xFFCB0033;
CHECKREG r2, 0x00000000;
CHECKREG r3, 0xFFFD0000;
CHECKREG r4, 0xF920FECB;
CHECKREG r5, 0x00000000;
CHECKREG r6, 0x00000002;
CHECKREG r7, 0xFFFF0000;



pass