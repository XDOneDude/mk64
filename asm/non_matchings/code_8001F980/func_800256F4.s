.section .late_rodata

glabel D_800ED6D8
.double 0.8

.section .text

glabel func_800256F4
/* 0262F4 800256F4 27BDFE90 */  addiu $sp, $sp, -0x170
/* 0262F8 800256F8 3C188016 */  lui   $t8, %hi(D_8015F890) # $t8, 0x8016
/* 0262FC 800256FC 9718F890 */  lhu   $t8, %lo(D_8015F890)($t8)
/* 026300 80025700 AFB20030 */  sw    $s2, 0x30($sp)
/* 026304 80025704 AFB00028 */  sw    $s0, 0x28($sp)
/* 026308 80025708 00068600 */  sll   $s0, $a2, 0x18
/* 02630C 8002570C 00059600 */  sll   $s2, $a1, 0x18
/* 026310 80025710 00127603 */  sra   $t6, $s2, 0x18
/* 026314 80025714 00107E03 */  sra   $t7, $s0, 0x18
/* 026318 80025718 AFB1002C */  sw    $s1, 0x2c($sp)
/* 02631C 8002571C 24010001 */  li    $at, 1
/* 026320 80025720 00808825 */  move  $s1, $a0
/* 026324 80025724 01E08025 */  move  $s0, $t7
/* 026328 80025728 01C09025 */  move  $s2, $t6
/* 02632C 8002572C AFBF0034 */  sw    $ra, 0x34($sp)
/* 026330 80025730 AFA50174 */  sw    $a1, 0x174($sp)
/* 026334 80025734 AFA60178 */  sw    $a2, 0x178($sp)
/* 026338 80025738 17010004 */  bne   $t8, $at, .L8002574C
/* 02633C 8002573C AFA7017C */   sw    $a3, 0x17c($sp)
/* 026340 80025740 241900FF */  li    $t9, 255
/* 026344 80025744 10000003 */  b     .L80025754
/* 026348 80025748 A7B900C2 */   sh    $t9, 0xc2($sp)
.L8002574C:
/* 02634C 8002574C 240E0070 */  li    $t6, 112
/* 026350 80025750 A7AE00C2 */  sh    $t6, 0xc2($sp)
.L80025754:
/* 026354 80025754 00107840 */  sll   $t7, $s0, 1
/* 026358 80025758 022F1021 */  addu  $v0, $s1, $t7
/* 02635C 8002575C 84580048 */  lh    $t8, 0x48($v0)
/* 026360 80025760 8639002E */  lh    $t9, 0x2e($s1)
/* 026364 80025764 AFA20044 */  sw    $v0, 0x44($sp)
/* 026368 80025768 03197823 */  subu  $t7, $t8, $t9
/* 02636C 8002576C 0C0AE006 */  jal   sins
/* 026370 80025770 31E4FFFF */   andi  $a0, $t7, 0xffff
/* 026374 80025774 44801000 */  mtc1  $zero, $f2
/* 026378 80025778 3C01800F */  lui   $at, %hi(D_800ED6D8)
/* 02637C 8002577C D430D6D8 */  ldc1  $f16, %lo(D_800ED6D8)($at)
/* 026380 80025780 46020102 */  mul.s $f4, $f0, $f2
/* 026384 80025784 8FA20044 */  lw    $v0, 0x44($sp)
/* 026388 80025788 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 02638C 8002578C 44071000 */  mfc1  $a3, $f2
/* 026390 80025790 27A400D0 */  addiu $a0, $sp, 0xd0
/* 026394 80025794 27A500CC */  addiu $a1, $sp, 0xcc
/* 026398 80025798 27A600C8 */  addiu $a2, $sp, 0xc8
/* 02639C 8002579C 4600218D */  trunc.w.s $f6, $f4
/* 0263A0 800257A0 44193000 */  mfc1  $t9, $f6
/* 0263A4 800257A4 44813000 */  mtc1  $at, $f6
/* 0263A8 800257A8 00197400 */  sll   $t6, $t9, 0x10
/* 0263AC 800257AC 000E7C03 */  sra   $t7, $t6, 0x10
/* 0263B0 800257B0 000FC023 */  negu  $t8, $t7
/* 0263B4 800257B4 44984000 */  mtc1  $t8, $f8
/* 0263B8 800257B8 00000000 */  nop   
/* 0263BC 800257BC 468042A1 */  cvt.d.w $f10, $f8
/* 0263C0 800257C0 46305482 */  mul.d $f18, $f10, $f16
/* 0263C4 800257C4 4620910D */  trunc.w.d $f4, $f18
/* 0263C8 800257C8 440E2000 */  mfc1  $t6, $f4
/* 0263CC 800257CC 00000000 */  nop   
/* 0263D0 800257D0 A7AE00D4 */  sh    $t6, 0xd4($sp)
/* 0263D4 800257D4 844F0048 */  lh    $t7, 0x48($v0)
/* 0263D8 800257D8 A7AF00D6 */  sh    $t7, 0xd6($sp)
/* 0263DC 800257DC 84580050 */  lh    $t8, 0x50($v0)
/* 0263E0 800257E0 E7A20014 */  swc1  $f2, 0x14($sp)
/* 0263E4 800257E4 E7A60010 */  swc1  $f6, 0x10($sp)
/* 0263E8 800257E8 A7B800D8 */  sh    $t8, 0xd8($sp)
/* 0263EC 800257EC 84590048 */  lh    $t9, 0x48($v0)
/* 0263F0 800257F0 00197023 */  negu  $t6, $t9
/* 0263F4 800257F4 AFAE0018 */  sw    $t6, 0x18($sp)
/* 0263F8 800257F8 844F0050 */  lh    $t7, 0x50($v0)
/* 0263FC 800257FC 0C018AC6 */  jal   func_80062B18
/* 026400 80025800 AFAF001C */   sw    $t7, 0x1c($sp)
/* 026404 80025804 C6280018 */  lwc1  $f8, 0x18($s1)
/* 026408 80025808 C62A0070 */  lwc1  $f10, 0x70($s1)
/* 02640C 8002580C C7A400CC */  lwc1  $f4, 0xcc($sp)
/* 026410 80025810 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 026414 80025814 460A4401 */  sub.s $f16, $f8, $f10
/* 026418 80025818 44804000 */  mtc1  $zero, $f8
/* 02641C 8002581C 44814800 */  mtc1  $at, $f9
/* 026420 80025820 460021A1 */  cvt.d.s $f6, $f4
/* 026424 80025824 460084A1 */  cvt.d.s $f18, $f16
/* 026428 80025828 46283281 */  sub.d $f10, $f6, $f8
/* 02642C 8002582C C7A800D0 */  lwc1  $f8, 0xd0($sp)
/* 026430 80025830 00126840 */  sll   $t5, $s2, 1
/* 026434 80025834 0010C100 */  sll   $t8, $s0, 4
/* 026438 80025838 462A9400 */  add.d $f16, $f18, $f10
/* 02643C 8002583C 030DC821 */  addu  $t9, $t8, $t5
/* 026440 80025840 3C038016 */  lui   $v1, %hi(D_801651D0) # 0x8016
/* 026444 80025844 00791821 */  addu  $v1, $v1, $t9
/* 026448 80025848 46208120 */  cvt.s.d $f4, $f16
/* 02644C 8002584C 846351D0 */  lh    $v1, %lo(D_801651D0)($v1) # 0x51d0
/* 026450 80025850 C7B000C8 */  lwc1  $f16, 0xc8($sp)
/* 026454 80025854 00107B00 */  sll   $t7, $s0, 0xc
/* 026458 80025858 E7A400E0 */  swc1  $f4, 0xe0($sp)
/* 02645C 8002585C C6260014 */  lwc1  $f6, 0x14($s1)
/* 026460 80025860 00037380 */  sll   $t6, $v1, 0xe
/* 026464 80025864 01CFC021 */  addu  $t8, $t6, $t7
/* 026468 80025868 46083480 */  add.s $f18, $f6, $f8
/* 02646C 8002586C 00127240 */  sll   $t6, $s2, 9
/* 026470 80025870 3C19802F */  lui   $t9, %hi(D_802F1F80) # $t9, 0x802f
/* 026474 80025874 27391F80 */  addiu $t9, %lo(D_802F1F80) # addiu $t9, $t9, 0x1f80
/* 026478 80025878 E7B200DC */  swc1  $f18, 0xdc($sp)
/* 02647C 8002587C C62A001C */  lwc1  $f10, 0x1c($s1)
/* 026480 80025880 030E7821 */  addu  $t7, $t8, $t6
/* 026484 80025884 01F9C021 */  addu  $t8, $t7, $t9
/* 026488 80025888 46105100 */  add.s $f4, $f10, $f16
/* 02648C 8002588C 3C018016 */  lui   $at, %hi(D_80164B04) # $at, 0x8016
/* 026490 80025890 AC384B04 */  sw    $t8, %lo(D_80164B04)($at)
/* 026494 80025894 12000004 */  beqz  $s0, .L800258A8
/* 026498 80025898 E7A400E4 */   swc1  $f4, 0xe4($sp)
/* 02649C 8002589C 24010001 */  li    $at, 1
/* 0264A0 800258A0 1601000F */  bne   $s0, $at, .L800258E0
/* 0264A4 800258A4 0003C400 */   sll   $t8, $v1, 0x10
.L800258A8:
/* 0264A8 800258A8 00037400 */  sll   $t6, $v1, 0x10
/* 0264AC 800258AC 00107BC0 */  sll   $t7, $s0, 0xf
/* 0264B0 800258B0 01CFC821 */  addu  $t9, $t6, $t7
/* 0264B4 800258B4 3C0F802C */  lui   $t7, %hi(D_802BFB80) # $t7, 0x802c
/* 0264B8 800258B8 0012C300 */  sll   $t8, $s2, 0xc
/* 0264BC 800258BC 03387021 */  addu  $t6, $t9, $t8
/* 0264C0 800258C0 25EFFB80 */  addiu $t7, %lo(D_802BFB80) # addiu $t7, $t7, -0x480
/* 0264C4 800258C4 01CF1021 */  addu  $v0, $t6, $t7
/* 0264C8 800258C8 3C018016 */  lui   $at, %hi(D_80164B08) # $at, 0x8016
/* 0264CC 800258CC AC224B08 */  sw    $v0, %lo(D_80164B08)($at)
/* 0264D0 800258D0 3C018016 */  lui   $at, %hi(D_80164B0C) # $at, 0x8016
/* 0264D4 800258D4 245907C0 */  addiu $t9, $v0, 0x7c0
/* 0264D8 800258D8 10000012 */  b     .L80025924
/* 0264DC 800258DC AC394B0C */   sw    $t9, %lo(D_80164B0C)($at)
.L800258E0:
/* 0264E0 800258E0 001073C0 */  sll   $t6, $s0, 0xf
/* 0264E4 800258E4 030E7821 */  addu  $t7, $t8, $t6
/* 0264E8 800258E8 3C0E802C */  lui   $t6, %hi(D_802BFB80) # $t6, 0x802c
/* 0264EC 800258EC 0012CB00 */  sll   $t9, $s2, 0xc
/* 0264F0 800258F0 01F9C021 */  addu  $t8, $t7, $t9
/* 0264F4 800258F4 25CEFB80 */  addiu $t6, %lo(D_802BFB80) # addiu $t6, $t6, -0x480
/* 0264F8 800258F8 3C01FFFF */  lui   $at, (0xFFFF4000 >> 16) # lui $at, 0xffff
/* 0264FC 800258FC 34214000 */  ori   $at, (0xFFFF4000 & 0xFFFF) # ori $at, $at, 0x4000
/* 026500 80025900 030E1021 */  addu  $v0, $t8, $t6
/* 026504 80025904 00417821 */  addu  $t7, $v0, $at
/* 026508 80025908 3C018016 */  lui   $at, %hi(D_80164B08) # $at, 0x8016
/* 02650C 8002590C AC2F4B08 */  sw    $t7, %lo(D_80164B08)($at)
/* 026510 80025910 3C01FFFF */  lui   $at, (0xFFFF47C0 >> 16) # lui $at, 0xffff
/* 026514 80025914 342147C0 */  ori   $at, (0xFFFF47C0 & 0xFFFF) # ori $at, $at, 0x47c0
/* 026518 80025918 0041C821 */  addu  $t9, $v0, $at
/* 02651C 8002591C 3C018016 */  lui   $at, %hi(D_80164B0C) # $at, 0x8016
/* 026520 80025920 AC394B0C */  sw    $t9, %lo(D_80164B0C)($at)
.L80025924:
/* 026524 80025924 27A4012C */  addiu $a0, $sp, 0x12c
/* 026528 80025928 27A500DC */  addiu $a1, $sp, 0xdc
/* 02652C 8002592C 27A600D4 */  addiu $a2, $sp, 0xd4
/* 026530 80025930 0C008784 */  jal   func_80021E10
/* 026534 80025934 AFAD0044 */   sw    $t5, 0x44($sp)
/* 026538 80025938 96380254 */  lhu   $t8, 0x254($s1)
/* 02653C 8002593C 3C01800E */  lui   $at, %hi(D_800DDBD4)
/* 026540 80025940 C6280224 */  lwc1  $f8, 0x224($s1)
/* 026544 80025944 00187080 */  sll   $t6, $t8, 2
/* 026548 80025948 002E0821 */  addu  $at, $at, $t6
/* 02654C 8002594C C426DBD4 */  lwc1  $f6, %lo(D_800DDBD4)($at)
/* 026550 80025950 27A4012C */  addiu $a0, $sp, 0x12c
/* 026554 80025954 46083482 */  mul.s $f18, $f6, $f8
/* 026558 80025958 44059000 */  mfc1  $a1, $f18
/* 02655C 8002595C 0C0087E1 */  jal   func_80021F84
/* 026560 80025960 00000000 */   nop   
/* 026564 80025964 3C198015 */  lui   $t9, %hi(gGfxPool) # $t9, 0x8015
/* 026568 80025968 8F39EF40 */  lw    $t9, %lo(gGfxPool)($t9)
/* 02656C 8002596C 02008825 */  move  $s1, $s0
/* 026570 80025970 0012C180 */  sll   $t8, $s2, 6
/* 026574 80025974 00117A40 */  sll   $t7, $s1, 9
/* 026578 80025978 03387021 */  addu  $t6, $t9, $t8
/* 02657C 8002597C 01CF2021 */  addu  $a0, $t6, $t7
/* 026580 80025980 3401F2C0 */  li    $at, 62144
/* 026584 80025984 00812021 */  addu  $a0, $a0, $at
/* 026588 80025988 01E08825 */  move  $s1, $t7
/* 02658C 8002598C 0C008860 */  jal   func_80022180
/* 026590 80025990 27A5012C */   addiu $a1, $sp, 0x12c
/* 026594 80025994 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 026598 80025998 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 02659C 8002599C 8C620000 */  lw    $v0, ($v1)
/* 0265A0 800259A0 3C190102 */  lui   $t9, (0x01020040 >> 16) # lui $t9, 0x102
/* 0265A4 800259A4 8FAD0044 */  lw    $t5, 0x44($sp)
/* 0265A8 800259A8 244F0008 */  addiu $t7, $v0, 8
/* 0265AC 800259AC AC6F0000 */  sw    $t7, ($v1)
/* 0265B0 800259B0 37390040 */  ori   $t9, (0x01020040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 0265B4 800259B4 3C188015 */  lui   $t8, %hi(gGfxPool) # $t8, 0x8015
/* 0265B8 800259B8 AC590000 */  sw    $t9, ($v0)
/* 0265BC 800259BC 8F18EF40 */  lw    $t8, %lo(gGfxPool)($t8)
/* 0265C0 800259C0 00127180 */  sll   $t6, $s2, 6
/* 0265C4 800259C4 3401F2C0 */  li    $at, 62144
/* 0265C8 800259C8 030E7821 */  addu  $t7, $t8, $t6
/* 0265CC 800259CC 01F1C821 */  addu  $t9, $t7, $s1
/* 0265D0 800259D0 0321C021 */  addu  $t8, $t9, $at
/* 0265D4 800259D4 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 0265D8 800259D8 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0265DC 800259DC 03017024 */  and   $t6, $t8, $at
/* 0265E0 800259E0 AC4E0004 */  sw    $t6, 4($v0)
/* 0265E4 800259E4 8C620000 */  lw    $v0, ($v1)
/* 0265E8 800259E8 3C190D01 */  lui   $t9, %hi(D_0D008CD8) # $t9, 0xd01
/* 0265EC 800259EC 3C100600 */  lui   $s0, 0x600
/* 0265F0 800259F0 244F0008 */  addiu $t7, $v0, 8
/* 0265F4 800259F4 AC6F0000 */  sw    $t7, ($v1)
/* 0265F8 800259F8 27398CD8 */  addiu $t9, %lo(D_0D008CD8) # addiu $t9, $t9, -0x7328
/* 0265FC 800259FC AC590004 */  sw    $t9, 4($v0)
/* 026600 80025A00 AC500000 */  sw    $s0, ($v0)
/* 026604 80025A04 8C620000 */  lw    $v0, ($v1)
/* 026608 80025A08 3C0EFD10 */  lui   $t6, 0xfd10
/* 02660C 80025A0C 3C0F8016 */  lui   $t7, %hi(D_80164B04) # $t7, 0x8016
/* 026610 80025A10 24580008 */  addiu $t8, $v0, 8
/* 026614 80025A14 AC780000 */  sw    $t8, ($v1)
/* 026618 80025A18 AC4E0000 */  sw    $t6, ($v0)
/* 02661C 80025A1C 8DEF4B04 */  lw    $t7, %lo(D_80164B04)($t7)
/* 026620 80025A20 3C18E800 */  lui   $t8, 0xe800
/* 026624 80025A24 3C048016 */  lui   $a0, %hi(D_80164B10) # 0x8016
/* 026628 80025A28 AC4F0004 */  sw    $t7, 4($v0)
/* 02662C 80025A2C 8C620000 */  lw    $v0, ($v1)
/* 026630 80025A30 3C0FF500 */  lui   $t7, (0xF5000100 >> 16) # lui $t7, 0xf500
/* 026634 80025A34 35EF0100 */  ori   $t7, (0xF5000100 & 0xFFFF) # ori $t7, $t7, 0x100
/* 026638 80025A38 24590008 */  addiu $t9, $v0, 8
/* 02663C 80025A3C AC790000 */  sw    $t9, ($v1)
/* 026640 80025A40 AC400004 */  sw    $zero, 4($v0)
/* 026644 80025A44 AC580000 */  sw    $t8, ($v0)
/* 026648 80025A48 8C620000 */  lw    $v0, ($v1)
/* 02664C 80025A4C 3C190700 */  lui   $t9, 0x700
/* 026650 80025A50 3C058016 */  lui   $a1, %hi(D_80164B20) # 0x8016
/* 026654 80025A54 244E0008 */  addiu $t6, $v0, 8
/* 026658 80025A58 AC6E0000 */  sw    $t6, ($v1)
/* 02665C 80025A5C AC590004 */  sw    $t9, 4($v0)
/* 026660 80025A60 AC4F0000 */  sw    $t7, ($v0)
/* 026664 80025A64 8C620000 */  lw    $v0, ($v1)
/* 026668 80025A68 3C0EE600 */  lui   $t6, 0xe600
/* 02666C 80025A6C 3C19F000 */  lui   $t9, 0xf000
/* 026670 80025A70 24580008 */  addiu $t8, $v0, 8
/* 026674 80025A74 AC780000 */  sw    $t8, ($v1)
/* 026678 80025A78 AC400004 */  sw    $zero, 4($v0)
/* 02667C 80025A7C AC4E0000 */  sw    $t6, ($v0)
/* 026680 80025A80 8C620000 */  lw    $v0, ($v1)
/* 026684 80025A84 3C18073F */  lui   $t8, (0x073FC000 >> 16) # lui $t8, 0x73f
/* 026688 80025A88 3718C000 */  ori   $t8, (0x073FC000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* 02668C 80025A8C 244F0008 */  addiu $t7, $v0, 8
/* 026690 80025A90 AC6F0000 */  sw    $t7, ($v1)
/* 026694 80025A94 AC580004 */  sw    $t8, 4($v0)
/* 026698 80025A98 AC590000 */  sw    $t9, ($v0)
/* 02669C 80025A9C 8C620000 */  lw    $v0, ($v1)
/* 0266A0 80025AA0 3C0FE700 */  lui   $t7, 0xe700
/* 0266A4 80025AA4 3C18BA00 */  lui   $t8, (0xBA000E02 >> 16) # lui $t8, 0xba00
/* 0266A8 80025AA8 244E0008 */  addiu $t6, $v0, 8
/* 0266AC 80025AAC AC6E0000 */  sw    $t6, ($v1)
/* 0266B0 80025AB0 AC400004 */  sw    $zero, 4($v0)
/* 0266B4 80025AB4 AC4F0000 */  sw    $t7, ($v0)
/* 0266B8 80025AB8 8C620000 */  lw    $v0, ($v1)
/* 0266BC 80025ABC 340E8000 */  li    $t6, 32768
/* 0266C0 80025AC0 37180E02 */  ori   $t8, (0xBA000E02 & 0xFFFF) # ori $t8, $t8, 0xe02
/* 0266C4 80025AC4 24590008 */  addiu $t9, $v0, 8
/* 0266C8 80025AC8 AC790000 */  sw    $t9, ($v1)
/* 0266CC 80025ACC AC4E0004 */  sw    $t6, 4($v0)
/* 0266D0 80025AD0 AC580000 */  sw    $t8, ($v0)
/* 0266D4 80025AD4 3C198016 */  lui   $t9, %hi(D_80164B60) # 0x8016
/* 0266D8 80025AD8 3C0F8016 */  lui   $t7, %hi(D_80164B50) # 0x8016
/* 0266DC 80025ADC 01ED7821 */  addu  $t7, $t7, $t5
/* 0266E0 80025AE0 032DC821 */  addu  $t9, $t9, $t5
/* 0266E4 80025AE4 97394B60 */  lhu   $t9, %lo(D_80164B60)($t9) # 0x4b60
/* 0266E8 80025AE8 95EF4B50 */  lhu   $t7, %lo(D_80164B50)($t7) # 0x4b50
/* 0266EC 80025AEC 87B800C2 */  lh    $t8, 0xc2($sp)
/* 0266F0 80025AF0 3C068016 */  lui   $a2, %hi(D_80164B30) # 0x8016
/* 0266F4 80025AF4 3C078016 */  lui   $a3, %hi(D_80164B40) # 0x8016
/* 0266F8 80025AF8 00ED3821 */  addu  $a3, $a3, $t5
/* 0266FC 80025AFC 00CD3021 */  addu  $a2, $a2, $t5
/* 026700 80025B00 00AD2821 */  addu  $a1, $a1, $t5
/* 026704 80025B04 008D2021 */  addu  $a0, $a0, $t5
/* 026708 80025B08 94844B10 */  lhu   $a0, %lo(D_80164B10)($a0) # 0x4b10
/* 02670C 80025B0C 94A54B20 */  lhu   $a1, %lo(D_80164B20)($a1) # 0x4b20
/* 026710 80025B10 94C64B30 */  lhu   $a2, %lo(D_80164B30)($a2) # 0x4b30
/* 026714 80025B14 94E74B40 */  lhu   $a3, %lo(D_80164B40)($a3) # 0x4b40
/* 026718 80025B18 AFB90014 */  sw    $t9, 0x14($sp)
/* 02671C 80025B1C AFAF0010 */  sw    $t7, 0x10($sp)
/* 026720 80025B20 0C012D85 */  jal   func_8004B614
/* 026724 80025B24 AFB80018 */   sw    $t8, 0x18($sp)
/* 026728 80025B28 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 02672C 80025B2C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 026730 80025B30 8C620000 */  lw    $v0, ($v1)
/* 026734 80025B34 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 026738 80025B38 3C190050 */  lui   $t9, (0x00505978 >> 16) # lui $t9, 0x50
/* 02673C 80025B3C 244E0008 */  addiu $t6, $v0, 8
/* 026740 80025B40 AC6E0000 */  sw    $t6, ($v1)
/* 026744 80025B44 37395978 */  ori   $t9, (0x00505978 & 0xFFFF) # ori $t9, $t9, 0x5978
/* 026748 80025B48 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 02674C 80025B4C AC4F0000 */  sw    $t7, ($v0)
/* 026750 80025B50 AC590004 */  sw    $t9, 4($v0)
/* 026754 80025B54 8C620000 */  lw    $v0, ($v1)
/* 026758 80025B58 3C11FD50 */  lui   $s1, 0xfd50
/* 02675C 80025B5C 3C0E8016 */  lui   $t6, %hi(D_80164B08) # $t6, 0x8016
/* 026760 80025B60 24580008 */  addiu $t8, $v0, 8
/* 026764 80025B64 AC780000 */  sw    $t8, ($v1)
/* 026768 80025B68 AC510000 */  sw    $s1, ($v0)
/* 02676C 80025B6C 8DCE4B08 */  lw    $t6, %lo(D_80164B08)($t6)
/* 026770 80025B70 3C180708 */  lui   $t8, (0x07080200 >> 16) # lui $t8, 0x708
/* 026774 80025B74 37180200 */  ori   $t8, (0x07080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 026778 80025B78 AC4E0004 */  sw    $t6, 4($v0)
/* 02677C 80025B7C 8C620000 */  lw    $v0, ($v1)
/* 026780 80025B80 3C19F550 */  lui   $t9, 0xf550
/* 026784 80025B84 3C1F0D01 */  lui   $ra, %hi(D_0D008C78) # $ra, 0xd01
/* 026788 80025B88 244F0008 */  addiu $t7, $v0, 8
/* 02678C 80025B8C AC6F0000 */  sw    $t7, ($v1)
/* 026790 80025B90 AC580004 */  sw    $t8, 4($v0)
/* 026794 80025B94 AC590000 */  sw    $t9, ($v0)
/* 026798 80025B98 8C620000 */  lw    $v0, ($v1)
/* 02679C 80025B9C 3C0FE600 */  lui   $t7, 0xe600
/* 0267A0 80025BA0 3C18F300 */  lui   $t8, 0xf300
/* 0267A4 80025BA4 244E0008 */  addiu $t6, $v0, 8
/* 0267A8 80025BA8 AC6E0000 */  sw    $t6, ($v1)
/* 0267AC 80025BAC AC400004 */  sw    $zero, 4($v0)
/* 0267B0 80025BB0 AC4F0000 */  sw    $t7, ($v0)
/* 0267B4 80025BB4 8C620000 */  lw    $v0, ($v1)
/* 0267B8 80025BB8 3C0E073F */  lui   $t6, (0x073FF100 >> 16) # lui $t6, 0x73f
/* 0267BC 80025BBC 35CEF100 */  ori   $t6, (0x073FF100 & 0xFFFF) # ori $t6, $t6, 0xf100
/* 0267C0 80025BC0 24590008 */  addiu $t9, $v0, 8
/* 0267C4 80025BC4 AC790000 */  sw    $t9, ($v1)
/* 0267C8 80025BC8 AC4E0004 */  sw    $t6, 4($v0)
/* 0267CC 80025BCC AC580000 */  sw    $t8, ($v0)
/* 0267D0 80025BD0 8C620000 */  lw    $v0, ($v1)
/* 0267D4 80025BD4 3C19E700 */  lui   $t9, 0xe700
/* 0267D8 80025BD8 3C0EF548 */  lui   $t6, (0xF5481000 >> 16) # lui $t6, 0xf548
/* 0267DC 80025BDC 244F0008 */  addiu $t7, $v0, 8
/* 0267E0 80025BE0 AC6F0000 */  sw    $t7, ($v1)
/* 0267E4 80025BE4 AC400004 */  sw    $zero, 4($v0)
/* 0267E8 80025BE8 AC590000 */  sw    $t9, ($v0)
/* 0267EC 80025BEC 8C620000 */  lw    $v0, ($v1)
/* 0267F0 80025BF0 3C0F0008 */  lui   $t7, (0x00080200 >> 16) # lui $t7, 8
/* 0267F4 80025BF4 35EF0200 */  ori   $t7, (0x00080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 0267F8 80025BF8 24580008 */  addiu $t8, $v0, 8
/* 0267FC 80025BFC AC780000 */  sw    $t8, ($v1)
/* 026800 80025C00 35CE1000 */  ori   $t6, (0xF5481000 & 0xFFFF) # ori $t6, $t6, 0x1000
/* 026804 80025C04 AC4E0000 */  sw    $t6, ($v0)
/* 026808 80025C08 AC4F0004 */  sw    $t7, 4($v0)
/* 02680C 80025C0C 8C620000 */  lw    $v0, ($v1)
/* 026810 80025C10 3C0E000F */  lui   $t6, (0x000FC07C >> 16) # lui $t6, 0xf
/* 026814 80025C14 35CEC07C */  ori   $t6, (0x000FC07C & 0xFFFF) # ori $t6, $t6, 0xc07c
/* 026818 80025C18 24590008 */  addiu $t9, $v0, 8
/* 02681C 80025C1C AC790000 */  sw    $t9, ($v1)
/* 026820 80025C20 3C18F200 */  lui   $t8, 0xf200
/* 026824 80025C24 AC580000 */  sw    $t8, ($v0)
/* 026828 80025C28 AC4E0004 */  sw    $t6, 4($v0)
/* 02682C 80025C2C 8C620000 */  lw    $v0, ($v1)
/* 026830 80025C30 3C190400 */  lui   $t9, (0x0400103F >> 16) # lui $t9, 0x400
/* 026834 80025C34 3739103F */  ori   $t9, (0x0400103F & 0xFFFF) # ori $t9, $t9, 0x103f
/* 026838 80025C38 244F0008 */  addiu $t7, $v0, 8
/* 02683C 80025C3C AC6F0000 */  sw    $t7, ($v1)
/* 026840 80025C40 3C0E800E */  lui   $t6, %hi(D_800DDBB4) # $t6, 0x800e
/* 026844 80025C44 25CEDBB4 */  addiu $t6, %lo(D_800DDBB4) # addiu $t6, $t6, -0x244c
/* 026848 80025C48 0012C080 */  sll   $t8, $s2, 2
/* 02684C 80025C4C AC590000 */  sw    $t9, ($v0)
/* 026850 80025C50 83B9017F */  lb    $t9, 0x17f($sp)
/* 026854 80025C54 030E6821 */  addu  $t5, $t8, $t6
/* 026858 80025C58 8DAF0000 */  lw    $t7, ($t5)
/* 02685C 80025C5C 0019C100 */  sll   $t8, $t9, 4
/* 026860 80025C60 27FF8C78 */  addiu $ra, %lo(D_0D008C78) # addiu $ra, $ra, -0x7388
/* 026864 80025C64 01F87021 */  addu  $t6, $t7, $t8
/* 026868 80025C68 AC4E0004 */  sw    $t6, 4($v0)
/* 02686C 80025C6C 8C620000 */  lw    $v0, ($v1)
/* 026870 80025C70 3C188016 */  lui   $t8, %hi(D_80164B0C) # $t8, 0x8016
/* 026874 80025C74 24590008 */  addiu $t9, $v0, 8
/* 026878 80025C78 AC790000 */  sw    $t9, ($v1)
/* 02687C 80025C7C AC5F0004 */  sw    $ra, 4($v0)
/* 026880 80025C80 AC500000 */  sw    $s0, ($v0)
/* 026884 80025C84 8C620000 */  lw    $v0, ($v1)
/* 026888 80025C88 3C19F550 */  lui   $t9, 0xf550
/* 02688C 80025C8C 244F0008 */  addiu $t7, $v0, 8
/* 026890 80025C90 AC6F0000 */  sw    $t7, ($v1)
/* 026894 80025C94 AC510000 */  sw    $s1, ($v0)
/* 026898 80025C98 8F184B0C */  lw    $t8, %lo(D_80164B0C)($t8)
/* 02689C 80025C9C 3C0F0708 */  lui   $t7, (0x07080200 >> 16) # lui $t7, 0x708
/* 0268A0 80025CA0 35EF0200 */  ori   $t7, (0x07080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 0268A4 80025CA4 AC580004 */  sw    $t8, 4($v0)
/* 0268A8 80025CA8 8C620000 */  lw    $v0, ($v1)
/* 0268AC 80025CAC 244E0008 */  addiu $t6, $v0, 8
/* 0268B0 80025CB0 AC6E0000 */  sw    $t6, ($v1)
/* 0268B4 80025CB4 AC4F0004 */  sw    $t7, 4($v0)
/* 0268B8 80025CB8 AC590000 */  sw    $t9, ($v0)
/* 0268BC 80025CBC 8C620000 */  lw    $v0, ($v1)
/* 0268C0 80025CC0 3C0EE600 */  lui   $t6, 0xe600
/* 0268C4 80025CC4 3C0FF300 */  lui   $t7, 0xf300
/* 0268C8 80025CC8 24580008 */  addiu $t8, $v0, 8
/* 0268CC 80025CCC AC780000 */  sw    $t8, ($v1)
/* 0268D0 80025CD0 AC400004 */  sw    $zero, 4($v0)
/* 0268D4 80025CD4 AC4E0000 */  sw    $t6, ($v0)
/* 0268D8 80025CD8 8C620000 */  lw    $v0, ($v1)
/* 0268DC 80025CDC 3C18073F */  lui   $t8, (0x073FF100 >> 16) # lui $t8, 0x73f
/* 0268E0 80025CE0 3718F100 */  ori   $t8, (0x073FF100 & 0xFFFF) # ori $t8, $t8, 0xf100
/* 0268E4 80025CE4 24590008 */  addiu $t9, $v0, 8
/* 0268E8 80025CE8 AC790000 */  sw    $t9, ($v1)
/* 0268EC 80025CEC AC580004 */  sw    $t8, 4($v0)
/* 0268F0 80025CF0 AC4F0000 */  sw    $t7, ($v0)
/* 0268F4 80025CF4 8C620000 */  lw    $v0, ($v1)
/* 0268F8 80025CF8 3C19E700 */  lui   $t9, 0xe700
/* 0268FC 80025CFC 3C18F548 */  lui   $t8, (0xF5481000 >> 16) # lui $t8, 0xf548
/* 026900 80025D00 244E0008 */  addiu $t6, $v0, 8
/* 026904 80025D04 AC6E0000 */  sw    $t6, ($v1)
/* 026908 80025D08 AC400004 */  sw    $zero, 4($v0)
/* 02690C 80025D0C AC590000 */  sw    $t9, ($v0)
/* 026910 80025D10 8C620000 */  lw    $v0, ($v1)
/* 026914 80025D14 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 026918 80025D18 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 02691C 80025D1C 244F0008 */  addiu $t7, $v0, 8
/* 026920 80025D20 AC6F0000 */  sw    $t7, ($v1)
/* 026924 80025D24 37181000 */  ori   $t8, (0xF5481000 & 0xFFFF) # ori $t8, $t8, 0x1000
/* 026928 80025D28 AC580000 */  sw    $t8, ($v0)
/* 02692C 80025D2C AC4E0004 */  sw    $t6, 4($v0)
/* 026930 80025D30 8C620000 */  lw    $v0, ($v1)
/* 026934 80025D34 3C18000F */  lui   $t8, (0x000FC07C >> 16) # lui $t8, 0xf
/* 026938 80025D38 3718C07C */  ori   $t8, (0x000FC07C & 0xFFFF) # ori $t8, $t8, 0xc07c
/* 02693C 80025D3C 24590008 */  addiu $t9, $v0, 8
/* 026940 80025D40 AC790000 */  sw    $t9, ($v1)
/* 026944 80025D44 3C0FF200 */  lui   $t7, 0xf200
/* 026948 80025D48 AC4F0000 */  sw    $t7, ($v0)
/* 02694C 80025D4C AC580004 */  sw    $t8, 4($v0)
/* 026950 80025D50 8C620000 */  lw    $v0, ($v1)
/* 026954 80025D54 3C190400 */  lui   $t9, (0x0400103F >> 16) # lui $t9, 0x400
/* 026958 80025D58 3739103F */  ori   $t9, (0x0400103F & 0xFFFF) # ori $t9, $t9, 0x103f
/* 02695C 80025D5C 244E0008 */  addiu $t6, $v0, 8
/* 026960 80025D60 AC6E0000 */  sw    $t6, ($v1)
/* 026964 80025D64 AC590000 */  sw    $t9, ($v0)
/* 026968 80025D68 83B8017F */  lb    $t8, 0x17f($sp)
/* 02696C 80025D6C 8DAF0000 */  lw    $t7, ($t5)
/* 026970 80025D70 270E0004 */  addiu $t6, $t8, 4
/* 026974 80025D74 000EC900 */  sll   $t9, $t6, 4
/* 026978 80025D78 01F9C021 */  addu  $t8, $t7, $t9
/* 02697C 80025D7C AC580004 */  sw    $t8, 4($v0)
/* 026980 80025D80 8C620000 */  lw    $v0, ($v1)
/* 026984 80025D84 3C180001 */  lui   $t8, (0x00010001 >> 16) # lui $t8, 1
/* 026988 80025D88 37180001 */  ori   $t8, (0x00010001 & 0xFFFF) # ori $t8, $t8, 1
/* 02698C 80025D8C 244E0008 */  addiu $t6, $v0, 8
/* 026990 80025D90 AC6E0000 */  sw    $t6, ($v1)
/* 026994 80025D94 AC5F0004 */  sw    $ra, 4($v0)
/* 026998 80025D98 AC500000 */  sw    $s0, ($v0)
/* 02699C 80025D9C 8C620000 */  lw    $v0, ($v1)
/* 0269A0 80025DA0 3C19BB00 */  lui   $t9, 0xbb00
/* 0269A4 80025DA4 244F0008 */  addiu $t7, $v0, 8
/* 0269A8 80025DA8 AC6F0000 */  sw    $t7, ($v1)
/* 0269AC 80025DAC AC580004 */  sw    $t8, 4($v0)
/* 0269B0 80025DB0 AC590000 */  sw    $t9, ($v0)
/* 0269B4 80025DB4 8C620000 */  lw    $v0, ($v1)
/* 0269B8 80025DB8 3C0FB900 */  lui   $t7, (0xB9000002 >> 16) # lui $t7, 0xb900
/* 0269BC 80025DBC 35EF0002 */  ori   $t7, (0xB9000002 & 0xFFFF) # ori $t7, $t7, 2
/* 0269C0 80025DC0 244E0008 */  addiu $t6, $v0, 8
/* 0269C4 80025DC4 AC6E0000 */  sw    $t6, ($v1)
/* 0269C8 80025DC8 AC400004 */  sw    $zero, 4($v0)
/* 0269CC 80025DCC AC4F0000 */  sw    $t7, ($v0)
/* 0269D0 80025DD0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0269D4 80025DD4 8FB20030 */  lw    $s2, 0x30($sp)
/* 0269D8 80025DD8 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0269DC 80025DDC 8FB00028 */  lw    $s0, 0x28($sp)
/* 0269E0 80025DE0 03E00008 */  jr    $ra
/* 0269E4 80025DE4 27BD0170 */   addiu $sp, $sp, 0x170
