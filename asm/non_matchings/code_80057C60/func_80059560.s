glabel func_80059560
/* 05A160 80059560 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 05A164 80059564 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 05A168 80059568 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 05A16C 8005956C 24010003 */  li    $at, 3
/* 05A170 80059570 AFBF0034 */  sw    $ra, 0x34($sp)
/* 05A174 80059574 11C10046 */  beq   $t6, $at, .L80059690
/* 05A178 80059578 AFA40040 */   sw    $a0, 0x40($sp)
/* 05A17C 8005957C 3C0F8016 */  lui   $t7, %hi(D_801657F8) # $t7, 0x8016
/* 05A180 80059580 81EF57F8 */  lb    $t7, %lo(D_801657F8)($t7)
/* 05A184 80059584 3C188019 */  lui   $t8, %hi(D_8018D188) # $t8, 0x8019
/* 05A188 80059588 11E0001A */  beqz  $t7, .L800595F4
/* 05A18C 8005958C 00000000 */   nop   
/* 05A190 80059590 8F18D188 */  lw    $t8, %lo(D_8018D188)($t8)
/* 05A194 80059594 00044140 */  sll   $t0, $a0, 5
/* 05A198 80059598 01044021 */  addu  $t0, $t0, $a0
/* 05A19C 8005959C 13000015 */  beqz  $t8, .L800595F4
/* 05A1A0 800595A0 00084080 */   sll   $t0, $t0, 2
/* 05A1A4 800595A4 3C098019 */  lui   $t1, %hi(D_8018CA70) # $t1, 0x8019
/* 05A1A8 800595A8 2529CA70 */  addiu $t1, %lo(D_8018CA70) # addiu $t1, $t1, -0x3590
/* 05A1AC 800595AC 01091021 */  addu  $v0, $t0, $t1
/* 05A1B0 800595B0 3C060D01 */  lui   $a2, %hi(D_0D00A958) # $a2, 0xd01
/* 05A1B4 800595B4 24C6A958 */  addiu $a2, %lo(D_0D00A958) # addiu $a2, $a2, -0x56a8
/* 05A1B8 800595B8 8444005A */  lh    $a0, 0x5a($v0)
/* 05A1BC 800595BC 84450060 */  lh    $a1, 0x60($v0)
/* 05A1C0 800595C0 0C0132D8 */  jal   func_8004CB60
/* 05A1C4 800595C4 AFA2003C */   sw    $v0, 0x3c($sp)
/* 05A1C8 800595C8 8FA2003C */  lw    $v0, 0x3c($sp)
/* 05A1CC 800595CC 8444005A */  lh    $a0, 0x5a($v0)
/* 05A1D0 800595D0 84450060 */  lh    $a1, 0x60($v0)
/* 05A1D4 800595D4 80460072 */  lb    $a2, 0x72($v0)
/* 05A1D8 800595D8 2484FFF4 */  addiu $a0, $a0, -0xc
/* 05A1DC 800595DC 24A50004 */  addiu $a1, $a1, 4
/* 05A1E0 800595E0 00056400 */  sll   $t4, $a1, 0x10
/* 05A1E4 800595E4 00045400 */  sll   $t2, $a0, 0x10
/* 05A1E8 800595E8 000A2403 */  sra   $a0, $t2, 0x10
/* 05A1EC 800595EC 0C013F1E */  jal   func_8004FC78
/* 05A1F0 800595F0 000C2C03 */   sra   $a1, $t4, 0x10
.L800595F4:
/* 05A1F4 800595F4 3C0E8016 */  lui   $t6, %hi(D_801657E4) # $t6, 0x8016
/* 05A1F8 800595F8 81CE57E4 */  lb    $t6, %lo(D_801657E4)($t6)
/* 05A1FC 800595FC 8FAF0040 */  lw    $t7, 0x40($sp)
/* 05A200 80059600 24010002 */  li    $at, 2
/* 05A204 80059604 15C10022 */  bne   $t6, $at, .L80059690
/* 05A208 80059608 000FC140 */   sll   $t8, $t7, 5
/* 05A20C 8005960C 030FC021 */  addu  $t8, $t8, $t7
/* 05A210 80059610 3C198019 */  lui   $t9, %hi(D_8018CA70) # $t9, 0x8019
/* 05A214 80059614 2739CA70 */  addiu $t9, %lo(D_8018CA70) # addiu $t9, $t9, -0x3590
/* 05A218 80059618 0018C080 */  sll   $t8, $t8, 2
/* 05A21C 8005961C 03191021 */  addu  $v0, $t8, $t9
/* 05A220 80059620 80480074 */  lb    $t0, 0x74($v0)
/* 05A224 80059624 3C098016 */  lui   $t1, %hi(D_80165608) # $t1, 0x8016
/* 05A228 80059628 11000019 */  beqz  $t0, .L80059690
/* 05A22C 8005962C 00000000 */   nop   
/* 05A230 80059630 8D295608 */  lw    $t1, %lo(D_80165608)($t1)
/* 05A234 80059634 00003025 */  move  $a2, $zero
/* 05A238 80059638 3C073F80 */  lui   $a3, 0x3f80
/* 05A23C 8005963C 11200014 */  beqz  $t1, .L80059690
/* 05A240 80059640 3C0A0D02 */   lui   $t2, %hi(gTLUTPortraitBombKartAndQuestionMark) # $t2, 0xd02
/* 05A244 80059644 3C0B0D02 */  lui   $t3, %hi(gTexturePortraitBombKartAndQuestionMark) # $t3, 0xd02
/* 05A248 80059648 3C0C0D00 */  lui   $t4, %hi(D_0D005AE0) # $t4, 0xd00
/* 05A24C 8005964C 258C5AE0 */  addiu $t4, %lo(D_0D005AE0) # addiu $t4, $t4, 0x5ae0
/* 05A250 80059650 256BD6D8 */  addiu $t3, %lo(gTexturePortraitBombKartAndQuestionMark) # addiu $t3, $t3, -0x2928
/* 05A254 80059654 254AB4D8 */  addiu $t2, %lo(gTLUTPortraitBombKartAndQuestionMark) # addiu $t2, $t2, -0x4b28
/* 05A258 80059658 240D0020 */  li    $t5, 32
/* 05A25C 8005965C 240E0020 */  li    $t6, 32
/* 05A260 80059660 240F0020 */  li    $t7, 32
/* 05A264 80059664 24180020 */  li    $t8, 32
/* 05A268 80059668 AFB80028 */  sw    $t8, 0x28($sp)
/* 05A26C 8005966C AFAF0024 */  sw    $t7, 0x24($sp)
/* 05A270 80059670 AFAE0020 */  sw    $t6, 0x20($sp)
/* 05A274 80059674 AFAD001C */  sw    $t5, 0x1c($sp)
/* 05A278 80059678 AFAA0010 */  sw    $t2, 0x10($sp)
/* 05A27C 8005967C AFAB0014 */  sw    $t3, 0x14($sp)
/* 05A280 80059680 AFAC0018 */  sw    $t4, 0x18($sp)
/* 05A284 80059684 8444006C */  lh    $a0, 0x6c($v0)
/* 05A288 80059688 0C011E44 */  jal   func_80047910
/* 05A28C 8005968C 8445006E */   lh    $a1, 0x6e($v0)
.L80059690:
/* 05A290 80059690 0C0139B1 */  jal   func_8004E6C4
/* 05A294 80059694 8FA40040 */   lw    $a0, 0x40($sp)
/* 05A298 80059698 8FBF0034 */  lw    $ra, 0x34($sp)
/* 05A29C 8005969C 27BD0040 */  addiu $sp, $sp, 0x40
/* 05A2A0 800596A0 03E00008 */  jr    $ra
/* 05A2A4 800596A4 00000000 */   nop   
