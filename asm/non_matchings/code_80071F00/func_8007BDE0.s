.section .late_rodata

glabel D_800EEE10
.float 0.2
.word 0x00000000

glabel D_800EEE18
.double 55.0

.section .text

glabel func_8007BDE0
/* 07C9E0 8007BDE0 000470C0 */  sll   $t6, $a0, 3
/* 07C9E4 8007BDE4 01C47023 */  subu  $t6, $t6, $a0
/* 07C9E8 8007BDE8 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 07C9EC 8007BDEC 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 07C9F0 8007BDF0 000E7140 */  sll   $t6, $t6, 5
/* 07C9F4 8007BDF4 01CF1021 */  addu  $v0, $t6, $t7
/* 07C9F8 8007BDF8 3C190600 */  lui   $t9, %hi(D_06007BA8) # $t9, 0x600
/* 07C9FC 8007BDFC 24180001 */  li    $t8, 1
/* 07CA00 8007BE00 27397BA8 */  addiu $t9, %lo(D_06007BA8) # addiu $t9, $t9, 0x7ba8
/* 07CA04 8007BE04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07CA08 8007BE08 A05800D5 */  sb    $t8, 0xd5($v0)
/* 07CA0C 8007BE0C AC400054 */  sw    $zero, 0x54($v0)
/* 07CA10 8007BE10 AC590070 */  sw    $t9, 0x70($v0)
/* 07CA14 8007BE14 3C01800F */  lui   $at, %hi(D_800EEE10) # $at, 0x800f
/* 07CA18 8007BE18 C424EE10 */  lwc1  $f4, %lo(D_800EEE10)($at)
/* 07CA1C 8007BE1C AFBF001C */  sw    $ra, 0x1c($sp)
/* 07CA20 8007BE20 AFB00018 */  sw    $s0, 0x18($sp)
/* 07CA24 8007BE24 00808025 */  move  $s0, $a0
/* 07CA28 8007BE28 0C01C922 */  jal   func_80072488
/* 07CA2C 8007BE2C E4440000 */   swc1  $f4, ($v0)
/* 07CA30 8007BE30 3C02800E */  lui   $v0, %hi(D_800E634C) # $v0, 0x800e
/* 07CA34 8007BE34 2442634C */  addiu $v0, %lo(D_800E634C) # addiu $v0, $v0, 0x634c
/* 07CA38 8007BE38 84480000 */  lh    $t0, ($v0)
/* 07CA3C 8007BE3C 84490002 */  lh    $t1, 2($v0)
/* 07CA40 8007BE40 844A0004 */  lh    $t2, 4($v0)
/* 07CA44 8007BE44 44883000 */  mtc1  $t0, $f6
/* 07CA48 8007BE48 44894000 */  mtc1  $t1, $f8
/* 07CA4C 8007BE4C 3C01800F */  lui   $at, %hi(D_800EEE18)
/* 07CA50 8007BE50 468031A0 */  cvt.s.w $f6, $f6
/* 07CA54 8007BE54 D430EE18 */  ldc1  $f16, %lo(D_800EEE18)($at)
/* 07CA58 8007BE58 02002025 */  move  $a0, $s0
/* 07CA5C 8007BE5C 468042A1 */  cvt.d.w $f10, $f8
/* 07CA60 8007BE60 44053000 */  mfc1  $a1, $f6
/* 07CA64 8007BE64 448A3000 */  mtc1  $t2, $f6
/* 07CA68 8007BE68 46305480 */  add.d $f18, $f10, $f16
/* 07CA6C 8007BE6C 468031A0 */  cvt.s.w $f6, $f6
/* 07CA70 8007BE70 46209120 */  cvt.s.d $f4, $f18
/* 07CA74 8007BE74 44073000 */  mfc1  $a3, $f6
/* 07CA78 8007BE78 44062000 */  mfc1  $a2, $f4
/* 07CA7C 8007BE7C 0C022DF5 */  jal   func_8008B7D4
/* 07CA80 8007BE80 00000000 */   nop   
/* 07CA84 8007BE84 44800000 */  mtc1  $zero, $f0
/* 07CA88 8007BE88 02002025 */  move  $a0, $s0
/* 07CA8C 8007BE8C 3C0641F0 */  lui   $a2, 0x41f0
/* 07CA90 8007BE90 44050000 */  mfc1  $a1, $f0
/* 07CA94 8007BE94 44070000 */  mfc1  $a3, $f0
/* 07CA98 8007BE98 0C022E03 */  jal   func_8008B80C
/* 07CA9C 8007BE9C 00000000 */   nop   
/* 07CAA0 8007BEA0 02002025 */  move  $a0, $s0
/* 07CAA4 8007BEA4 00002825 */  move  $a1, $zero
/* 07CAA8 8007BEA8 24063800 */  li    $a2, 14336
/* 07CAAC 8007BEAC 0C022E22 */  jal   func_8008B888
/* 07CAB0 8007BEB0 00003825 */   move  $a3, $zero
/* 07CAB4 8007BEB4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 07CAB8 8007BEB8 8FB00018 */  lw    $s0, 0x18($sp)
/* 07CABC 8007BEBC 27BD0020 */  addiu $sp, $sp, 0x20
/* 07CAC0 8007BEC0 03E00008 */  jr    $ra
/* 07CAC4 8007BEC4 00000000 */   nop   
