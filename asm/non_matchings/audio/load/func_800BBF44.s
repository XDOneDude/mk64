glabel func_800BBF44
/* 0BCB44 800BBF44 3C0E803B */  lui   $t6, %hi(D_803B707C) # $t6, 0x803b
/* 0BCB48 800BBF48 95CE707C */  lhu   $t6, %lo(D_803B707C)($t6)
/* 0BCB4C 800BBF4C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0BCB50 800BBF50 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BCB54 800BBF54 00AE082B */  sltu  $at, $a1, $t6
/* 0BCB58 800BBF58 00A08825 */  move  $s1, $a1
/* 0BCB5C 800BBF5C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0BCB60 800BBF60 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BCB64 800BBF64 AFA40040 */  sw    $a0, 0x40($sp)
/* 0BCB68 800BBF68 10200057 */  beqz  $at, .L800BC0C8
/* 0BCB6C 800BBF6C AFA60048 */   sw    $a2, 0x48($sp)
/* 0BCB70 800BBF70 3C0F803B */  lui   $t7, %hi(D_803B706C) # $t7, 0x803b
/* 0BCB74 800BBF74 8DEF706C */  lw    $t7, %lo(D_803B706C)($t7)
/* 0BCB78 800BBF78 8FA80040 */  lw    $t0, 0x40($sp)
/* 0BCB7C 800BBF7C 0005C0C0 */  sll   $t8, $a1, 3
/* 0BCB80 800BBF80 01F81021 */  addu  $v0, $t7, $t8
/* 0BCB84 800BBF84 8C590008 */  lw    $t9, 8($v0)
/* 0BCB88 800BBF88 00084880 */  sll   $t1, $t0, 2
/* 0BCB8C 800BBF8C 01284821 */  addu  $t1, $t1, $t0
/* 0BCB90 800BBF90 17200002 */  bnez  $t9, .L800BBF9C
/* 0BCB94 800BBF94 000948C0 */   sll   $t1, $t1, 3
/* 0BCB98 800BBF98 8C510004 */  lw    $s1, 4($v0)
.L800BBF9C:
/* 0BCB9C 800BBF9C 01284821 */  addu  $t1, $t1, $t0
/* 0BCBA0 800BBFA0 3C0A803B */  lui   $t2, %hi(gSequencePlayers) # $t2, 0x803b
/* 0BCBA4 800BBFA4 254A1510 */  addiu $t2, %lo(gSequencePlayers) # addiu $t2, $t2, 0x1510
/* 0BCBA8 800BBFA8 000948C0 */  sll   $t1, $t1, 3
/* 0BCBAC 800BBFAC 012A8021 */  addu  $s0, $t1, $t2
/* 0BCBB0 800BBFB0 0C02FBCB */  jal   sequence_player_disable
/* 0BCBB4 800BBFB4 02002025 */   move  $a0, $s0
/* 0BCBB8 800BBFB8 8FAB0048 */  lw    $t3, 0x48($sp)
/* 0BCBBC 800BBFBC 27A50028 */  addiu $a1, $sp, 0x28
/* 0BCBC0 800BBFC0 27A6002C */  addiu $a2, $sp, 0x2c
/* 0BCBC4 800BBFC4 11600018 */  beqz  $t3, .L800BC028
/* 0BCBC8 800BBFC8 02202025 */   move  $a0, $s1
/* 0BCBCC 800BBFCC AFA0002C */  sw    $zero, 0x2c($sp)
/* 0BCBD0 800BBFD0 AFA00028 */  sw    $zero, 0x28($sp)
/* 0BCBD4 800BBFD4 0C02EEE8 */  jal   get_missing_bank
/* 0BCBD8 800BBFD8 02202025 */   move  $a0, $s1
/* 0BCBDC 800BBFDC 8FAC002C */  lw    $t4, 0x2c($sp)
/* 0BCBE0 800BBFE0 24010001 */  li    $at, 1
/* 0BCBE4 800BBFE4 00402025 */  move  $a0, $v0
/* 0BCBE8 800BBFE8 15810009 */  bne   $t4, $at, .L800BC010
/* 0BCBEC 800BBFEC 26050005 */   addiu $a1, $s0, 5
/* 0BCBF0 800BBFF0 24050002 */  li    $a1, 2
/* 0BCBF4 800BBFF4 02003025 */  move  $a2, $s0
/* 0BCBF8 800BBFF8 0C02EE19 */  jal   func_800BB864
/* 0BCBFC 800BBFFC AFA20024 */   sw    $v0, 0x24($sp)
/* 0BCC00 800BC000 10400031 */  beqz  $v0, .L800BC0C8
/* 0BCC04 800BC004 8FA40024 */   lw    $a0, 0x24($sp)
/* 0BCC08 800BC008 1000000B */  b     .L800BC038
/* 0BCC0C 800BC00C A2040005 */   sb    $a0, 5($s0)
.L800BC010:
/* 0BCC10 800BC010 0C02EF34 */  jal   func_800BBCD0
/* 0BCC14 800BC014 02202025 */   move  $a0, $s1
/* 0BCC18 800BC018 54400008 */  bnel  $v0, $zero, .L800BC03C
/* 0BCC1C 800BC01C A2110004 */   sb    $s1, 4($s0)
/* 0BCC20 800BC020 1000002A */  b     .L800BC0CC
/* 0BCC24 800BC024 8FBF001C */   lw    $ra, 0x1c($sp)
.L800BC028:
/* 0BCC28 800BC028 0C02EF34 */  jal   func_800BBCD0
/* 0BCC2C 800BC02C 26050005 */   addiu $a1, $s0, 5
/* 0BCC30 800BC030 50400026 */  beql  $v0, $zero, .L800BC0CC
/* 0BCC34 800BC034 8FBF001C */   lw    $ra, 0x1c($sp)
.L800BC038:
/* 0BCC38 800BC038 A2110004 */  sb    $s1, 4($s0)
.L800BC03C:
/* 0BCC3C 800BC03C 00002025 */  move  $a0, $zero
/* 0BCC40 800BC040 24050002 */  li    $a1, 2
/* 0BCC44 800BC044 0C02E6A4 */  jal   get_bank_or_seq
/* 0BCC48 800BC048 02203025 */   move  $a2, $s1
/* 0BCC4C 800BC04C 14400013 */  bnez  $v0, .L800BC09C
/* 0BCC50 800BC050 00401825 */   move  $v1, $v0
/* 0BCC54 800BC054 8E0D0000 */  lw    $t5, ($s0)
/* 0BCC58 800BC058 8FB80048 */  lw    $t8, 0x48($sp)
/* 0BCC5C 800BC05C 000D78C0 */  sll   $t7, $t5, 3
/* 0BCC60 800BC060 05E2001A */  bltzl $t7, .L800BC0CC
/* 0BCC64 800BC064 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0BCC68 800BC068 13000007 */  beqz  $t8, .L800BC088
/* 0BCC6C 800BC06C 02202025 */   move  $a0, $s1
/* 0BCC70 800BC070 02202025 */  move  $a0, $s1
/* 0BCC74 800BC074 24050002 */  li    $a1, 2
/* 0BCC78 800BC078 0C02EE94 */  jal   func_800BBA50
/* 0BCC7C 800BC07C 02003025 */   move  $a2, $s0
/* 0BCC80 800BC080 10000004 */  b     .L800BC094
/* 0BCC84 800BC084 00401825 */   move  $v1, $v0
.L800BC088:
/* 0BCC88 800BC088 0C02EE67 */  jal   func_800BB99C
/* 0BCC8C 800BC08C 24050002 */   li    $a1, 2
/* 0BCC90 800BC090 00401825 */  move  $v1, $v0
.L800BC094:
/* 0BCC94 800BC094 5040000D */  beql  $v0, $zero, .L800BC0CC
/* 0BCC98 800BC098 8FBF001C */   lw    $ra, 0x1c($sp)
.L800BC09C:
/* 0BCC9C 800BC09C 8FA40040 */  lw    $a0, 0x40($sp)
/* 0BCCA0 800BC0A0 0C03046C */  jal   init_sequence_player
/* 0BCCA4 800BC0A4 AFA3003C */   sw    $v1, 0x3c($sp)
/* 0BCCA8 800BC0A8 8FA3003C */  lw    $v1, 0x3c($sp)
/* 0BCCAC 800BC0AC 92080000 */  lbu   $t0, ($s0)
/* 0BCCB0 800BC0B0 A2000088 */  sb    $zero, 0x88($s0)
/* 0BCCB4 800BC0B4 A600000E */  sh    $zero, 0xe($s0)
/* 0BCCB8 800BC0B8 35090080 */  ori   $t1, $t0, 0x80
/* 0BCCBC 800BC0BC A2090000 */  sb    $t1, ($s0)
/* 0BCCC0 800BC0C0 AE030014 */  sw    $v1, 0x14($s0)
/* 0BCCC4 800BC0C4 AE030070 */  sw    $v1, 0x70($s0)
.L800BC0C8:
/* 0BCCC8 800BC0C8 8FBF001C */  lw    $ra, 0x1c($sp)
.L800BC0CC:
/* 0BCCCC 800BC0CC 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BCCD0 800BC0D0 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BCCD4 800BC0D4 03E00008 */  jr    $ra
/* 0BCCD8 800BC0D8 27BD0040 */   addiu $sp, $sp, 0x40
