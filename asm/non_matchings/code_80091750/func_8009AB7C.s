glabel func_8009AB7C
/* 09B77C 8009AB7C 000470C0 */  sll   $t6, $a0, 3
/* 09B780 8009AB80 3C0F8019 */  lui   $t7, %hi(D_8018E11C) # 0x8019
/* 09B784 8009AB84 01EE7821 */  addu  $t7, $t7, $t6
/* 09B788 8009AB88 8DEFE11C */  lw    $t7, %lo(D_8018E11C)($t7) # -0x1ee4($t7)
/* 09B78C 8009AB8C 3C198019 */  lui   $t9, %hi(D_8018D9B0) # $t9, 0x8019
/* 09B790 8009AB90 8F39D9B0 */  lw    $t9, %lo(D_8018D9B0)($t9)
/* 09B794 8009AB94 3C0D0004 */  lui   $t5, (0x0004B000 >> 16) # lui $t5, 4
/* 09B798 8009AB98 000FC040 */  sll   $t8, $t7, 1
/* 09B79C 8009AB9C 35ADB000 */  ori   $t5, (0x0004B000 & 0xFFFF) # ori $t5, $t5, 0xb000
/* 09B7A0 8009ABA0 00001825 */  move  $v1, $zero
/* 09B7A4 8009ABA4 240C001D */  li    $t4, 29
/* 09B7A8 8009ABA8 240B0096 */  li    $t3, 150
/* 09B7AC 8009ABAC 240A004D */  li    $t2, 77
/* 09B7B0 8009ABB0 03191021 */  addu  $v0, $t8, $t9
.L8009ABB4:
/* 09B7B4 8009ABB4 94450000 */  lhu   $a1, ($v0)
/* 09B7B8 8009ABB8 24630004 */  addiu $v1, $v1, 4
/* 09B7BC 8009ABBC 24420008 */  addiu $v0, $v0, 8
/* 09B7C0 8009ABC0 30AEF800 */  andi  $t6, $a1, 0xf800
/* 09B7C4 8009ABC4 000E7AC3 */  sra   $t7, $t6, 0xb
/* 09B7C8 8009ABC8 01EA0019 */  multu $t7, $t2
/* 09B7CC 8009ABCC 30B807C0 */  andi  $t8, $a1, 0x7c0
/* 09B7D0 8009ABD0 0018C983 */  sra   $t9, $t8, 6
/* 09B7D4 8009ABD4 30AE003E */  andi  $t6, $a1, 0x3e
/* 09B7D8 8009ABD8 000E7843 */  sra   $t7, $t6, 1
/* 09B7DC 8009ABDC 30A80001 */  andi  $t0, $a1, 1
/* 09B7E0 8009ABE0 9445FFFA */  lhu   $a1, -6($v0)
/* 09B7E4 8009ABE4 00002012 */  mflo  $a0
/* 09B7E8 8009ABE8 00000000 */  nop   
/* 09B7EC 8009ABEC 00000000 */  nop   
/* 09B7F0 8009ABF0 032B0019 */  multu $t9, $t3
/* 09B7F4 8009ABF4 00003012 */  mflo  $a2
/* 09B7F8 8009ABF8 0086C021 */  addu  $t8, $a0, $a2
/* 09B7FC 8009ABFC 00000000 */  nop   
/* 09B800 8009AC00 01EC0019 */  multu $t7, $t4
/* 09B804 8009AC04 00003812 */  mflo  $a3
/* 09B808 8009AC08 03074821 */  addu  $t1, $t8, $a3
/* 09B80C 8009AC0C 0009CA02 */  srl   $t9, $t1, 8
/* 09B810 8009AC10 00197040 */  sll   $t6, $t9, 1
/* 09B814 8009AC14 00197980 */  sll   $t7, $t9, 6
/* 09B818 8009AC18 01CFC021 */  addu  $t8, $t6, $t7
/* 09B81C 8009AC1C 0019CAC0 */  sll   $t9, $t9, 0xb
/* 09B820 8009AC20 03197021 */  addu  $t6, $t8, $t9
/* 09B824 8009AC24 30B8F800 */  andi  $t8, $a1, 0xf800
/* 09B828 8009AC28 0018CAC3 */  sra   $t9, $t8, 0xb
/* 09B82C 8009AC2C 032A0019 */  multu $t9, $t2
/* 09B830 8009AC30 01C87821 */  addu  $t7, $t6, $t0
/* 09B834 8009AC34 A44FFFF8 */  sh    $t7, -8($v0)
/* 09B838 8009AC38 30AE07C0 */  andi  $t6, $a1, 0x7c0
/* 09B83C 8009AC3C 000E7983 */  sra   $t7, $t6, 6
/* 09B840 8009AC40 30B8003E */  andi  $t8, $a1, 0x3e
/* 09B844 8009AC44 0018C843 */  sra   $t9, $t8, 1
/* 09B848 8009AC48 30A80001 */  andi  $t0, $a1, 1
/* 09B84C 8009AC4C 9445FFFC */  lhu   $a1, -4($v0)
/* 09B850 8009AC50 00002012 */  mflo  $a0
/* 09B854 8009AC54 00000000 */  nop   
/* 09B858 8009AC58 00000000 */  nop   
/* 09B85C 8009AC5C 01EB0019 */  multu $t7, $t3
/* 09B860 8009AC60 00003012 */  mflo  $a2
/* 09B864 8009AC64 00867021 */  addu  $t6, $a0, $a2
/* 09B868 8009AC68 00000000 */  nop   
/* 09B86C 8009AC6C 032C0019 */  multu $t9, $t4
/* 09B870 8009AC70 00003812 */  mflo  $a3
/* 09B874 8009AC74 01C74821 */  addu  $t1, $t6, $a3
/* 09B878 8009AC78 00097A02 */  srl   $t7, $t1, 8
/* 09B87C 8009AC7C 000FC040 */  sll   $t8, $t7, 1
/* 09B880 8009AC80 000FC980 */  sll   $t9, $t7, 6
/* 09B884 8009AC84 03197021 */  addu  $t6, $t8, $t9
/* 09B888 8009AC88 000F7AC0 */  sll   $t7, $t7, 0xb
/* 09B88C 8009AC8C 01CFC021 */  addu  $t8, $t6, $t7
/* 09B890 8009AC90 30AEF800 */  andi  $t6, $a1, 0xf800
/* 09B894 8009AC94 000E7AC3 */  sra   $t7, $t6, 0xb
/* 09B898 8009AC98 01EA0019 */  multu $t7, $t2
/* 09B89C 8009AC9C 0308C821 */  addu  $t9, $t8, $t0
/* 09B8A0 8009ACA0 A459FFFA */  sh    $t9, -6($v0)
/* 09B8A4 8009ACA4 30B807C0 */  andi  $t8, $a1, 0x7c0
/* 09B8A8 8009ACA8 0018C983 */  sra   $t9, $t8, 6
/* 09B8AC 8009ACAC 30AE003E */  andi  $t6, $a1, 0x3e
/* 09B8B0 8009ACB0 000E7843 */  sra   $t7, $t6, 1
/* 09B8B4 8009ACB4 30A80001 */  andi  $t0, $a1, 1
/* 09B8B8 8009ACB8 9445FFFE */  lhu   $a1, -2($v0)
/* 09B8BC 8009ACBC 00002012 */  mflo  $a0
/* 09B8C0 8009ACC0 00000000 */  nop   
/* 09B8C4 8009ACC4 00000000 */  nop   
/* 09B8C8 8009ACC8 032B0019 */  multu $t9, $t3
/* 09B8CC 8009ACCC 00003012 */  mflo  $a2
/* 09B8D0 8009ACD0 0086C021 */  addu  $t8, $a0, $a2
/* 09B8D4 8009ACD4 00000000 */  nop   
/* 09B8D8 8009ACD8 01EC0019 */  multu $t7, $t4
/* 09B8DC 8009ACDC 00003812 */  mflo  $a3
/* 09B8E0 8009ACE0 03074821 */  addu  $t1, $t8, $a3
/* 09B8E4 8009ACE4 0009CA02 */  srl   $t9, $t1, 8
/* 09B8E8 8009ACE8 00197040 */  sll   $t6, $t9, 1
/* 09B8EC 8009ACEC 00197980 */  sll   $t7, $t9, 6
/* 09B8F0 8009ACF0 01CFC021 */  addu  $t8, $t6, $t7
/* 09B8F4 8009ACF4 0019CAC0 */  sll   $t9, $t9, 0xb
/* 09B8F8 8009ACF8 03197021 */  addu  $t6, $t8, $t9
/* 09B8FC 8009ACFC 30B8F800 */  andi  $t8, $a1, 0xf800
/* 09B900 8009AD00 0018CAC3 */  sra   $t9, $t8, 0xb
/* 09B904 8009AD04 032A0019 */  multu $t9, $t2
/* 09B908 8009AD08 01C87821 */  addu  $t7, $t6, $t0
/* 09B90C 8009AD0C A44FFFFC */  sh    $t7, -4($v0)
/* 09B910 8009AD10 30AE07C0 */  andi  $t6, $a1, 0x7c0
/* 09B914 8009AD14 000E7983 */  sra   $t7, $t6, 6
/* 09B918 8009AD18 30B8003E */  andi  $t8, $a1, 0x3e
/* 09B91C 8009AD1C 0018C843 */  sra   $t9, $t8, 1
/* 09B920 8009AD20 30A80001 */  andi  $t0, $a1, 1
/* 09B924 8009AD24 00002012 */  mflo  $a0
/* 09B928 8009AD28 00000000 */  nop   
/* 09B92C 8009AD2C 00000000 */  nop   
/* 09B930 8009AD30 01EB0019 */  multu $t7, $t3
/* 09B934 8009AD34 00003012 */  mflo  $a2
/* 09B938 8009AD38 00867021 */  addu  $t6, $a0, $a2
/* 09B93C 8009AD3C 00000000 */  nop   
/* 09B940 8009AD40 032C0019 */  multu $t9, $t4
/* 09B944 8009AD44 00003812 */  mflo  $a3
/* 09B948 8009AD48 01C74821 */  addu  $t1, $t6, $a3
/* 09B94C 8009AD4C 00097A02 */  srl   $t7, $t1, 8
/* 09B950 8009AD50 000FC040 */  sll   $t8, $t7, 1
/* 09B954 8009AD54 000FC980 */  sll   $t9, $t7, 6
/* 09B958 8009AD58 03197021 */  addu  $t6, $t8, $t9
/* 09B95C 8009AD5C 000F7AC0 */  sll   $t7, $t7, 0xb
/* 09B960 8009AD60 01CFC021 */  addu  $t8, $t6, $t7
/* 09B964 8009AD64 0308C821 */  addu  $t9, $t8, $t0
/* 09B968 8009AD68 146DFF92 */  bne   $v1, $t5, .L8009ABB4
/* 09B96C 8009AD6C A459FFFE */   sh    $t9, -2($v0)
/* 09B970 8009AD70 03E00008 */  jr    $ra
/* 09B974 8009AD74 00000000 */   nop   
