.section .late_rodata

glabel D_802B9E4C
.float -3000.0

glabel D_802B9E50
.float 3000.0

glabel D_802B9E54
.float 3000.0

glabel D_802B9E58
.float 3000.0

glabel D_802B9E5C
.float 3000.0

glabel D_802B9E60
.float 3000.0

.section .text

glabel func_802AE1C0
/* 1177D0 802AE1C0 3C028016 */  lui   $v0, %hi(D_8015F6EA) # $v0, 0x8016
/* 1177D4 802AE1C4 8442F6EA */  lh    $v0, %lo(D_8015F6EA)($v0)
/* 1177D8 802AE1C8 3C0E8016 */  lui   $t6, %hi(D_8015F6E8) # $t6, 0x8016
/* 1177DC 802AE1CC 85CEF6E8 */  lh    $t6, %lo(D_8015F6E8)($t6)
/* 1177E0 802AE1D0 44822000 */  mtc1  $v0, $f4
/* 1177E4 802AE1D4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1177E8 802AE1D8 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1177EC 802AE1DC 3C01802C */  lui   $at, %hi(D_802B9E4C) # $at, 0x802c
/* 1177F0 802AE1E0 C4349E4C */  lwc1  $f20, %lo(D_802B9E4C)($at)
/* 1177F4 802AE1E4 01C22023 */  subu  $a0, $t6, $v0
/* 1177F8 802AE1E8 468021A0 */  cvt.s.w $f6, $f4
/* 1177FC 802AE1EC 3C038016 */  lui   $v1, %hi(D_8015F6F2) # $v1, 0x8016
/* 117800 802AE1F0 8463F6F2 */  lh    $v1, %lo(D_8015F6F2)($v1)
/* 117804 802AE1F4 3C0F8016 */  lui   $t7, %hi(D_8015F6F0) # $t7, 0x8016
/* 117808 802AE1F8 85EFF6F0 */  lh    $t7, %lo(D_8015F6F0)($t7)
/* 11780C 802AE1FC F7B80020 */  sdc1  $f24, 0x20($sp)
/* 117810 802AE200 46066201 */  sub.s $f8, $f12, $f6
/* 117814 802AE204 44833000 */  mtc1  $v1, $f6
/* 117818 802AE208 01E32823 */  subu  $a1, $t7, $v1
/* 11781C 802AE20C 4486C000 */  mtc1  $a2, $f24
/* 117820 802AE210 3C0E8015 */  lui   $t6, %hi(D_8014F110) # $t6, 0x8015
/* 117824 802AE214 25CEF110 */  addiu $t6, %lo(D_8014F110) # addiu $t6, $t6, -0xef0
/* 117828 802AE218 F7BA0028 */  sdc1  $f26, 0x28($sp)
/* 11782C 802AE21C F7B60018 */  sdc1  $f22, 0x18($sp)
/* 117830 802AE220 46006586 */  mov.s $f22, $f12
/* 117834 802AE224 46007686 */  mov.s $f26, $f14
/* 117838 802AE228 AFBF0054 */  sw    $ra, 0x54($sp)
/* 11783C 802AE22C AFB70050 */  sw    $s7, 0x50($sp)
/* 117840 802AE230 AFB6004C */  sw    $s6, 0x4c($sp)
/* 117844 802AE234 AFB50048 */  sw    $s5, 0x48($sp)
/* 117848 802AE238 AFB40044 */  sw    $s4, 0x44($sp)
/* 11784C 802AE23C AFB30040 */  sw    $s3, 0x40($sp)
/* 117850 802AE240 AFB2003C */  sw    $s2, 0x3c($sp)
/* 117854 802AE244 AFB10038 */  sw    $s1, 0x38($sp)
/* 117858 802AE248 AFB00034 */  sw    $s0, 0x34($sp)
/* 11785C 802AE24C 04810003 */  bgez  $a0, .L802AE25C
/* 117860 802AE250 0004C143 */   sra   $t8, $a0, 5
/* 117864 802AE254 2481001F */  addiu $at, $a0, 0x1f
/* 117868 802AE258 0001C143 */  sra   $t8, $at, 5
.L802AE25C:
/* 11786C 802AE25C 44985000 */  mtc1  $t8, $f10
/* 117870 802AE260 00000000 */  nop   
/* 117874 802AE264 46805420 */  cvt.s.w $f16, $f10
/* 117878 802AE268 468032A0 */  cvt.s.w $f10, $f6
/* 11787C 802AE26C 46104483 */  div.s $f18, $f8, $f16
/* 117880 802AE270 460AC201 */  sub.s $f8, $f24, $f10
/* 117884 802AE274 4600910D */  trunc.w.s $f4, $f18
/* 117888 802AE278 44062000 */  mfc1  $a2, $f4
/* 11788C 802AE27C 00000000 */  nop   
/* 117890 802AE280 00065C00 */  sll   $t3, $a2, 0x10
/* 117894 802AE284 000B6403 */  sra   $t4, $t3, 0x10
/* 117898 802AE288 01803025 */  move  $a2, $t4
/* 11789C 802AE28C 04A10003 */  bgez  $a1, .L802AE29C
/* 1178A0 802AE290 00056943 */   sra   $t5, $a1, 5
/* 1178A4 802AE294 24A1001F */  addiu $at, $a1, 0x1f
/* 1178A8 802AE298 00016943 */  sra   $t5, $at, 5
.L802AE29C:
/* 1178AC 802AE29C 448D8000 */  mtc1  $t5, $f16
/* 1178B0 802AE2A0 3C01802C */  lui   $at, %hi(D_802B9E50) # $at, 0x802c
/* 1178B4 802AE2A4 468084A0 */  cvt.s.w $f18, $f16
/* 1178B8 802AE2A8 46124103 */  div.s $f4, $f8, $f18
/* 1178BC 802AE2AC 4600218D */  trunc.w.s $f6, $f4
/* 1178C0 802AE2B0 44073000 */  mfc1  $a3, $f6
/* 1178C4 802AE2B4 00000000 */  nop   
/* 1178C8 802AE2B8 00077C00 */  sll   $t7, $a3, 0x10
/* 1178CC 802AE2BC 000FC403 */  sra   $t8, $t7, 0x10
/* 1178D0 802AE2C0 00184140 */  sll   $t0, $t8, 5
/* 1178D4 802AE2C4 00C8C821 */  addu  $t9, $a2, $t0
/* 1178D8 802AE2C8 00195C00 */  sll   $t3, $t9, 0x10
/* 1178DC 802AE2CC 000B6403 */  sra   $t4, $t3, 0x10
/* 1178E0 802AE2D0 000C6880 */  sll   $t5, $t4, 2
/* 1178E4 802AE2D4 01AE5021 */  addu  $t2, $t5, $t6
/* 1178E8 802AE2D8 04C10003 */  bgez  $a2, .L802AE2E8
/* 1178EC 802AE2DC 95490002 */   lhu   $t1, 2($t2)
/* 1178F0 802AE2E0 10000045 */  b     .L802AE3F8
/* 1178F4 802AE2E4 C4209E50 */   lwc1  $f0, %lo(D_802B9E50)($at)
.L802AE2E8:
/* 1178F8 802AE2E8 05010004 */  bgez  $t0, .L802AE2FC
/* 1178FC 802AE2EC 28C10020 */   slti  $at, $a2, 0x20
/* 117900 802AE2F0 3C01802C */  lui   $at, %hi(D_802B9E54) # $at, 0x802c
/* 117904 802AE2F4 10000040 */  b     .L802AE3F8
/* 117908 802AE2F8 C4209E54 */   lwc1  $f0, %lo(D_802B9E54)($at)
.L802AE2FC:
/* 11790C 802AE2FC 14200003 */  bnez  $at, .L802AE30C
/* 117910 802AE300 3C01802C */   lui   $at, %hi(D_802B9E58) # $at, 0x802c
/* 117914 802AE304 1000003C */  b     .L802AE3F8
/* 117918 802AE308 C4209E58 */   lwc1  $f0, %lo(D_802B9E58)($at)
.L802AE30C:
/* 11791C 802AE30C 29010400 */  slti  $at, $t0, 0x400
/* 117920 802AE310 14200003 */  bnez  $at, .L802AE320
/* 117924 802AE314 3C01802C */   lui   $at, %hi(D_802B9E5C) # $at, 0x802c
/* 117928 802AE318 10000037 */  b     .L802AE3F8
/* 11792C 802AE31C C4209E5C */   lwc1  $f0, %lo(D_802B9E5C)($at)
.L802AE320:
/* 117930 802AE320 15200004 */  bnez  $t1, .L802AE334
/* 117934 802AE324 0120B825 */   move  $s7, $t1
/* 117938 802AE328 3C01802C */  lui   $at, %hi(D_802B9E60) # $at, 0x802c
/* 11793C 802AE32C 10000032 */  b     .L802AE3F8
/* 117940 802AE330 C4209E60 */   lwc1  $f0, %lo(D_802B9E60)($at)
.L802AE334:
/* 117944 802AE334 95510000 */  lhu   $s1, ($t2)
/* 117948 802AE338 1AE0002E */  blez  $s7, .L802AE3F4
/* 11794C 802AE33C 00009025 */   move  $s2, $zero
/* 117950 802AE340 3C148016 */  lui   $s4, %hi(D_8015F580) # $s4, 0x8016
/* 117954 802AE344 3C138016 */  lui   $s3, %hi(D_8015F584) # $s3, 0x8016
/* 117958 802AE348 2673F584 */  addiu $s3, %lo(D_8015F584) # addiu $s3, $s3, -0xa7c
/* 11795C 802AE34C 2694F580 */  addiu $s4, %lo(D_8015F580) # addiu $s4, $s4, -0xa80
/* 117960 802AE350 24160001 */  li    $s6, 1
/* 117964 802AE354 2415002C */  li    $s5, 44
.L802AE358:
/* 117968 802AE358 8E6F0000 */  lw    $t7, ($s3)
/* 11796C 802AE35C 0011C040 */  sll   $t8, $s1, 1
/* 117970 802AE360 8E8B0000 */  lw    $t3, ($s4)
/* 117974 802AE364 01F8C821 */  addu  $t9, $t7, $t8
/* 117978 802AE368 97300000 */  lhu   $s0, ($t9)
/* 11797C 802AE36C 02150019 */  multu $s0, $s5
/* 117980 802AE370 3206FFFF */  andi  $a2, $s0, 0xffff
/* 117984 802AE374 00006012 */  mflo  $t4
/* 117988 802AE378 016C6821 */  addu  $t5, $t3, $t4
/* 11798C 802AE37C 95AE0000 */  lhu   $t6, ($t5)
/* 117990 802AE380 31CF4000 */  andi  $t7, $t6, 0x4000
/* 117994 802AE384 51E00014 */  beql  $t7, $zero, .L802AE3D8
/* 117998 802AE388 26520001 */   addiu $s2, $s2, 1
/* 11799C 802AE38C 4600B306 */  mov.s $f12, $f22
/* 1179A0 802AE390 0C0AAEC1 */  jal   func_802ABB04
/* 1179A4 802AE394 4600C386 */   mov.s $f14, $f24
/* 1179A8 802AE398 1456000E */  bne   $v0, $s6, .L802AE3D4
/* 1179AC 802AE39C 3207FFFF */   andi  $a3, $s0, 0xffff
/* 1179B0 802AE3A0 4406C000 */  mfc1  $a2, $f24
/* 1179B4 802AE3A4 4600B306 */  mov.s $f12, $f22
/* 1179B8 802AE3A8 0C0AAF8C */  jal   func_802ABE30
/* 1179BC 802AE3AC 4600D386 */   mov.s $f14, $f26
/* 1179C0 802AE3B0 461A003E */  c.le.s $f0, $f26
/* 1179C4 802AE3B4 00000000 */  nop   
/* 1179C8 802AE3B8 45020007 */  bc1fl .L802AE3D8
/* 1179CC 802AE3BC 26520001 */   addiu $s2, $s2, 1
/* 1179D0 802AE3C0 4600A03C */  c.lt.s $f20, $f0
/* 1179D4 802AE3C4 00000000 */  nop   
/* 1179D8 802AE3C8 45020003 */  bc1fl .L802AE3D8
/* 1179DC 802AE3CC 26520001 */   addiu $s2, $s2, 1
/* 1179E0 802AE3D0 46000506 */  mov.s $f20, $f0
.L802AE3D4:
/* 1179E4 802AE3D4 26520001 */  addiu $s2, $s2, 1
.L802AE3D8:
/* 1179E8 802AE3D8 3259FFFF */  andi  $t9, $s2, 0xffff
/* 1179EC 802AE3DC 26310001 */  addiu $s1, $s1, 1
/* 1179F0 802AE3E0 0337082A */  slt   $at, $t9, $s7
/* 1179F4 802AE3E4 3238FFFF */  andi  $t8, $s1, 0xffff
/* 1179F8 802AE3E8 03209025 */  move  $s2, $t9
/* 1179FC 802AE3EC 1420FFDA */  bnez  $at, .L802AE358
/* 117A00 802AE3F0 03008825 */   move  $s1, $t8
.L802AE3F4:
/* 117A04 802AE3F4 4600A006 */  mov.s $f0, $f20
.L802AE3F8:
/* 117A08 802AE3F8 8FBF0054 */  lw    $ra, 0x54($sp)
/* 117A0C 802AE3FC D7B40010 */  ldc1  $f20, 0x10($sp)
/* 117A10 802AE400 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 117A14 802AE404 D7B80020 */  ldc1  $f24, 0x20($sp)
/* 117A18 802AE408 D7BA0028 */  ldc1  $f26, 0x28($sp)
/* 117A1C 802AE40C 8FB00034 */  lw    $s0, 0x34($sp)
/* 117A20 802AE410 8FB10038 */  lw    $s1, 0x38($sp)
/* 117A24 802AE414 8FB2003C */  lw    $s2, 0x3c($sp)
/* 117A28 802AE418 8FB30040 */  lw    $s3, 0x40($sp)
/* 117A2C 802AE41C 8FB40044 */  lw    $s4, 0x44($sp)
/* 117A30 802AE420 8FB50048 */  lw    $s5, 0x48($sp)
/* 117A34 802AE424 8FB6004C */  lw    $s6, 0x4c($sp)
/* 117A38 802AE428 8FB70050 */  lw    $s7, 0x50($sp)
/* 117A3C 802AE42C 03E00008 */  jr    $ra
/* 117A40 802AE430 27BD0058 */   addiu $sp, $sp, 0x58
