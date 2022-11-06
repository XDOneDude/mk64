glabel func_800BA8B0
/* 0BB4B0 800BA8B0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0BB4B4 800BA8B4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BB4B8 800BA8B8 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BB4BC 800BA8BC 00808025 */  move  $s0, $a0
/* 0BB4C0 800BA8C0 00A08825 */  move  $s1, $a1
/* 0BB4C4 800BA8C4 10800009 */  beqz  $a0, .L800BA8EC
/* 0BB4C8 800BA8C8 AFBF001C */   sw    $ra, 0x1c($sp)
/* 0BB4CC 800BA8CC 24010001 */  li    $at, 1
/* 0BB4D0 800BA8D0 1081000A */  beq   $a0, $at, .L800BA8FC
/* 0BB4D4 800BA8D4 3C0F803B */   lui   $t7, %hi(D_803B7070) # $t7, 0x803b
/* 0BB4D8 800BA8D8 24010002 */  li    $at, 2
/* 0BB4DC 800BA8DC 1081000A */  beq   $a0, $at, .L800BA908
/* 0BB4E0 800BA8E0 3C18803B */   lui   $t8, %hi(D_803B7074) # $t8, 0x803b
/* 0BB4E4 800BA8E4 1000000B */  b     .L800BA914
/* 0BB4E8 800BA8E8 8FB9003C */   lw    $t9, 0x3c($sp)
.L800BA8EC:
/* 0BB4EC 800BA8EC 3C0E803B */  lui   $t6, %hi(D_803B706C) # $t6, 0x803b
/* 0BB4F0 800BA8F0 8DCE706C */  lw    $t6, %lo(D_803B706C)($t6)
/* 0BB4F4 800BA8F4 10000006 */  b     .L800BA910
/* 0BB4F8 800BA8F8 AFAE003C */   sw    $t6, 0x3c($sp)
.L800BA8FC:
/* 0BB4FC 800BA8FC 8DEF7070 */  lw    $t7, %lo(D_803B7070)($t7)
/* 0BB500 800BA900 10000003 */  b     .L800BA910
/* 0BB504 800BA904 AFAF003C */   sw    $t7, 0x3c($sp)
.L800BA908:
/* 0BB508 800BA908 8F187074 */  lw    $t8, %lo(D_803B7074)($t8)
/* 0BB50C 800BA90C AFB8003C */  sw    $t8, 0x3c($sp)
.L800BA910:
/* 0BB510 800BA910 8FB9003C */  lw    $t9, 0x3c($sp)
.L800BA914:
/* 0BB514 800BA914 001140C0 */  sll   $t0, $s1, 3
/* 0BB518 800BA918 02002025 */  move  $a0, $s0
/* 0BB51C 800BA91C 03281021 */  addu  $v0, $t9, $t0
/* 0BB520 800BA920 8C490008 */  lw    $t1, 8($v0)
/* 0BB524 800BA924 15200002 */  bnez  $t1, .L800BA930
/* 0BB528 800BA928 00000000 */   nop   
/* 0BB52C 800BA92C 8C510004 */  lw    $s1, 4($v0)
.L800BA930:
/* 0BB530 800BA930 0C02EA16 */  jal   unk_pool1_lookup
/* 0BB534 800BA934 02202825 */   move  $a1, $s1
/* 0BB538 800BA938 14400049 */  bnez  $v0, .L800BAA60
/* 0BB53C 800BA93C 3C04803B */   lui   $a0, %hi(gUnkPool1) # $a0, 0x803b
/* 0BB540 800BA940 8FAA003C */  lw    $t2, 0x3c($sp)
/* 0BB544 800BA944 001158C0 */  sll   $t3, $s1, 3
/* 0BB548 800BA948 248401B8 */  addiu $a0, %lo(gUnkPool1) # addiu $a0, $a0, 0x1b8
/* 0BB54C 800BA94C 24010001 */  li    $at, 1
/* 0BB550 800BA950 014B1021 */  addu  $v0, $t2, $t3
/* 0BB554 800BA954 8C86000C */  lw    $a2, 0xc($a0)
/* 0BB558 800BA958 8C450008 */  lw    $a1, 8($v0)
/* 0BB55C 800BA95C 16010002 */  bne   $s0, $at, .L800BA968
/* 0BB560 800BA960 8C470004 */   lw    $a3, 4($v0)
/* 0BB564 800BA964 24E70010 */  addiu $a3, $a3, 0x10
.L800BA968:
/* 0BB568 800BA968 AFA50034 */  sw    $a1, 0x34($sp)
/* 0BB56C 800BA96C AFA60038 */  sw    $a2, 0x38($sp)
/* 0BB570 800BA970 0C02E3FF */  jal   soundAlloc
/* 0BB574 800BA974 AFA70030 */   sw    $a3, 0x30($sp)
/* 0BB578 800BA978 8FA60038 */  lw    $a2, 0x38($sp)
/* 0BB57C 800BA97C 3C0D803B */  lui   $t5, %hi(gUnkPool1) # $t5, 0x803b
/* 0BB580 800BA980 25AD01B8 */  addiu $t5, %lo(gUnkPool1) # addiu $t5, $t5, 0x1b8
/* 0BB584 800BA984 00066080 */  sll   $t4, $a2, 2
/* 0BB588 800BA988 01866023 */  subu  $t4, $t4, $a2
/* 0BB58C 800BA98C 000C6080 */  sll   $t4, $t4, 2
/* 0BB590 800BA990 018D1821 */  addu  $v1, $t4, $t5
/* 0BB594 800BA994 AC620010 */  sw    $v0, 0x10($v1)
/* 0BB598 800BA998 10400031 */  beqz  $v0, .L800BAA60
/* 0BB59C 800BA99C 8FA70030 */   lw    $a3, 0x30($sp)
/* 0BB5A0 800BA9A0 00E02025 */  move  $a0, $a3
/* 0BB5A4 800BA9A4 00402825 */  move  $a1, $v0
/* 0BB5A8 800BA9A8 8FA60034 */  lw    $a2, 0x34($sp)
/* 0BB5AC 800BA9AC 0C02EAA0 */  jal   audio_dma_copy_immediate
/* 0BB5B0 800BA9B0 AFA30020 */   sw    $v1, 0x20($sp)
/* 0BB5B4 800BA9B4 8FA30020 */  lw    $v1, 0x20($sp)
/* 0BB5B8 800BA9B8 8FAE0034 */  lw    $t6, 0x34($sp)
/* 0BB5BC 800BA9BC 3C0F803B */  lui   $t7, %hi(gSeqLoadStatus) # $t7, 0x803b
/* 0BB5C0 800BA9C0 A4700018 */  sh    $s0, 0x18($v1)
/* 0BB5C4 800BA9C4 A471001A */  sh    $s1, 0x1a($v1)
/* 0BB5C8 800BA9C8 12000009 */  beqz  $s0, .L800BA9F0
/* 0BB5CC 800BA9CC AC6E0014 */   sw    $t6, 0x14($v1)
/* 0BB5D0 800BA9D0 24010001 */  li    $at, 1
/* 0BB5D4 800BA9D4 1201000F */  beq   $s0, $at, .L800BAA14
/* 0BB5D8 800BA9D8 3C0A803B */   lui   $t2, %hi(gCtlEntries) # $t2, 0x803b
/* 0BB5DC 800BA9DC 24010002 */  li    $at, 2
/* 0BB5E0 800BA9E0 52010020 */  beql  $s0, $at, .L800BAA64
/* 0BB5E4 800BA9E4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0BB5E8 800BA9E8 1000001E */  b     .L800BAA64
/* 0BB5EC 800BA9EC 8FBF001C */   lw    $ra, 0x1c($sp)
.L800BA9F0:
/* 0BB5F0 800BA9F0 25EF0400 */  addiu $t7, %lo(gSeqLoadStatus) # addiu $t7, $t7, 0x400
/* 0BB5F4 800BA9F4 022F1021 */  addu  $v0, $s1, $t7
/* 0BB5F8 800BA9F8 90580000 */  lbu   $t8, ($v0)
/* 0BB5FC 800BA9FC 24010005 */  li    $at, 5
/* 0BB600 800BAA00 24190005 */  li    $t9, 5
/* 0BB604 800BAA04 53010017 */  beql  $t8, $at, .L800BAA64
/* 0BB608 800BAA08 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0BB60C 800BAA0C 10000014 */  b     .L800BAA60
/* 0BB610 800BAA10 A0590000 */   sb    $t9, ($v0)
.L800BAA14:
/* 0BB614 800BAA14 8C680010 */  lw    $t0, 0x10($v1)
/* 0BB618 800BAA18 8D4A7080 */  lw    $t2, %lo(gCtlEntries)($t2)
/* 0BB61C 800BAA1C 00115880 */  sll   $t3, $s1, 2
/* 0BB620 800BAA20 01715823 */  subu  $t3, $t3, $s1
/* 0BB624 800BAA24 000B5880 */  sll   $t3, $t3, 2
/* 0BB628 800BAA28 25090004 */  addiu $t1, $t0, 4
/* 0BB62C 800BAA2C 014B6021 */  addu  $t4, $t2, $t3
/* 0BB630 800BAA30 AD890004 */  sw    $t1, 4($t4)
/* 0BB634 800BAA34 0C02ED61 */  jal   func_800BB584
/* 0BB638 800BAA38 02202025 */   move  $a0, $s1
/* 0BB63C 800BAA3C 3C0D803B */  lui   $t5, %hi(gBankLoadStatus) # $t5, 0x803b
/* 0BB640 800BAA40 25AD03C0 */  addiu $t5, %lo(gBankLoadStatus) # addiu $t5, $t5, 0x3c0
/* 0BB644 800BAA44 022D1021 */  addu  $v0, $s1, $t5
/* 0BB648 800BAA48 904E0000 */  lbu   $t6, ($v0)
/* 0BB64C 800BAA4C 24010005 */  li    $at, 5
/* 0BB650 800BAA50 240F0005 */  li    $t7, 5
/* 0BB654 800BAA54 51C10003 */  beql  $t6, $at, .L800BAA64
/* 0BB658 800BAA58 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0BB65C 800BAA5C A04F0000 */  sb    $t7, ($v0)
.L800BAA60:
/* 0BB660 800BAA60 8FBF001C */  lw    $ra, 0x1c($sp)
.L800BAA64:
/* 0BB664 800BAA64 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BB668 800BAA68 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BB66C 800BAA6C 03E00008 */  jr    $ra
/* 0BB670 800BAA70 27BD0040 */   addiu $sp, $sp, 0x40
