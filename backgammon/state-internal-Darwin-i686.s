	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	__Z11to_internalhsaPhPs
__Z11to_internalhsaPhPs:                ## @_Z11to_internalhsaPhPs
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp0:
	.cfi_def_cfa_offset 8
Ltmp1:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp2:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
Ltmp3:
	.cfi_offset %esi, -20
Ltmp4:
	.cfi_offset %edi, -16
Ltmp5:
	.cfi_offset %ebx, -12
	calll	L0$pb
L0$pb:
	popl	%edx
	movl	20(%ebp), %esi
	testl	%esi, %esi
	je	LBB0_2
## BB#1:
	cmpl	$0, 24(%ebp)
	je	LBB0_2
## BB#4:
	movl	%edx, -16(%ebp)         ## 4-byte Spill
	movb	8(%ebp), %bl
	movzbl	%bl, %edi
	cmpl	$26, %edi
	jae	LBB0_5
## BB#6:
	movzwl	12(%ebp), %eax
	testb	%bl, %bl
	setne	%cl
	leal	15(%eax), %edx
	movzwl	%dx, %edx
	cmpl	$31, %edx
	jb	LBB0_9
## BB#7:
	testb	%cl, %cl
	jne	LBB0_8
LBB0_9:
	movb	16(%ebp), %dl
	movzbl	%dl, %ecx
	cmpl	$255, %ecx
	setne	%dh
	cmpl	$1, %ecx
	je	LBB0_12
## BB#10:
	testb	%dh, %dh
	jne	LBB0_11
LBB0_12:
	testb	%bl, %bl
	je	LBB0_13
## BB#24:
	movsbl	%dl, %edx
	movswl	%dx, %edx
	imull	%eax, %edx
	movl	24(%ebp), %eax
	movw	%dx, (%eax)
	jmp	LBB0_25
LBB0_13:
	cmpl	$1, %ecx
	jne	LBB0_15
## BB#14:
	movl	24(%ebp), %edx
	movw	%ax, (%edx)
	jmp	LBB0_25
LBB0_15:
	movl	%edi, -20(%ebp)         ## 4-byte Spill
	movswl	%ax, %edi
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	movl	%edi, %eax
	imull	%edx
	movl	%edx, %esi
	movl	%esi, %eax
	shrl	$31, %eax
	sarl	$5, %esi
	addl	%eax, %esi
	movswl	%si, %eax
	cmpl	$15, %eax
	jg	LBB0_17
## BB#16:
	imull	$100, %esi, %eax
	subl	%eax, %edi
	movswl	%di, %eax
	cmpl	$16, %eax
	jge	LBB0_17
## BB#18:
	movl	24(%ebp), %edx
	movw	$0, (%edx)
	movzwl	%si, %eax
	cmpl	$16, %eax
	jae	LBB0_19
## BB#20:
	movw	%si, (%edx)
	movzwl	%di, %eax
	cmpl	$16, %eax
	jae	LBB0_21
## BB#22:
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	movl	%esi, %eax
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %esi
	imull	$100, %edi, %eax
	addl	%esi, %eax
	movl	24(%ebp), %edx
	movw	%ax, (%edx)
	movzwl	%ax, %eax
	cmpl	$1516, %eax             ## imm = 0x5EC
	movl	20(%ebp), %esi
	movl	-20(%ebp), %edi         ## 4-byte Reload
	jae	LBB0_23
LBB0_25:
	cmpl	$255, %ecx
	movb	%bl, %al
	je	LBB0_27
## BB#26:
	movb	$25, %al
	subb	%bl, %al
LBB0_27:
	cmpl	$25, %edi
	movb	%bl, %cl
	je	LBB0_29
## BB#28:
	movb	%al, %cl
LBB0_29:
	testb	%bl, %bl
	je	LBB0_31
## BB#30:
	movb	%cl, %bl
LBB0_31:
	movb	%bl, (%esi)
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB0_2:
	leal	L_.str.1-L0$pb(%edx), %eax
	leal	L_.str-L0$pb(%edx), %ecx
	leal	L___func__._Z11to_internalhsaPhPs-L0$pb(%edx), %edx
	pushl	%eax
	pushl	$60
	jmp	LBB0_3
LBB0_5:
	movl	-16(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.2-L0$pb(%edx), %eax
	leal	L_.str-L0$pb(%edx), %ecx
	leal	L___func__._Z11to_internalhsaPhPs-L0$pb(%edx), %edx
	pushl	%eax
	pushl	$61
	jmp	LBB0_3
LBB0_8:
	movl	-16(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.3-L0$pb(%edx), %eax
	leal	L_.str-L0$pb(%edx), %ecx
	leal	L___func__._Z11to_internalhsaPhPs-L0$pb(%edx), %edx
	pushl	%eax
	pushl	$62
	jmp	LBB0_3
LBB0_11:
	movl	-16(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.4-L0$pb(%edx), %eax
	leal	L_.str-L0$pb(%edx), %ecx
	leal	L___func__._Z11to_internalhsaPhPs-L0$pb(%edx), %edx
	pushl	%eax
	pushl	$63
	jmp	LBB0_3
LBB0_17:
	movl	-16(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.5-L0$pb(%edx), %eax
	leal	L_.str-L0$pb(%edx), %ecx
	leal	L___func__._Z11to_internalhsaPhPs-L0$pb(%edx), %edx
	pushl	%eax
	pushl	$75
	jmp	LBB0_3
LBB0_19:
	movl	-16(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.45-L0$pb(%edx), %eax
	leal	L_.str.43-L0$pb(%edx), %ecx
	leal	L___func__._Z13set_lower_barPst-L0$pb(%edx), %edx
	pushl	%eax
	pushl	$97
	jmp	LBB0_3
LBB0_21:
	movl	-16(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.47-L0$pb(%edx), %eax
	leal	L_.str.43-L0$pb(%edx), %ecx
	leal	L___func__._Z14set_higher_barPst-L0$pb(%edx), %edx
	pushl	%eax
	pushl	$107
	jmp	LBB0_3
LBB0_23:
	movl	-16(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.46-L0$pb(%edx), %eax
	leal	L_.str.43-L0$pb(%edx), %ecx
	leal	L___func__._Z14set_higher_barPst-L0$pb(%edx), %edx
	pushl	%eax
	pushl	$109
LBB0_3:
	pushl	%ecx
	pushl	%edx
	calll	___assert_rtn
	addl	$16, %esp
	.cfi_endproc

	.globl	__Z13from_internalhsaPhPs
__Z13from_internalhsaPhPs:              ## @_Z13from_internalhsaPhPs
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp6:
	.cfi_def_cfa_offset 8
Ltmp7:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp8:
	.cfi_def_cfa_register %ebp
	popl	%ebp
	jmp	__Z11to_internalhsaPhPs ## TAILCALL
	.cfi_endproc

	.globl	__Z11to_internalPK10game_statePS_
__Z11to_internalPK10game_statePS_:      ## @_Z11to_internalPK10game_statePS_
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp9:
	.cfi_def_cfa_offset 8
Ltmp10:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp11:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
Ltmp12:
	.cfi_offset %esi, -20
Ltmp13:
	.cfi_offset %edi, -16
Ltmp14:
	.cfi_offset %ebx, -12
	calll	L2$pb
L2$pb:
	popl	%eax
	movl	8(%ebp), %esi
	testl	%esi, %esi
	je	LBB2_2
## BB#1:
	movl	12(%ebp), %edx
	testl	%edx, %edx
	je	LBB2_2
## BB#4:
	cmpl	%edx, %esi
	je	LBB2_5
## BB#6:
	movb	(%esi), %al
	movb	%al, (%edx)
	xorl	%eax, %eax
LBB2_7:                                 ## =>This Inner Loop Header: Depth=1
	movw	2(%esi,%eax,2), %cx
	movw	%cx, 2(%edx,%eax,2)
	incl	%eax
	cmpl	$2, %eax
	jne	LBB2_7
## BB#8:
	xorl	%ebx, %ebx
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	movswl	6(%esi,%ebx,2), %eax
	movsbl	(%esi), %ecx
	subl	$12, %esp
	movl	%edx, %esi
	movzbl	%bl, %edx
	leal	-16(%ebp), %edi
	pushl	%edi
	leal	-13(%ebp), %edi
	pushl	%edi
	pushl	%ecx
	pushl	%eax
	pushl	%edx
	calll	__Z11to_internalhsaPhPs
	movl	%esi, %edx
	movl	8(%ebp), %esi
	addl	$32, %esp
	movw	-16(%ebp), %ax
	movzbl	-13(%ebp), %ecx
	movw	%ax, 6(%edx,%ecx,2)
	incl	%ebx
	cmpl	$26, %ebx
	jne	LBB2_9
## BB#10:
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB2_2:
	leal	L_.str.6-L2$pb(%eax), %ecx
	leal	L_.str-L2$pb(%eax), %edx
	leal	L___func__._Z11to_internalhsaPhPs-L2$pb(%eax), %eax
	pushl	%ecx
	pushl	$107
	jmp	LBB2_3
LBB2_5:
	leal	L_.str.7-L2$pb(%eax), %ecx
	leal	L_.str-L2$pb(%eax), %edx
	leal	L___func__._Z11to_internalhsaPhPs-L2$pb(%eax), %eax
	pushl	%ecx
	pushl	$108
LBB2_3:
	pushl	%edx
	pushl	%eax
	calll	___assert_rtn
	addl	$16, %esp
	.cfi_endproc

	.globl	__Z13from_internalPK10game_statePS_
__Z13from_internalPK10game_statePS_:    ## @_Z13from_internalPK10game_statePS_
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp15:
	.cfi_def_cfa_offset 8
Ltmp16:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp17:
	.cfi_def_cfa_register %ebp
	popl	%ebp
	jmp	__Z11to_internalPK10game_statePS_ ## TAILCALL
	.cfi_endproc

	.globl	__Z11to_internalPK9game_moveaPS_
__Z11to_internalPK9game_moveaPS_:       ## @_Z11to_internalPK9game_moveaPS_
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp18:
	.cfi_def_cfa_offset 8
Ltmp19:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp20:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
Ltmp21:
	.cfi_offset %esi, -20
Ltmp22:
	.cfi_offset %edi, -16
Ltmp23:
	.cfi_offset %ebx, -12
	calll	L4$pb
L4$pb:
	popl	%edx
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	LBB4_2
## BB#1:
	movl	16(%ebp), %ecx
	testl	%ecx, %ecx
	je	LBB4_2
## BB#4:
	cmpl	%ecx, %eax
	je	LBB4_5
## BB#6:
	movzbl	12(%ebp), %esi
	cmpl	$255, %esi
	setne	%bl
	cmpl	$1, %esi
	je	LBB4_9
## BB#7:
	testb	%bl, %bl
	jne	LBB4_8
LBB4_9:
	movw	(%eax), %dx
	testw	%dx, %dx
	je	LBB4_12
## BB#10:
	movzwl	%dx, %edi
	cmpl	$25, %edi
	je	LBB4_12
## BB#11:
	movl	$25, %edi
	subl	%edx, %edi
	cmpl	$255, %esi
	cmovew	%dx, %di
	movw	%di, %dx
LBB4_12:
	movw	%dx, (%ecx)
	movw	2(%eax), %ax
	movw	%ax, 2(%ecx)
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB4_2:
	leal	L_.str.8-L4$pb(%edx), %eax
	leal	L_.str-L4$pb(%edx), %ecx
	leal	L___func__._Z11to_internalhsaPhPs-L4$pb(%edx), %edx
	pushl	%eax
	pushl	$136
	jmp	LBB4_3
LBB4_5:
	leal	L_.str.9-L4$pb(%edx), %eax
	leal	L_.str-L4$pb(%edx), %ecx
	leal	L___func__._Z11to_internalhsaPhPs-L4$pb(%edx), %edx
	pushl	%eax
	pushl	$137
	jmp	LBB4_3
LBB4_8:
	leal	L_.str.4-L4$pb(%edx), %eax
	leal	L_.str-L4$pb(%edx), %ecx
	leal	L___func__._Z11to_internalhsaPhPs-L4$pb(%edx), %edx
	pushl	%eax
	pushl	$138
LBB4_3:
	pushl	%ecx
	pushl	%edx
	calll	___assert_rtn
	addl	$16, %esp
	.cfi_endproc

	.globl	__Z13from_internalPK9game_moveaPS_
__Z13from_internalPK9game_moveaPS_:     ## @_Z13from_internalPK9game_moveaPS_
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp24:
	.cfi_def_cfa_offset 8
Ltmp25:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp26:
	.cfi_def_cfa_register %ebp
	popl	%ebp
	jmp	__Z11to_internalPK9game_moveaPS_ ## TAILCALL
	.cfi_endproc

	.globl	__Z11to_internalPK10multi_moveaPS_
__Z11to_internalPK10multi_moveaPS_:     ## @_Z11to_internalPK10multi_moveaPS_
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp27:
	.cfi_def_cfa_offset 8
Ltmp28:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp29:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
Ltmp30:
	.cfi_offset %esi, -20
Ltmp31:
	.cfi_offset %edi, -16
Ltmp32:
	.cfi_offset %ebx, -12
	calll	L6$pb
L6$pb:
	popl	%eax
	movl	8(%ebp), %ecx
	testl	%ecx, %ecx
	je	LBB6_2
## BB#1:
	movl	16(%ebp), %edi
	testl	%edi, %edi
	je	LBB6_2
## BB#4:
	cmpl	%edi, %ecx
	je	LBB6_5
## BB#6:
	movb	(%ecx), %al
	movb	%al, (%edi)
	cmpb	$0, (%ecx)
	je	LBB6_9
## BB#7:
	leal	2(%ecx), %ebx
	addl	$2, %edi
	xorl	%esi, %esi
	movsbl	12(%ebp), %eax
	movl	%eax, -16(%ebp)         ## 4-byte Spill
LBB6_8:                                 ## =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	pushl	%edi
	pushl	-16(%ebp)               ## 4-byte Folded Reload
	pushl	%ebx
	calll	__Z11to_internalPK9game_moveaPS_
	movl	8(%ebp), %eax
	addl	$16, %esp
	incl	%esi
	movzbl	(%eax), %eax
	addl	$4, %ebx
	addl	$4, %edi
	cmpl	%eax, %esi
	jb	LBB6_8
LBB6_9:
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB6_2:
	leal	L_.str.10-L6$pb(%eax), %ecx
	leal	L_.str-L6$pb(%eax), %edx
	leal	L___func__._Z11to_internalhsaPhPs-L6$pb(%eax), %eax
	pushl	%ecx
	pushl	$163
	jmp	LBB6_3
LBB6_5:
	leal	L_.str.11-L6$pb(%eax), %ecx
	leal	L_.str-L6$pb(%eax), %edx
	leal	L___func__._Z11to_internalhsaPhPs-L6$pb(%eax), %eax
	pushl	%ecx
	pushl	$164
LBB6_3:
	pushl	%edx
	pushl	%eax
	calll	___assert_rtn
	addl	$16, %esp
	.cfi_endproc

	.globl	__Z13from_internalPK10multi_moveaPS_
__Z13from_internalPK10multi_moveaPS_:   ## @_Z13from_internalPK10multi_moveaPS_
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp33:
	.cfi_def_cfa_offset 8
Ltmp34:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp35:
	.cfi_def_cfa_register %ebp
	popl	%ebp
	jmp	__Z11to_internalPK10multi_moveaPS_ ## TAILCALL
	.cfi_endproc

	.globl	__Z14is_final_statePK10game_state
__Z14is_final_statePK10game_state:      ## @_Z14is_final_statePK10game_state
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp36:
	.cfi_def_cfa_offset 8
Ltmp37:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp38:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
Ltmp39:
	.cfi_offset %esi, -20
Ltmp40:
	.cfi_offset %edi, -16
Ltmp41:
	.cfi_offset %ebx, -12
	calll	L8$pb
L8$pb:
	popl	%ecx
	movl	%ecx, -28(%ebp)         ## 4-byte Spill
	movl	8(%ebp), %eax
	movl	L___stack_chk_guard$non_lazy_ptr-L8$pb(%ecx), %edi
	movl	(%edi), %ecx
	movl	%ecx, -16(%ebp)
	testl	%eax, %eax
	je	LBB8_1
## BB#5:
	xorl	%ecx, %ecx
	movl	%ecx, -20(%ebp)
	movl	%ecx, -24(%ebp)
	movl	$4, %ecx
LBB8_6:                                 ## =>This Inner Loop Header: Depth=1
	movswl	(%eax,%ecx,2), %esi
	testl	%esi, %esi
	setg	%bl
	movl	%esi, %edx
	negl	%edx
	cmovll	%esi, %edx
	movzbl	%bl, %esi
	addl	-24(%ebp,%esi,4), %edx
	jo	LBB8_4
## BB#7:                                ##   in Loop: Header=BB8_6 Depth=1
	movl	%edx, -24(%ebp,%esi,4)
	leal	1(%ecx), %edx
	addl	$-2, %ecx
	cmpl	$25, %ecx
	movl	%edx, %ecx
	jb	LBB8_6
## BB#3:
	movswl	6(%eax), %ecx
	movl	$1374389535, %esi       ## imm = 0x51EB851F
	movl	%ecx, %eax
	imull	%esi
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	movzwl	%dx, %ebx
	addl	-24(%ebp), %ebx
	jo	LBB8_4
## BB#8:
	movl	%ebx, -24(%ebp)
	movl	%ecx, %eax
	imull	%esi
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ecx
	movzwl	%cx, %eax
	addl	-20(%ebp), %eax
	jo	LBB8_4
## BB#9:
	movl	%eax, -20(%ebp)
	movl	%eax, %ecx
	orl	%ebx, %ecx
	cmpl	$16, %ecx
	jae	LBB8_10
## BB#11:
	testl	%ebx, %ebx
	sete	%cl
	testl	%eax, %eax
	sete	%al
	movl	(%edi), %edx
	cmpl	-16(%ebp), %edx
	jne	LBB8_13
## BB#12:
	orb	%al, %cl
	movzbl	%cl, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB8_4:
	ud2
LBB8_1:
	movl	-28(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.12-L8$pb(%edx), %eax
	leal	L_.str-L8$pb(%edx), %ecx
	leal	L___func__._Z14is_final_statePK10game_state-L8$pb(%edx), %edx
	pushl	%eax
	pushl	$186
	jmp	LBB8_2
LBB8_10:
	movl	-28(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.48-L8$pb(%edx), %eax
	leal	L_.str-L8$pb(%edx), %ecx
	leal	L___func__._ZN12_GLOBAL__N_114count_checkersEPK10game_statePi-L8$pb(%edx), %edx
	pushl	%eax
	pushl	$36
LBB8_2:
	pushl	%ecx
	pushl	%edx
	calll	___assert_rtn
	addl	$16, %esp
LBB8_13:
	calll	___stack_chk_fail
	.cfi_endproc

	.globl	__Z6winnerPK10game_state
__Z6winnerPK10game_state:               ## @_Z6winnerPK10game_state
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp42:
	.cfi_def_cfa_offset 8
Ltmp43:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp44:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
Ltmp45:
	.cfi_offset %esi, -20
Ltmp46:
	.cfi_offset %edi, -16
Ltmp47:
	.cfi_offset %ebx, -12
	calll	L9$pb
L9$pb:
	popl	%eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	movl	8(%ebp), %edi
	movl	L___stack_chk_guard$non_lazy_ptr-L9$pb(%eax), %eax
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	testl	%edi, %edi
	je	LBB9_1
## BB#5:
	xorl	%eax, %eax
	movl	%eax, -20(%ebp)
	movl	%eax, -24(%ebp)
	movl	$4, %eax
LBB9_6:                                 ## =>This Inner Loop Header: Depth=1
	movswl	(%edi,%eax,2), %edx
	testl	%edx, %edx
	setg	%bl
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	movzbl	%bl, %edx
	addl	-24(%ebp,%edx,4), %ecx
	jo	LBB9_4
## BB#7:                                ##   in Loop: Header=BB9_6 Depth=1
	movl	%ecx, -24(%ebp,%edx,4)
	leal	1(%eax), %ecx
	addl	$-2, %eax
	cmpl	$25, %eax
	movl	%ecx, %eax
	jb	LBB9_6
## BB#3:
	movswl	6(%edi), %ebx
	movl	$1374389535, %ecx       ## imm = 0x51EB851F
	movl	%ebx, %eax
	imull	%ecx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	movzwl	%dx, %esi
	addl	-24(%ebp), %esi
	jo	LBB9_4
## BB#8:
	movl	%esi, -24(%ebp)
	movl	%ebx, %eax
	imull	%ecx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movzwl	%cx, %eax
	addl	-20(%ebp), %eax
	jo	LBB9_4
## BB#9:
	movl	%eax, -20(%ebp)
	movl	%eax, %ecx
	orl	%esi, %ecx
	cmpl	$16, %ecx
	jae	LBB9_10
## BB#11:
	testl	%esi, %esi
	je	LBB9_12
## BB#15:
	movl	%ebx, -40(%ebp)         ## 4-byte Spill
	testl	%eax, %eax
	jne	LBB9_17
## BB#16:
	testl	%esi, %esi
	jg	LBB9_13
	jmp	LBB9_17
LBB9_12:
	movl	%ebx, -40(%ebp)         ## 4-byte Spill
	testl	%eax, %eax
	jle	LBB9_17
LBB9_13:
	cmpl	$1, %esi
	sbbl	%ecx, %ecx
	orl	$1, %ecx
	movl	%ecx, -36(%ebp)         ## 4-byte Spill
	movsbl	(%edi), %eax
	cmpl	%eax, %ecx
	je	LBB9_14
## BB#19:
	xorl	%eax, %eax
	incl	%eax
	testl	%esi, %esi
	movl	%esi, -32(%ebp)         ## 4-byte Spill
	movl	$19, %ecx
	cmovnel	%eax, %ecx
	movl	$24, %esi
	movl	$6, %eax
	cmovel	%esi, %eax
	xorl	%esi, %esi
	cmpl	%eax, %ecx
	ja	LBB9_23
## BB#20:
	xorl	%esi, %esi
LBB9_21:                                ## =>This Inner Loop Header: Depth=1
	movl	%esi, %ebx
	movl	%edi, %edx
	movswl	6(%edx,%ecx,2), %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	addl	%ebx, %esi
	jo	LBB9_18
## BB#22:                               ##   in Loop: Header=BB9_21 Depth=1
	incl	%ecx
	cmpl	%eax, %ecx
	movl	%edx, %edi
	jbe	LBB9_21
LBB9_23:
	cmpl	$0, -32(%ebp)           ## 4-byte Folded Reload
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	$15, -24(%ebp,%ecx,4)
	movl	$1, %eax
	jl	LBB9_25
## BB#24:
	movl	-40(%ebp), %eax         ## 4-byte Reload
	testw	%ax, %ax
	setne	%al
	movzbl	%al, %ecx
	orl	$2, %ecx
	testl	%esi, %esi
	movl	$3, %eax
	cmovel	%ecx, %eax
LBB9_25:
	movl	-28(%ebp), %ecx         ## 4-byte Reload
	movl	(%ecx), %ecx
	cmpl	-16(%ebp), %ecx
	jne	LBB9_27
## BB#26:
	imull	-36(%ebp), %eax         ## 4-byte Folded Reload
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB9_4:
	ud2
LBB9_18:
	ud2
LBB9_1:
	movl	-32(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.12-L9$pb(%edx), %eax
	leal	L_.str-L9$pb(%edx), %ecx
	leal	L___func__._Z6winnerPK10game_state-L9$pb(%edx), %edx
	pushl	%eax
	pushl	$197
	jmp	LBB9_2
LBB9_10:
	movl	-32(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.48-L9$pb(%edx), %eax
	leal	L_.str-L9$pb(%edx), %ecx
	leal	L___func__._ZN12_GLOBAL__N_114count_checkersEPK10game_statePi-L9$pb(%edx), %edx
	pushl	%eax
	pushl	$36
	jmp	LBB9_2
LBB9_17:
	movl	-32(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.13-L9$pb(%edx), %eax
	leal	L_.str-L9$pb(%edx), %ecx
	leal	L___func__._Z6winnerPK10game_state-L9$pb(%edx), %edx
	pushl	%eax
	pushl	$203
	jmp	LBB9_2
LBB9_14:
	movl	-32(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.14-L9$pb(%edx), %eax
	leal	L_.str-L9$pb(%edx), %ecx
	leal	L___func__._Z6winnerPK10game_state-L9$pb(%edx), %edx
	pushl	%eax
	pushl	$206
LBB9_2:
	pushl	%ecx
	pushl	%edx
	calll	___assert_rtn
	addl	$16, %esp
LBB9_27:
	calll	___stack_chk_fail
	.cfi_endproc

	.globl	__Z10check_movePK10game_statePK9game_moveb
__Z10check_movePK10game_statePK9game_moveb: ## @_Z10check_movePK10game_statePK9game_moveb
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp48:
	.cfi_def_cfa_offset 8
Ltmp49:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp50:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
Ltmp51:
	.cfi_offset %esi, -20
Ltmp52:
	.cfi_offset %edi, -16
Ltmp53:
	.cfi_offset %ebx, -12
	calll	L10$pb
L10$pb:
	popl	%edi
	movl	8(%ebp), %esi
	testl	%esi, %esi
	je	LBB10_2
## BB#1:
	movl	12(%ebp), %ecx
	testl	%ecx, %ecx
	je	LBB10_2
## BB#4:
	movzwl	(%ecx), %eax
	movzwl	2(%ecx), %ebx
	movzwl	2(%esi), %ecx
	cmpl	%ecx, %ebx
	je	LBB10_7
## BB#5:
	movzwl	4(%esi), %edx
	cmpl	%edx, %ebx
	jne	LBB10_6
LBB10_7:
	movl	%edi, -24(%ebp)         ## 4-byte Spill
	subl	$16, %esp
	movzbl	16(%ebp), %ecx
	movl	%ecx, -28(%ebp)         ## 4-byte Spill
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	movl	%eax, %edi
	movl	%edi, %edx
	calll	__ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	addl	$16, %esp
	testb	%al, %al
	je	LBB10_8
## BB#9:
	addl	%edi, %ebx
	testw	%bx, %bx
	je	LBB10_10
## BB#11:
	movzwl	%bx, %ecx
	cmpl	$24, %ecx
	ja	LBB10_12
## BB#15:
	movswl	6(%esi,%ecx,2), %eax
	cmpl	$-1, %eax
	jge	LBB10_16
## BB#17:
	movsbl	(%esi), %ecx
	subl	$12, %esp
	leal	-16(%ebp), %edx
	leal	-13(%ebp), %esi
	cwtl
	movzbl	%bl, %ebx
	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%eax
	pushl	%ebx
	calll	__Z11to_internalhsaPhPs
	addl	$32, %esp
	movzbl	-13(%ebp), %eax
	movswl	-16(%ebp), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovll	%ecx, %edx
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	leal	L_.str.58-L10$pb(%ecx), %ecx
	pushl	%edx
	jmp	LBB10_18
LBB10_6:
	subl	$12, %esp
	leal	L_.str.16-L10$pb(%edi), %esi
	movzbl	16(%ebp), %eax
	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	%esi
	pushl	%eax
	calll	__ZN12_GLOBAL__N_14hintEbPKcz
	addl	$32, %esp
	jmp	LBB10_8
LBB10_12:
	movl	$4, %eax
LBB10_13:                               ## =>This Inner Loop Header: Depth=1
	cmpw	$0, (%esi,%eax,2)
	jg	LBB10_14
## BB#19:                               ##   in Loop: Header=BB10_13 Depth=1
	leal	1(%eax), %edx
	addl	$-2, %eax
	cmpl	$19, %eax
	movl	%edx, %eax
	jb	LBB10_13
## BB#20:
	movb	$1, %bl
	cmpl	$26, %ecx
	jb	LBB10_26
## BB#21:
	movzwl	%di, %eax
	cmpl	$20, %eax
	jb	LBB10_26
## BB#22:
	movl	$19, %ebx
LBB10_23:                               ## =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	movzwl	%bx, %edx
	movl	%esi, %ecx
	pushl	$0
	calll	__ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	addl	$16, %esp
	testb	%al, %al
	jne	LBB10_25
## BB#24:                               ##   in Loop: Header=BB10_23 Depth=1
	incl	%ebx
	cmpl	%edi, %ebx
	jb	LBB10_23
LBB10_16:
	movb	$1, %bl
	jmp	LBB10_26
LBB10_14:
	addl	$-3, %eax
	movsbl	(%esi), %ecx
	subl	$12, %esp
	leal	-16(%ebp), %edx
	leal	-13(%ebp), %esi
	movzbl	%al, %eax
	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	$0
	pushl	%eax
	calll	__Z11to_internalhsaPhPs
	addl	$32, %esp
	movzbl	-13(%ebp), %eax
	subl	$4, %esp
	movl	-24(%ebp), %ecx         ## 4-byte Reload
	leal	L_.str.59-L10$pb(%ecx), %ecx
LBB10_18:
	pushl	%eax
	pushl	%ecx
	pushl	-28(%ebp)               ## 4-byte Folded Reload
	calll	__ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
LBB10_8:
	xorl	%ebx, %ebx
LBB10_26:
	movzbl	%bl, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB10_25:
	movsbl	(%esi), %eax
	subl	$12, %esp
	leal	-20(%ebp), %ecx
	movl	%edi, %edx
	movzbl	%dl, %edx
	movl	%ecx, %edi
	pushl	%edi
	leal	-17(%ebp), %ecx
	pushl	%ecx
	pushl	%eax
	xorl	%eax, %eax
	pushl	%eax
	pushl	%edx
	calll	__Z11to_internalhsaPhPs
	addl	$32, %esp
	movsbl	(%esi), %eax
	subl	$12, %esp
	leal	-18(%ebp), %ecx
	movzbl	%bl, %edx
	xorl	%ebx, %ebx
	pushl	%edi
	pushl	%ecx
	pushl	%eax
	pushl	%ebx
	pushl	%edx
	calll	__Z11to_internalhsaPhPs
	addl	$32, %esp
	movzbl	-17(%ebp), %eax
	movzbl	-18(%ebp), %ecx
	movl	-24(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.17-L10$pb(%edx), %edx
	pushl	%ecx
	pushl	%eax
	pushl	%edx
	pushl	-28(%ebp)               ## 4-byte Folded Reload
	calll	__ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
	jmp	LBB10_26
LBB10_2:
	leal	L_.str.15-L10$pb(%edi), %eax
	leal	L_.str-L10$pb(%edi), %ecx
	leal	L___func__._Z10check_movePK10game_statePK9game_moveb-L10$pb(%edi), %edx
	pushl	%eax
	pushl	$313                    ## imm = 0x139
	jmp	LBB10_3
LBB10_10:
	movl	-24(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.57-L10$pb(%edx), %eax
	leal	L_.str-L10$pb(%edx), %ecx
	leal	L___func__._ZN12_GLOBAL__N_18check_toEPK10game_statetb-L10$pb(%edx), %edx
	pushl	%eax
	pushl	$279                    ## imm = 0x117
LBB10_3:
	pushl	%ecx
	pushl	%edx
	calll	___assert_rtn
	addl	$16, %esp
	.cfi_endproc

__ZN12_GLOBAL__N_14hintEbPKcz:          ## @_ZN12_GLOBAL__N_14hintEbPKcz
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp54:
	.cfi_def_cfa_offset 8
Ltmp55:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp56:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
Ltmp57:
	.cfi_offset %esi, -20
Ltmp58:
	.cfi_offset %edi, -16
Ltmp59:
	.cfi_offset %ebx, -12
	calll	L11$pb
L11$pb:
	popl	%esi
	movb	8(%ebp), %al
	testb	%al, %al
	je	LBB11_2
## BB#1:
	leal	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	L___stderrp$non_lazy_ptr-L11$pb(%esi), %ebx
	xorl	%edi, %edi
	incl	%edi
	leal	L_.str.49-L11$pb(%esi), %eax
	pushl	(%ebx)
	pushl	%edi
	pushl	$9
	pushl	%eax
	calll	_fwrite$UNIX2003
	addl	$16, %esp
	subl	$4, %esp
	pushl	-16(%ebp)
	pushl	12(%ebp)
	pushl	(%ebx)
	calll	_vfprintf
	addl	$16, %esp
	leal	L_.str.50-L11$pb(%esi), %eax
	pushl	(%ebx)
	pushl	%edi
	pushl	%edi
	pushl	%eax
	calll	_fwrite$UNIX2003
	addl	$16, %esp
LBB11_2:
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
	.cfi_endproc

__ZN12_GLOBAL__N_110check_fromEPK10game_statetb: ## @_ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp60:
	.cfi_def_cfa_offset 8
Ltmp61:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp62:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
Ltmp63:
	.cfi_offset %esi, -20
Ltmp64:
	.cfi_offset %edi, -16
Ltmp65:
	.cfi_offset %ebx, -12
	movl	%edx, %ebx
	calll	L12$pb
L12$pb:
	popl	%esi
	testl	%ecx, %ecx
	je	LBB12_16
## BB#1:
	movzwl	%bx, %eax
	cmpl	$25, %eax
	jb	LBB12_4
## BB#2:
	subl	$8, %esp
	leal	L_.str.52-L12$pb(%esi), %eax
LBB12_3:
	movzbl	8(%ebp), %ecx
	pushl	%eax
	pushl	%ecx
	jmp	LBB12_14
LBB12_4:
	movb	(%ecx), %dl
	movw	6(%ecx,%eax,2), %di
	testw	%di, %di
	je	LBB12_5
## BB#6:
	movb	%dl, -17(%ebp)          ## 1-byte Spill
	movswl	6(%ecx), %ecx
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	movl	%ecx, %eax
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movw	%ax, %dx
	orw	%bx, %dx
	je	LBB12_7
## BB#9:
	testw	%bx, %bx
	movb	-17(%ebp), %dl          ## 1-byte Reload
	je	LBB12_12
## BB#10:
	testw	%ax, %ax
	je	LBB12_12
## BB#11:
	subl	$8, %esp
	leal	L_.str.55-L12$pb(%esi), %eax
	jmp	LBB12_3
LBB12_5:
	subl	$12, %esp
	leal	-16(%ebp), %eax
	leal	-13(%ebp), %ecx
	movsbl	%dl, %edx
	movzbl	%bl, %edi
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	pushl	$0
	pushl	%edi
	calll	__Z11to_internalhsaPhPs
	addl	$32, %esp
	movzbl	-13(%ebp), %eax
	subl	$4, %esp
	leal	L_.str.53-L12$pb(%esi), %ecx
	jmp	LBB12_8
LBB12_7:
	movl	%ecx, %eax
	movl	$1374389535, %ecx       ## imm = 0x51EB851F
	imull	%ecx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	movzwl	%dx, %eax
	subl	$4, %esp
	leal	L_.str.54-L12$pb(%esi), %ecx
LBB12_8:
	movzbl	8(%ebp), %edx
	pushl	%eax
	pushl	%ecx
	pushl	%edx
LBB12_14:
	calll	__ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
	xorl	%eax, %eax
LBB12_15:
	movzbl	%al, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB12_12:
	movb	$1, %al
	testw	%di, %di
	jns	LBB12_15
## BB#13:
	subl	$12, %esp
	leal	-16(%ebp), %eax
	leal	-13(%ebp), %ecx
	movsbl	%dl, %edx
	movswl	%di, %edi
	movzbl	%bl, %ebx
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	pushl	%edi
	pushl	%ebx
	calll	__Z11to_internalhsaPhPs
	addl	$32, %esp
	movzbl	-13(%ebp), %eax
	movswl	-16(%ebp), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovll	%ecx, %edx
	leal	L_.str.56-L12$pb(%esi), %ecx
	movzbl	8(%ebp), %esi
	pushl	%edx
	pushl	%eax
	pushl	%ecx
	pushl	%esi
	jmp	LBB12_14
LBB12_16:
	leal	L_.str.51-L12$pb(%esi), %eax
	leal	L_.str-L12$pb(%esi), %ecx
	leal	L___func__._ZN12_GLOBAL__N_110check_fromEPK10game_statetb-L12$pb(%esi), %edx
	pushl	%eax
	pushl	$229
	pushl	%ecx
	pushl	%edx
	calll	___assert_rtn
	addl	$16, %esp
	.cfi_endproc

	.globl	__Z10apply_moveP10game_statePK9game_moveb
__Z10apply_moveP10game_statePK9game_moveb: ## @_Z10apply_moveP10game_statePK9game_moveb
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp66:
	.cfi_def_cfa_offset 8
Ltmp67:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp68:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
Ltmp69:
	.cfi_offset %esi, -20
Ltmp70:
	.cfi_offset %edi, -16
Ltmp71:
	.cfi_offset %ebx, -12
	calll	L13$pb
L13$pb:
	popl	%eax
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	movl	8(%ebp), %esi
	testl	%esi, %esi
	je	LBB13_2
## BB#1:
	movl	12(%ebp), %ecx
	testl	%ecx, %ecx
	je	LBB13_2
## BB#4:
	movzwl	(%ecx), %ebx
	cmpl	$25, %ebx
	jae	LBB13_5
## BB#6:
	movw	6(%esi,%ebx,2), %ax
	testw	%ax, %ax
	jle	LBB13_7
## BB#8:
	movw	2(%ecx), %cx
	addw	%bx, %cx
	leal	-1(%ecx), %edx
	movzwl	%dx, %edx
	cmpl	$30, %edx
	jae	LBB13_9
## BB#10:
	movzwl	%cx, %edi
	cmpl	$24, %edi
	ja	LBB13_12
## BB#11:
	movswl	6(%esi,%edi,2), %edx
	cmpl	$-1, %edx
	jl	LBB13_29
LBB13_12:
	testw	%bx, %bx
	je	LBB13_13
## BB#17:
	decl	%eax
	movw	%ax, 6(%esi,%ebx,2)
	jmp	LBB13_18
LBB13_13:
	movl	%edi, -24(%ebp)         ## 4-byte Spill
	movswl	6(%esi), %esi
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	movl	%esi, %eax
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	negl	%eax
	leal	-1(%esi,%eax), %edi
	movzwl	%di, %eax
	cmpl	$16, %eax
	jae	LBB13_14
## BB#15:
	movl	%esi, %eax
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	addl	%eax, %edi
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movw	%di, 6(%edx)
	movzwl	%di, %eax
	cmpl	$1516, %eax             ## imm = 0x5EC
	movl	%edx, %esi
	movl	-24(%ebp), %edi         ## 4-byte Reload
	jae	LBB13_16
LBB13_18:
	cmpl	$24, %edi
	ja	LBB13_25
## BB#19:
	movzwl	6(%esi,%edi,2), %eax
	cmpl	$65535, %eax            ## imm = 0xFFFF
	je	LBB13_20
LBB13_25:
	cmpl	$25, %edi
	jb	LBB13_27
## BB#26:
	movsbl	(%esi), %eax
	subl	$12, %esp
	leal	-16(%ebp), %ecx
	leal	-13(%ebp), %edx
	movl	%esi, %edi
	movzbl	%bl, %esi
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	%esi
	calll	__Z11to_internalhsaPhPs
	addl	$32, %esp
	movzbl	-13(%ebp), %eax
	subl	$4, %esp
	movl	-20(%ebp), %ecx         ## 4-byte Reload
	leal	L_.str.26-L13$pb(%ecx), %ecx
	movzbl	16(%ebp), %edx
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	calll	__ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
	incw	56(%edi)
	jmp	LBB13_28
LBB13_27:
	incw	6(%esi,%edi,2)
	jmp	LBB13_28
LBB13_20:
	movl	%edi, -24(%ebp)         ## 4-byte Spill
	movswl	6(%esi), %eax
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	imull	%edx
	movl	%esi, %ebx
	movl	%edx, %esi
	movl	%esi, %edi
	shrl	$31, %edi
	shrl	$5, %esi
	movsbl	(%ebx), %eax
	subl	$12, %esp
	leal	-16(%ebp), %edx
	movzbl	%cl, %ecx
	pushl	%edx
	leal	-13(%ebp), %edx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	%ecx
	calll	__Z11to_internalhsaPhPs
	addl	$32, %esp
	movzbl	-13(%ebp), %eax
	subl	$4, %esp
	movl	-20(%ebp), %ecx         ## 4-byte Reload
	leal	L_.str.25-L13$pb(%ecx), %ecx
	movzbl	16(%ebp), %edx
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	calll	__ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
	leal	1(%esi,%edi), %esi
	movzwl	%si, %eax
	cmpl	$16, %eax
	jae	LBB13_21
## BB#22:
	movswl	6(%ebx), %ecx
	movl	%ecx, %eax
	movl	$1374389535, %edx       ## imm = 0x51EB851F
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	shrl	$5, %edx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ecx
	imull	$100, %esi, %eax
	addl	%ecx, %eax
	movw	%ax, 6(%ebx)
	movzwl	%ax, %eax
	cmpl	$1516, %eax             ## imm = 0x5EC
	movl	-24(%ebp), %eax         ## 4-byte Reload
	jae	LBB13_23
## BB#24:
	movw	$1, 6(%ebx,%eax,2)
LBB13_28:
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB13_2:
	movl	-20(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.15-L13$pb(%edx), %eax
	leal	L_.str-L13$pb(%edx), %ecx
	leal	L___func__._Z10apply_moveP10game_statePK9game_moveb-L13$pb(%edx), %edx
	pushl	%eax
	pushl	$358                    ## imm = 0x166
	jmp	LBB13_3
LBB13_5:
	movl	-20(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.19-L13$pb(%edx), %eax
	leal	L_.str-L13$pb(%edx), %ecx
	leal	L___func__._Z10apply_moveP10game_statePK9game_moveb-L13$pb(%edx), %edx
	pushl	%eax
	pushl	$368                    ## imm = 0x170
	jmp	LBB13_3
LBB13_7:
	movl	-20(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.21-L13$pb(%edx), %eax
	leal	L_.str-L13$pb(%edx), %ecx
	leal	L___func__._Z10apply_moveP10game_statePK9game_moveb-L13$pb(%edx), %edx
	pushl	%eax
	pushl	$369                    ## imm = 0x171
	jmp	LBB13_3
LBB13_9:
	movl	-20(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.22-L13$pb(%edx), %eax
	leal	L_.str-L13$pb(%edx), %ecx
	leal	L___func__._Z10apply_moveP10game_statePK9game_moveb-L13$pb(%edx), %edx
	pushl	%eax
	pushl	$370                    ## imm = 0x172
	jmp	LBB13_3
LBB13_29:
	movl	-20(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.24-L13$pb(%edx), %eax
	leal	L_.str-L13$pb(%edx), %ecx
	leal	L___func__._Z10apply_moveP10game_statePK9game_moveb-L13$pb(%edx), %edx
	pushl	%eax
	pushl	$371                    ## imm = 0x173
	jmp	LBB13_3
LBB13_14:
	movl	-20(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.45-L13$pb(%edx), %eax
	leal	L_.str.43-L13$pb(%edx), %ecx
	leal	L___func__._Z13set_lower_barPst-L13$pb(%edx), %edx
	pushl	%eax
	pushl	$97
	jmp	LBB13_3
LBB13_16:
	movl	-20(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.46-L13$pb(%edx), %eax
	leal	L_.str.43-L13$pb(%edx), %ecx
	leal	L___func__._Z13set_lower_barPst-L13$pb(%edx), %edx
	pushl	%eax
	pushl	$99
	jmp	LBB13_3
LBB13_21:
	movl	-20(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.47-L13$pb(%edx), %eax
	leal	L_.str.43-L13$pb(%edx), %ecx
	leal	L___func__._Z14set_higher_barPst-L13$pb(%edx), %edx
	pushl	%eax
	pushl	$107
	jmp	LBB13_3
LBB13_23:
	movl	-20(%ebp), %edx         ## 4-byte Reload
	leal	L_.str.46-L13$pb(%edx), %eax
	leal	L_.str.43-L13$pb(%edx), %ecx
	leal	L___func__._Z14set_higher_barPst-L13$pb(%edx), %edx
	pushl	%eax
	pushl	$109
LBB13_3:
	pushl	%ecx
	pushl	%edx
	calll	___assert_rtn
	addl	$16, %esp
	.cfi_endproc

	.globl	__Z12valid_mmovesRK10game_state
__Z12valid_mmovesRK10game_state:        ## @_Z12valid_mmovesRK10game_state
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, L___gxx_personality_v0$non_lazy_ptr
	.cfi_lsda 16, Lexception0
## BB#0:
	pushl	%ebp
Ltmp130:
	.cfi_def_cfa_offset 8
Ltmp131:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp132:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$172, %esp
Ltmp133:
	.cfi_offset %esi, -20
Ltmp134:
	.cfi_offset %edi, -16
Ltmp135:
	.cfi_offset %ebx, -12
	calll	L14$pb
L14$pb:
	popl	%eax
	movl	%eax, -148(%ebp)        ## 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -136(%ebp)        ## 4-byte Spill
	movl	12(%ebp), %ecx
	movl	$0, (%eax)
	movzwl	2(%ecx), %eax
	movl	%eax, -140(%ebp)        ## 4-byte Spill
	movzwl	4(%ecx), %ecx
	movl	%ecx, -144(%ebp)        ## 4-byte Spill
	cmpl	%ecx, %eax
	sete	%bl
	movl	$0, -116(%ebp)          ## 4-byte Folded Spill
Ltmp72:
	xorl	%edi, %edi
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	calll	__Z21initialize_multi_moveP10multi_move
Ltmp73:
## BB#1:
Ltmp74:
	xorl	%edi, %edi
	movl	$24, (%esp)
	calll	__Znwm
Ltmp75:
## BB#2:
	movzbl	%bl, %ecx
	leal	2(%ecx,%ecx), %edx
	movl	%edx, -132(%ebp)        ## 4-byte Spill
	movw	-24(%ebp), %cx
	movw	%cx, 20(%eax)
	movsd	-40(%ebp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-32(%ebp), %xmm1        ## xmm1 = mem[0],zero
	movsd	%xmm1, 12(%eax)
	movsd	%xmm0, 4(%eax)
	movl	$0, (%eax)
	movl	$0, -120(%ebp)          ## 4-byte Folded Spill
	xorl	%edi, %edi
LBB14_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_24 Depth 2
                                        ##       Child Loop BB14_45 Depth 3
                                        ##       Child Loop BB14_29 Depth 3
                                        ##         Child Loop BB14_30 Depth 4
                                        ##       Child Loop BB14_38 Depth 3
                                        ##       Child Loop BB14_57 Depth 3
	testl	%eax, %eax
	je	LBB14_4
## BB#23:                               ##   in Loop: Header=BB14_3 Depth=1
	xorl	%esi, %esi
	movl	%eax, %ecx
LBB14_24:                               ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB14_45 Depth 3
                                        ##       Child Loop BB14_29 Depth 3
                                        ##         Child Loop BB14_30 Depth 4
                                        ##       Child Loop BB14_38 Depth 3
                                        ##       Child Loop BB14_57 Depth 3
	movl	%esi, -124(%ebp)        ## 4-byte Spill
	movl	%ecx, %eax
	movw	20(%eax), %cx
	movw	%cx, -24(%ebp)
	movsd	4(%eax), %xmm0          ## xmm0 = mem[0],zero
	movsd	12(%eax), %xmm1         ## xmm1 = mem[0],zero
	movsd	%xmm1, -32(%ebp)
	movsd	%xmm0, -40(%ebp)
	movl	(%eax), %ecx
	movl	%ecx, -128(%ebp)        ## 4-byte Spill
	movl	%eax, (%esp)
	calll	__ZdlPv
	movzbl	-40(%ebp), %ebx
	cmpl	-120(%ebp), %ebx        ## 4-byte Folded Reload
	jne	LBB14_25
LBB14_26:                               ##   in Loop: Header=BB14_24 Depth=2
Ltmp79:
	movl	$24, (%esp)
	calll	__Znwm
Ltmp80:
## BB#27:                               ##   in Loop: Header=BB14_24 Depth=2
	movw	-24(%ebp), %cx
	movw	%cx, 20(%eax)
	movsd	-40(%ebp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-32(%ebp), %xmm1        ## xmm1 = mem[0],zero
	movsd	%xmm1, 12(%eax)
	movsd	%xmm0, 4(%eax)
	movl	8(%ebp), %ecx
	movl	%ecx, %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, (%edx)
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	movw	56(%ecx), %ax
	movw	%ax, -48(%ebp)
	movsd	48(%ecx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -56(%ebp)
	movsd	40(%ecx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -64(%ebp)
	movsd	32(%ecx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -72(%ebp)
	movsd	24(%ecx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -80(%ebp)
	movsd	16(%ecx), %xmm0         ## xmm0 = mem[0],zero
	movsd	%xmm0, -88(%ebp)
	movsd	(%ecx), %xmm0           ## xmm0 = mem[0],zero
	movsd	8(%ecx), %xmm1          ## xmm1 = mem[0],zero
	movsd	%xmm1, -96(%ebp)
	movsd	%xmm0, -104(%ebp)
	xorl	%esi, %esi
	testb	%bl, %bl
	leal	-38(%ebp), %ebx
	je	LBB14_28
LBB14_45:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_24 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
Ltmp82:
	movl	%ebx, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	__Z10check_movePK10game_statePK9game_moveb
Ltmp83:
## BB#46:                               ##   in Loop: Header=BB14_45 Depth=3
	testb	%al, %al
	je	LBB14_47
## BB#53:                               ##   in Loop: Header=BB14_45 Depth=3
Ltmp87:
	movl	%ebx, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	__Z10apply_moveP10game_statePK9game_moveb
Ltmp88:
## BB#54:                               ##   in Loop: Header=BB14_45 Depth=3
	incl	%esi
	movzbl	-40(%ebp), %eax
	addl	$4, %ebx
	cmpl	%eax, %esi
	jb	LBB14_45
LBB14_28:                               ##   in Loop: Header=BB14_24 Depth=2
	movzwl	-100(%ebp), %eax
	movzwl	-102(%ebp), %ecx
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	movl	$2, %ecx
	subl	%eax, %ecx
	movw	$0, -16(%ebp)
	movl	$0, -112(%ebp)          ## 4-byte Folded Spill
	xorl	%ebx, %ebx
	movl	$0, -116(%ebp)          ## 4-byte Folded Spill
	movl	$0, -108(%ebp)          ## 4-byte Folded Spill
LBB14_29:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_24 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB14_30 Depth 4
	testl	%ecx, %ecx
	movl	$0, %esi
	je	LBB14_36
LBB14_30:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_24 Depth=2
                                        ##       Parent Loop BB14_29 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	%ecx, %ebx
	movw	-102(%ebp,%esi,2), %ax
	movw	%ax, -14(%ebp)
Ltmp90:
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	__Z10check_movePK10game_statePK9game_moveb
Ltmp91:
## BB#31:                               ##   in Loop: Header=BB14_30 Depth=4
	testb	%al, %al
	je	LBB14_34
## BB#32:                               ##   in Loop: Header=BB14_30 Depth=4
Ltmp92:
	movl	$8, (%esp)
	calll	__Znwm
Ltmp93:
## BB#33:                               ##   in Loop: Header=BB14_30 Depth=4
	movl	-16(%ebp), %ecx
	movl	%eax, -112(%ebp)        ## 4-byte Spill
	movl	%ecx, 4(%eax)
	movl	-108(%ebp), %ecx        ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	%eax, -116(%ebp)        ## 4-byte Spill
	movl	%eax, -108(%ebp)        ## 4-byte Spill
LBB14_34:                               ##   in Loop: Header=BB14_30 Depth=4
	movl	%ebx, %ecx
	incl	%esi
	cmpl	%ecx, %esi
	jb	LBB14_30
## BB#35:                               ##   in Loop: Header=BB14_29 Depth=3
	movzwl	-16(%ebp), %ebx
LBB14_36:                               ##   in Loop: Header=BB14_29 Depth=3
	incl	%ebx
	movw	%bx, -16(%ebp)
	movzwl	%bx, %eax
	cmpl	$25, %eax
	jb	LBB14_29
## BB#37:                               ##   in Loop: Header=BB14_24 Depth=2
	testl	%edi, %edi
	je	LBB14_39
LBB14_38:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_24 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	(%edi), %esi
	movl	%edi, (%esp)
	calll	__ZdlPv
	testl	%esi, %esi
	movl	%esi, %edi
	jne	LBB14_38
LBB14_39:                               ##   in Loop: Header=BB14_24 Depth=2
	movb	-40(%ebp), %al
	incb	%al
	movb	%al, -40(%ebp)
	movl	-112(%ebp), %ecx        ## 4-byte Reload
	testl	%ecx, %ecx
	movl	8(%ebp), %ebx
	je	LBB14_40
## BB#55:                               ##   in Loop: Header=BB14_24 Depth=2
	movzbl	%al, %eax
	cmpl	$4, %eax
	movl	%ecx, %esi
	jbe	LBB14_57
	jmp	LBB14_56
LBB14_40:                               ##   in Loop: Header=BB14_24 Depth=2
	movl	-124(%ebp), %eax        ## 4-byte Reload
	jmp	LBB14_41
LBB14_25:                               ##   in Loop: Header=BB14_24 Depth=2
Ltmp76:
	movl	-148(%ebp), %ecx        ## 4-byte Reload
	leal	L_.str.28-L14$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L14$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z12valid_mmovesRK10game_state-L14$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$496, 8(%esp)           ## imm = 0x1F0
	calll	___assert_rtn
Ltmp77:
	jmp	LBB14_26
LBB14_41:                               ##   in Loop: Header=BB14_24 Depth=2
	movl	%ebx, -136(%ebp)        ## 4-byte Spill
	movl	-128(%ebp), %ecx        ## 4-byte Reload
	testl	%ecx, %ecx
	movl	-112(%ebp), %edi        ## 4-byte Reload
	movl	%eax, %esi
	movl	-132(%ebp), %edx        ## 4-byte Reload
	jne	LBB14_24
	jmp	LBB14_42
LBB14_56:                               ##   in Loop: Header=BB14_24 Depth=2
Ltmp102:
	movl	-148(%ebp), %ecx        ## 4-byte Reload
	leal	L_.str.31-L14$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L14$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z12valid_mmovesRK10game_state-L14$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$515, 8(%esp)           ## imm = 0x203
	calll	___assert_rtn
Ltmp103:
LBB14_57:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_24 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	leal	4(%esi), %edi
Ltmp95:
	movl	%edi, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	__Z10check_movePK10game_statePK9game_moveb
Ltmp96:
## BB#58:                               ##   in Loop: Header=BB14_57 Depth=3
	testb	%al, %al
	je	LBB14_59
LBB14_60:                               ##   in Loop: Header=BB14_57 Depth=3
	movl	(%edi), %eax
	movl	-120(%ebp), %ecx        ## 4-byte Reload
	movl	%eax, -38(%ebp,%ecx,4)
Ltmp99:
	movl	$24, (%esp)
	calll	__Znwm
Ltmp100:
## BB#61:                               ##   in Loop: Header=BB14_57 Depth=3
	movw	-24(%ebp), %cx
	movw	%cx, 20(%eax)
	movsd	-40(%ebp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-32(%ebp), %xmm1        ## xmm1 = mem[0],zero
	movsd	%xmm1, 12(%eax)
	movsd	%xmm0, 4(%eax)
	movl	-124(%ebp), %ecx        ## 4-byte Reload
	movl	%ecx, (%eax)
	movl	(%esi), %esi
	testl	%esi, %esi
	je	LBB14_41
## BB#62:                               ##   in Loop: Header=BB14_57 Depth=3
	movzbl	-40(%ebp), %ecx
	cmpl	$4, %ecx
	movl	%eax, -124(%ebp)        ## 4-byte Spill
	jbe	LBB14_57
	jmp	LBB14_56
LBB14_59:                               ##   in Loop: Header=BB14_57 Depth=3
Ltmp97:
	movl	-148(%ebp), %ecx        ## 4-byte Reload
	leal	L_.str.32-L14$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L14$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z12valid_mmovesRK10game_state-L14$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$516, 8(%esp)           ## imm = 0x204
	calll	___assert_rtn
Ltmp98:
	jmp	LBB14_60
LBB14_4:                                ##   in Loop: Header=BB14_3 Depth=1
	movl	%edi, -112(%ebp)        ## 4-byte Spill
	xorl	%eax, %eax
LBB14_42:                               ##   in Loop: Header=BB14_3 Depth=1
	movl	-120(%ebp), %ecx        ## 4-byte Reload
	incl	%ecx
	movl	%ecx, -120(%ebp)        ## 4-byte Spill
	cmpl	%edx, %ecx
	movl	-112(%ebp), %edi        ## 4-byte Reload
	jb	LBB14_3
## BB#5:
	movl	%edx, -132(%ebp)        ## 4-byte Spill
	testl	%eax, %eax
	movl	%eax, -116(%ebp)        ## 4-byte Spill
	je	LBB14_66
## BB#6:
Ltmp105:
	movl	$24, (%esp)
	calll	__Znwm
	movl	%eax, %esi
Ltmp106:
## BB#7:
	movl	-116(%ebp), %ecx        ## 4-byte Reload
	movw	20(%ecx), %ax
	movw	%ax, 20(%esi)
	movsd	4(%ecx), %xmm0          ## xmm0 = mem[0],zero
	movsd	12(%ecx), %xmm1         ## xmm1 = mem[0],zero
	movsd	%xmm1, 12(%esi)
	movsd	%xmm0, 4(%esi)
	movl	(%ecx), %edi
	testl	%edi, %edi
	je	LBB14_8
## BB#9:
	movl	%esi, %ebx
LBB14_10:                               ## =>This Inner Loop Header: Depth=1
Ltmp107:
	movl	$24, (%esp)
	calll	__Znwm
Ltmp108:
## BB#11:                               ##   in Loop: Header=BB14_10 Depth=1
	movw	20(%edi), %cx
	movw	%cx, 20(%eax)
	movsd	4(%edi), %xmm0          ## xmm0 = mem[0],zero
	movsd	12(%edi), %xmm1         ## xmm1 = mem[0],zero
	movsd	%xmm1, 12(%eax)
	movsd	%xmm0, 4(%eax)
	movl	%eax, (%ebx)
	movl	(%edi), %edi
	testl	%edi, %edi
	movl	%eax, %ebx
	jne	LBB14_10
	jmp	LBB14_12
LBB14_43:
Ltmp94:
	movl	%eax, -108(%ebp)        ## 4-byte Spill
	movl	-116(%ebp), %eax        ## 4-byte Reload
	testl	%eax, %eax
	je	LBB14_52
LBB14_44:                               ## =>This Inner Loop Header: Depth=1
	movl	(%eax), %esi
	movl	%eax, (%esp)
	calll	__ZdlPv
	testl	%esi, %esi
	movl	%esi, %eax
	jne	LBB14_44
	jmp	LBB14_52
LBB14_49:
Ltmp89:
LBB14_51:
	movl	%eax, -108(%ebp)        ## 4-byte Spill
LBB14_52:
	movl	8(%ebp), %ebx
LBB14_158:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	LBB14_160
LBB14_159:                              ## =>This Inner Loop Header: Depth=1
	movl	(%eax), %esi
	movl	%eax, (%esp)
	calll	__ZdlPv
	testl	%esi, %esi
	movl	%esi, %eax
	jne	LBB14_159
LBB14_160:
	movl	$0, (%ebx)
	movl	-124(%ebp), %eax        ## 4-byte Reload
	testl	%eax, %eax
	je	LBB14_162
LBB14_161:                              ## =>This Inner Loop Header: Depth=1
	movl	(%eax), %esi
	movl	%eax, (%esp)
	calll	__ZdlPv
	testl	%esi, %esi
	movl	%esi, %eax
	jne	LBB14_161
LBB14_162:
	movl	-128(%ebp), %eax        ## 4-byte Reload
	testl	%eax, %eax
	je	LBB14_164
LBB14_163:                              ## =>This Inner Loop Header: Depth=1
	movl	(%eax), %esi
	movl	%eax, (%esp)
	calll	__ZdlPv
	testl	%esi, %esi
	movl	%esi, %eax
	jne	LBB14_163
LBB14_164:
	testl	%edi, %edi
	je	LBB14_166
LBB14_165:                              ## =>This Inner Loop Header: Depth=1
	movl	(%edi), %esi
	movl	%edi, (%esp)
	calll	__ZdlPv
	testl	%esi, %esi
	movl	%esi, %edi
	jne	LBB14_165
LBB14_166:
	movl	-108(%ebp), %eax        ## 4-byte Reload
	movl	%eax, (%esp)
	calll	__Unwind_Resume
LBB14_21:
Ltmp81:
	jmp	LBB14_51
LBB14_63:
Ltmp101:
LBB14_65:
	movl	%eax, -108(%ebp)        ## 4-byte Spill
	movl	-112(%ebp), %edi        ## 4-byte Reload
	jmp	LBB14_158
LBB14_66:
	movl	8(%ebp), %edx
	movl	(%edx), %esi
	testl	%esi, %esi
	jne	LBB14_67
	jmp	LBB14_84
LBB14_8:
	movl	%esi, %eax
LBB14_12:
	movl	8(%ebp), %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%esi, (%edx)
LBB14_67:
	movl	%edx, -136(%ebp)        ## 4-byte Spill
	movl	%edx, %eax
	movl	%edx, %ebx
	movl	%edx, %edi
LBB14_68:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_70 Depth 2
                                        ##     Child Loop BB14_72 Depth 2
                                        ##     Child Loop BB14_79 Depth 2
	movl	%eax, -120(%ebp)        ## 4-byte Spill
	movl	%edi, -108(%ebp)        ## 4-byte Spill
	addl	$4, %esi
Ltmp116:
	movl	$0, (%esp)
	movl	12(%ebp), %ecx
	movl	%esi, %edx
	calll	__ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
Ltmp117:
## BB#69:                               ##   in Loop: Header=BB14_68 Depth=1
	movl	$2, %ecx
	testb	%al, %al
	movl	%ebx, %edi
	je	LBB14_70
## BB#81:                               ##   in Loop: Header=BB14_68 Depth=1
	movl	-108(%ebp), %eax        ## 4-byte Reload
	movl	(%eax), %edi
	jmp	LBB14_82
LBB14_70:                               ##   Parent Loop BB14_68 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	decl	%ecx
	jo	LBB14_168
## BB#71:                               ##   in Loop: Header=BB14_70 Depth=2
	movl	(%edi), %edi
	testl	%ecx, %ecx
	jg	LBB14_70
	jmp	LBB14_72
LBB14_75:                               ##   in Loop: Header=BB14_72 Depth=2
	movl	(%edi), %edi
LBB14_72:                               ##   Parent Loop BB14_68 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testl	%edi, %edi
	je	LBB14_76
## BB#73:                               ##   in Loop: Header=BB14_72 Depth=2
	leal	4(%edi), %edx
Ltmp119:
	movl	$0, (%esp)
	movl	12(%ebp), %ecx
	calll	__ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
Ltmp120:
## BB#74:                               ##   in Loop: Header=BB14_72 Depth=2
	testb	%al, %al
	je	LBB14_75
LBB14_76:                               ##   in Loop: Header=BB14_68 Depth=1
	cmpl	%edi, %ebx
	je	LBB14_80
## BB#77:                               ##   in Loop: Header=BB14_68 Depth=1
	movl	-120(%ebp), %eax        ## 4-byte Reload
	movl	(%eax), %eax
	cmpl	%edi, %eax
	je	LBB14_80
## BB#78:                               ##   in Loop: Header=BB14_68 Depth=1
	movl	-108(%ebp), %ecx        ## 4-byte Reload
	movl	%edi, (%ecx)
LBB14_79:                               ##   Parent Loop BB14_68 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%eax), %esi
	movl	%eax, (%esp)
	calll	__ZdlPv
	cmpl	%edi, %esi
	movl	%esi, %eax
	jne	LBB14_79
LBB14_80:                               ##   in Loop: Header=BB14_68 Depth=1
	testl	%edi, %edi
	je	LBB14_83
LBB14_82:                               ##   in Loop: Header=BB14_68 Depth=1
	movl	(%edi), %esi
	testl	%esi, %esi
	movl	%edi, %eax
	movl	%edi, %ebx
	jne	LBB14_68
LBB14_83:
	movl	-136(%ebp), %edx        ## 4-byte Reload
	movl	(%edx), %eax
	testl	%eax, %eax
	je	LBB14_84
LBB14_85:
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	movl	%eax, -120(%ebp)        ## 4-byte Spill
	movl	%eax, -108(%ebp)        ## 4-byte Spill
	movl	-132(%ebp), %esi        ## 4-byte Reload
	je	LBB14_97
## BB#86:
	movl	%esi, %edi
	movzbl	4(%eax), %edx
	movzbl	4(%ecx), %esi
	cmpl	%edx, %esi
	movl	%eax, %edx
	cmovbl	%ecx, %edx
	movl	%edx, -120(%ebp)        ## 4-byte Spill
	movl	(%ecx), %edx
	cmovbl	%eax, %ecx
	testl	%edx, %edx
	je	LBB14_87
## BB#88:
	movl	%ecx, -108(%ebp)        ## 4-byte Spill
	movl	%edi, %esi
LBB14_89:                               ## =>This Inner Loop Header: Depth=1
	movl	(%edx), %edi
	testl	%edi, %edi
	je	LBB14_90
## BB#92:                               ##   in Loop: Header=BB14_89 Depth=1
	movzbl	4(%edi), %ecx
	movl	%ecx, -128(%ebp)        ## 4-byte Spill
	movzbl	4(%edx), %ecx
	movl	%ecx, -152(%ebp)        ## 4-byte Spill
	movl	-120(%ebp), %esi        ## 4-byte Reload
	movb	4(%esi), %bl
	movb	%bl, -124(%ebp)         ## 1-byte Spill
	movl	-128(%ebp), %ebx        ## 4-byte Reload
	cmpl	%ecx, %ebx
	jae	LBB14_95
## BB#93:                               ##   in Loop: Header=BB14_89 Depth=1
	movzbl	-124(%ebp), %ecx        ## 1-byte Folded Reload
	movl	%ecx, -124(%ebp)        ## 4-byte Spill
	movzbl	%bl, %ebx
	cmpl	-124(%ebp), %ebx        ## 4-byte Folded Reload
	cmovbl	%edi, %esi
	movl	%esi, -120(%ebp)        ## 4-byte Spill
	movl	-108(%ebp), %ebx        ## 4-byte Reload
	movzbl	4(%ebx), %esi
	movl	-152(%ebp), %ecx        ## 4-byte Reload
	movzbl	%cl, %ecx
	cmpl	%esi, %ecx
	cmovael	%edx, %ebx
	movl	%ebx, -108(%ebp)        ## 4-byte Spill
	jmp	LBB14_94
LBB14_95:                               ##   in Loop: Header=BB14_89 Depth=1
	movzbl	-124(%ebp), %ecx        ## 1-byte Folded Reload
	movl	%ecx, -124(%ebp)        ## 4-byte Spill
	movl	-152(%ebp), %ecx        ## 4-byte Reload
	movzbl	%cl, %ecx
	cmpl	-124(%ebp), %ecx        ## 4-byte Folded Reload
	cmovbl	%edx, %esi
	movl	%esi, -120(%ebp)        ## 4-byte Spill
	movl	-108(%ebp), %esi        ## 4-byte Reload
	movzbl	4(%esi), %ecx
	movzbl	%bl, %edx
	cmpl	%ecx, %edx
	cmovael	%edi, %esi
	movl	%esi, -108(%ebp)        ## 4-byte Spill
LBB14_94:                               ##   in Loop: Header=BB14_89 Depth=1
	movl	(%edi), %edx
	testl	%edx, %edx
	movl	-132(%ebp), %esi        ## 4-byte Reload
	jne	LBB14_89
	jmp	LBB14_97
LBB14_17:
Ltmp121:
	jmp	LBB14_19
LBB14_13:
Ltmp109:
	movl	%eax, (%esp)
	calll	___cxa_begin_catch
LBB14_14:                               ## =>This Inner Loop Header: Depth=1
	movl	(%esi), %edi
	movl	%esi, (%esp)
	calll	__ZdlPv
	testl	%edi, %edi
	movl	%edi, %esi
	jne	LBB14_14
## BB#15:
Ltmp110:
	calll	___cxa_rethrow
Ltmp111:
## BB#16:
LBB14_167:
Ltmp118:
LBB14_19:
	movl	%eax, -108(%ebp)        ## 4-byte Spill
LBB14_20:
	movl	$0, -124(%ebp)          ## 4-byte Folded Spill
	movl	-116(%ebp), %eax        ## 4-byte Reload
	movl	%eax, -128(%ebp)        ## 4-byte Spill
	movl	-112(%ebp), %edi        ## 4-byte Reload
	movl	-136(%ebp), %ebx        ## 4-byte Reload
	jmp	LBB14_158
LBB14_87:
	movl	%ecx, -108(%ebp)        ## 4-byte Spill
	movl	%edi, %esi
	jmp	LBB14_97
LBB14_90:
	movzbl	4(%edx), %ecx
	movl	-120(%ebp), %edi        ## 4-byte Reload
	movzbl	4(%edi), %edi
	cmpl	%edi, %ecx
	jae	LBB14_96
## BB#91:
	movl	%edx, -120(%ebp)        ## 4-byte Spill
	jmp	LBB14_97
LBB14_96:
	movl	-108(%ebp), %ebx        ## 4-byte Reload
	movzbl	4(%ebx), %edi
	movzbl	%cl, %ecx
	cmpl	%edi, %ecx
	cmovael	%edx, %ebx
	movl	%ebx, -108(%ebp)        ## 4-byte Spill
LBB14_97:
	movl	-108(%ebp), %ecx        ## 4-byte Reload
	movzbl	4(%ecx), %ebx
	movl	-120(%ebp), %ecx        ## 4-byte Reload
	movzbl	4(%ecx), %ecx
	cmpl	%ebx, %ecx
	jne	LBB14_99
## BB#98:
	movl	-136(%ebp), %edi        ## 4-byte Reload
	jmp	LBB14_112
LBB14_99:
	movl	-136(%ebp), %ecx        ## 4-byte Reload
	movl	%ecx, %edx
	jmp	LBB14_100
LBB14_121:                              ##   in Loop: Header=BB14_100 Depth=1
	movl	-108(%ebp), %ecx        ## 4-byte Reload
	movb	4(%ecx), %bl
	movl	%edi, %edx
	movl	%edi, %ecx
LBB14_100:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_101 Depth 2
                                        ##     Child Loop BB14_103 Depth 2
                                        ##     Child Loop BB14_109 Depth 2
	movl	$2, %esi
	movzbl	%bl, %ebx
	movzbl	4(%eax), %edi
	cmpl	%ebx, %edi
	movl	%edx, %edi
	jae	LBB14_119
LBB14_101:                              ##   Parent Loop BB14_100 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	decl	%esi
	jo	LBB14_168
## BB#102:                              ##   in Loop: Header=BB14_101 Depth=2
	movl	(%edi), %edi
	testl	%esi, %esi
	jg	LBB14_101
	jmp	LBB14_103
LBB14_105:                              ##   in Loop: Header=BB14_103 Depth=2
	movl	(%edi), %edi
LBB14_103:                              ##   Parent Loop BB14_100 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testl	%edi, %edi
	je	LBB14_106
## BB#104:                              ##   in Loop: Header=BB14_103 Depth=2
	movzbl	4(%edi), %esi
	cmpl	%ebx, %esi
	jb	LBB14_105
LBB14_106:                              ##   in Loop: Header=BB14_100 Depth=1
	cmpl	%edi, %edx
	je	LBB14_110
## BB#107:                              ##   in Loop: Header=BB14_100 Depth=1
	cmpl	%edi, %eax
	je	LBB14_110
## BB#108:                              ##   in Loop: Header=BB14_100 Depth=1
	movl	%edi, (%ecx)
LBB14_109:                              ##   Parent Loop BB14_100 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%eax), %esi
	movl	%eax, (%esp)
	calll	__ZdlPv
	cmpl	%edi, %esi
	movl	%esi, %eax
	jne	LBB14_109
LBB14_110:                              ##   in Loop: Header=BB14_100 Depth=1
	testl	%edi, %edi
	jne	LBB14_120
	jmp	LBB14_111
LBB14_119:                              ##   in Loop: Header=BB14_100 Depth=1
	movl	%eax, %edi
LBB14_120:                              ##   in Loop: Header=BB14_100 Depth=1
	movl	(%edi), %eax
	testl	%eax, %eax
	jne	LBB14_121
LBB14_111:
	movl	-136(%ebp), %edi        ## 4-byte Reload
	movl	(%edi), %eax
	movl	-132(%ebp), %esi        ## 4-byte Reload
LBB14_112:
	testl	%eax, %eax
	je	LBB14_113
LBB14_114:
	movl	-144(%ebp), %ecx        ## 4-byte Reload
	movzwl	%cx, %ecx
	movl	-140(%ebp), %edx        ## 4-byte Reload
	movzwl	%dx, %edx
	cmpl	%ecx, %edx
	je	LBB14_152
## BB#115:
	movl	12(%ebp), %ecx
	movzwl	2(%ecx), %edx
	movzwl	4(%ecx), %ecx
	cmpl	%ecx, %edx
	cmovaew	%dx, %cx
	movl	-108(%ebp), %edx        ## 4-byte Reload
	movzbl	4(%edx), %edx
	cmpl	%esi, %edx
	jae	LBB14_152
## BB#116:
	movzwl	%cx, %esi
	movl	%eax, %ecx
LBB14_117:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_123 Depth 2
	movzbl	4(%ecx), %edx
	testl	%edx, %edx
	je	LBB14_129
## BB#118:                              ##   in Loop: Header=BB14_117 Depth=1
	xorl	%edi, %edi
LBB14_123:                              ##   Parent Loop BB14_117 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzwl	8(%ecx,%edi,4), %ebx
	cmpl	%esi, %ebx
	je	LBB14_124
## BB#122:                              ##   in Loop: Header=BB14_123 Depth=2
	incl	%edi
	cmpl	%edx, %edi
	jb	LBB14_123
LBB14_129:                              ##   in Loop: Header=BB14_117 Depth=1
	movl	(%ecx), %ecx
	testl	%ecx, %ecx
	jne	LBB14_117
## BB#130:
	movl	-136(%ebp), %edi        ## 4-byte Reload
	jmp	LBB14_150
LBB14_124:
	movl	-136(%ebp), %ecx        ## 4-byte Reload
	movl	%ecx, %edx
	movl	%ecx, %edi
LBB14_125:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_134 Depth 2
                                        ##     Child Loop BB14_127 Depth 2
                                        ##     Child Loop BB14_138 Depth 2
                                        ##       Child Loop BB14_142 Depth 3
                                        ##     Child Loop BB14_146 Depth 2
	movl	%edi, -120(%ebp)        ## 4-byte Spill
	movzbl	4(%eax), %edi
	testl	%edi, %edi
	movl	$2, %ebx
	je	LBB14_126
## BB#133:                              ##   in Loop: Header=BB14_125 Depth=1
	movl	%edx, -108(%ebp)        ## 4-byte Spill
	xorl	%ecx, %ecx
LBB14_134:                              ##   Parent Loop BB14_125 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzwl	8(%eax,%ecx,4), %edx
	cmpl	%esi, %edx
	je	LBB14_135
## BB#131:                              ##   in Loop: Header=BB14_134 Depth=2
	incl	%ecx
	cmpl	%edi, %ecx
	jb	LBB14_134
## BB#132:                              ##   in Loop: Header=BB14_125 Depth=1
	movl	-108(%ebp), %edx        ## 4-byte Reload
LBB14_126:                              ##   in Loop: Header=BB14_125 Depth=1
	movl	%edx, %edi
LBB14_127:                              ##   Parent Loop BB14_125 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	decl	%ebx
	jo	LBB14_128
## BB#136:                              ##   in Loop: Header=BB14_127 Depth=2
	movl	(%edi), %edi
	testl	%ebx, %ebx
	jg	LBB14_127
## BB#137:                              ##   in Loop: Header=BB14_125 Depth=1
	movl	%edx, -108(%ebp)        ## 4-byte Spill
	jmp	LBB14_138
LBB14_169:                              ##   in Loop: Header=BB14_138 Depth=2
	movl	(%edi), %edi
LBB14_138:                              ##   Parent Loop BB14_125 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB14_142 Depth 3
	testl	%edi, %edi
	je	LBB14_143
## BB#139:                              ##   in Loop: Header=BB14_138 Depth=2
	movzbl	4(%edi), %ebx
	testl	%ebx, %ebx
	je	LBB14_169
## BB#140:                              ##   in Loop: Header=BB14_138 Depth=2
	xorl	%ecx, %ecx
LBB14_142:                              ##   Parent Loop BB14_125 Depth=1
                                        ##     Parent Loop BB14_138 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movzwl	8(%edi,%ecx,4), %edx
	cmpl	%esi, %edx
	je	LBB14_143
## BB#141:                              ##   in Loop: Header=BB14_142 Depth=3
	incl	%ecx
	cmpl	%ebx, %ecx
	jb	LBB14_142
	jmp	LBB14_169
LBB14_143:                              ##   in Loop: Header=BB14_125 Depth=1
	cmpl	%edi, -108(%ebp)        ## 4-byte Folded Reload
	je	LBB14_147
## BB#144:                              ##   in Loop: Header=BB14_125 Depth=1
	cmpl	%edi, %eax
	je	LBB14_147
## BB#145:                              ##   in Loop: Header=BB14_125 Depth=1
	movl	-120(%ebp), %ecx        ## 4-byte Reload
	movl	%edi, (%ecx)
LBB14_146:                              ##   Parent Loop BB14_125 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%eax), %ebx
	movl	%eax, (%esp)
	calll	__ZdlPv
	cmpl	%edi, %ebx
	movl	%ebx, %eax
	jne	LBB14_146
LBB14_147:                              ##   in Loop: Header=BB14_125 Depth=1
	testl	%edi, %edi
	jne	LBB14_148
	jmp	LBB14_149
LBB14_135:                              ##   in Loop: Header=BB14_125 Depth=1
	movl	-120(%ebp), %eax        ## 4-byte Reload
	movl	(%eax), %edi
LBB14_148:                              ##   in Loop: Header=BB14_125 Depth=1
	movl	(%edi), %eax
	testl	%eax, %eax
	movl	%edi, %edx
	jne	LBB14_125
LBB14_149:
	movl	-136(%ebp), %edi        ## 4-byte Reload
	movl	(%edi), %eax
LBB14_150:
	testl	%eax, %eax
	je	LBB14_151
LBB14_152:
	movl	-116(%ebp), %eax        ## 4-byte Reload
	testl	%eax, %eax
	je	LBB14_154
LBB14_153:                              ## =>This Inner Loop Header: Depth=1
	movl	(%eax), %esi
	movl	%eax, (%esp)
	calll	__ZdlPv
	testl	%esi, %esi
	movl	%esi, %eax
	jne	LBB14_153
LBB14_154:
	movl	-112(%ebp), %eax        ## 4-byte Reload
	testl	%eax, %eax
	je	LBB14_156
LBB14_155:                              ## =>This Inner Loop Header: Depth=1
	movl	(%eax), %esi
	movl	%eax, (%esp)
	calll	__ZdlPv
	testl	%esi, %esi
	movl	%esi, %eax
	jne	LBB14_155
LBB14_156:
	movl	%edi, %eax
	addl	$172, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
LBB14_47:
Ltmp84:
	movl	-148(%ebp), %ecx        ## 4-byte Reload
	leal	L_.str.30-L14$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L14$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z12valid_mmovesRK10game_state-L14$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$505, 8(%esp)           ## imm = 0x1F9
	calll	___assert_rtn
Ltmp85:
## BB#48:
LBB14_168:
	ud2
LBB14_128:
	ud2
LBB14_64:
Ltmp104:
	jmp	LBB14_65
LBB14_84:
Ltmp127:
	movl	%edx, -136(%ebp)        ## 4-byte Spill
	movl	-148(%ebp), %ecx        ## 4-byte Reload
	leal	L_.str.33-L14$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L14$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z12valid_mmovesRK10game_state-L14$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$536, 8(%esp)           ## imm = 0x218
	movl	-112(%ebp), %edi        ## 4-byte Reload
	calll	___assert_rtn
Ltmp128:
	jmp	LBB14_85
LBB14_18:
Ltmp129:
	movl	%edi, -112(%ebp)        ## 4-byte Spill
	jmp	LBB14_19
LBB14_170:
Ltmp112:
	movl	%eax, -108(%ebp)        ## 4-byte Spill
Ltmp113:
	calll	___cxa_end_catch
Ltmp114:
	jmp	LBB14_20
LBB14_171:
Ltmp115:
	movl	%eax, (%esp)
	calll	___clang_call_terminate
LBB14_113:
Ltmp124:
	movl	%edi, %esi
	movl	-148(%ebp), %ecx        ## 4-byte Reload
	leal	L_.str.33-L14$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L14$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z12valid_mmovesRK10game_state-L14$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$548, 8(%esp)           ## imm = 0x224
	calll	___assert_rtn
Ltmp125:
	jmp	LBB14_114
LBB14_22:
Ltmp78:
	jmp	LBB14_51
LBB14_151:
Ltmp122:
	movl	%edi, %esi
	movl	-148(%ebp), %ecx        ## 4-byte Reload
	leal	L_.str.33-L14$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L14$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z12valid_mmovesRK10game_state-L14$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$572, 8(%esp)           ## imm = 0x23C
	calll	___assert_rtn
Ltmp123:
	jmp	LBB14_152
LBB14_157:
Ltmp126:
	movl	%eax, -108(%ebp)        ## 4-byte Spill
	movl	$0, -124(%ebp)          ## 4-byte Folded Spill
	movl	-116(%ebp), %eax        ## 4-byte Reload
	movl	%eax, -128(%ebp)        ## 4-byte Spill
	movl	-112(%ebp), %edi        ## 4-byte Reload
	movl	%esi, %ebx
	jmp	LBB14_158
LBB14_50:
Ltmp86:
	jmp	LBB14_51
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table14:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.ascii	"\200\002"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\367\001"              ## Call site table length
Lset0 = Ltmp72-Lfunc_begin0             ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp75-Ltmp72                   ##   Call between Ltmp72 and Ltmp75
	.long	Lset1
Lset2 = Ltmp129-Lfunc_begin0            ##     jumps to Ltmp129
	.long	Lset2
	.byte	0                       ##   On action: cleanup
Lset3 = Ltmp79-Lfunc_begin0             ## >> Call Site 2 <<
	.long	Lset3
Lset4 = Ltmp80-Ltmp79                   ##   Call between Ltmp79 and Ltmp80
	.long	Lset4
Lset5 = Ltmp81-Lfunc_begin0             ##     jumps to Ltmp81
	.long	Lset5
	.byte	0                       ##   On action: cleanup
Lset6 = Ltmp82-Lfunc_begin0             ## >> Call Site 3 <<
	.long	Lset6
Lset7 = Ltmp88-Ltmp82                   ##   Call between Ltmp82 and Ltmp88
	.long	Lset7
Lset8 = Ltmp89-Lfunc_begin0             ##     jumps to Ltmp89
	.long	Lset8
	.byte	0                       ##   On action: cleanup
Lset9 = Ltmp90-Lfunc_begin0             ## >> Call Site 4 <<
	.long	Lset9
Lset10 = Ltmp93-Ltmp90                  ##   Call between Ltmp90 and Ltmp93
	.long	Lset10
Lset11 = Ltmp94-Lfunc_begin0            ##     jumps to Ltmp94
	.long	Lset11
	.byte	0                       ##   On action: cleanup
Lset12 = Ltmp76-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset12
Lset13 = Ltmp77-Ltmp76                  ##   Call between Ltmp76 and Ltmp77
	.long	Lset13
Lset14 = Ltmp78-Lfunc_begin0            ##     jumps to Ltmp78
	.long	Lset14
	.byte	0                       ##   On action: cleanup
Lset15 = Ltmp102-Lfunc_begin0           ## >> Call Site 6 <<
	.long	Lset15
Lset16 = Ltmp103-Ltmp102                ##   Call between Ltmp102 and Ltmp103
	.long	Lset16
Lset17 = Ltmp104-Lfunc_begin0           ##     jumps to Ltmp104
	.long	Lset17
	.byte	0                       ##   On action: cleanup
Lset18 = Ltmp95-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset18
Lset19 = Ltmp100-Ltmp95                 ##   Call between Ltmp95 and Ltmp100
	.long	Lset19
Lset20 = Ltmp101-Lfunc_begin0           ##     jumps to Ltmp101
	.long	Lset20
	.byte	0                       ##   On action: cleanup
Lset21 = Ltmp97-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset21
Lset22 = Ltmp98-Ltmp97                  ##   Call between Ltmp97 and Ltmp98
	.long	Lset22
Lset23 = Ltmp104-Lfunc_begin0           ##     jumps to Ltmp104
	.long	Lset23
	.byte	0                       ##   On action: cleanup
Lset24 = Ltmp105-Lfunc_begin0           ## >> Call Site 9 <<
	.long	Lset24
Lset25 = Ltmp106-Ltmp105                ##   Call between Ltmp105 and Ltmp106
	.long	Lset25
Lset26 = Ltmp129-Lfunc_begin0           ##     jumps to Ltmp129
	.long	Lset26
	.byte	0                       ##   On action: cleanup
Lset27 = Ltmp107-Lfunc_begin0           ## >> Call Site 10 <<
	.long	Lset27
Lset28 = Ltmp108-Ltmp107                ##   Call between Ltmp107 and Ltmp108
	.long	Lset28
Lset29 = Ltmp109-Lfunc_begin0           ##     jumps to Ltmp109
	.long	Lset29
	.byte	1                       ##   On action: 1
Lset30 = Ltmp108-Lfunc_begin0           ## >> Call Site 11 <<
	.long	Lset30
Lset31 = Ltmp116-Ltmp108                ##   Call between Ltmp108 and Ltmp116
	.long	Lset31
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset32 = Ltmp116-Lfunc_begin0           ## >> Call Site 12 <<
	.long	Lset32
Lset33 = Ltmp117-Ltmp116                ##   Call between Ltmp116 and Ltmp117
	.long	Lset33
Lset34 = Ltmp118-Lfunc_begin0           ##     jumps to Ltmp118
	.long	Lset34
	.byte	0                       ##   On action: cleanup
Lset35 = Ltmp119-Lfunc_begin0           ## >> Call Site 13 <<
	.long	Lset35
Lset36 = Ltmp120-Ltmp119                ##   Call between Ltmp119 and Ltmp120
	.long	Lset36
Lset37 = Ltmp121-Lfunc_begin0           ##     jumps to Ltmp121
	.long	Lset37
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp120-Lfunc_begin0           ## >> Call Site 14 <<
	.long	Lset38
Lset39 = Ltmp110-Ltmp120                ##   Call between Ltmp120 and Ltmp110
	.long	Lset39
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset40 = Ltmp110-Lfunc_begin0           ## >> Call Site 15 <<
	.long	Lset40
Lset41 = Ltmp111-Ltmp110                ##   Call between Ltmp110 and Ltmp111
	.long	Lset41
Lset42 = Ltmp112-Lfunc_begin0           ##     jumps to Ltmp112
	.long	Lset42
	.byte	0                       ##   On action: cleanup
Lset43 = Ltmp84-Lfunc_begin0            ## >> Call Site 16 <<
	.long	Lset43
Lset44 = Ltmp85-Ltmp84                  ##   Call between Ltmp84 and Ltmp85
	.long	Lset44
Lset45 = Ltmp86-Lfunc_begin0            ##     jumps to Ltmp86
	.long	Lset45
	.byte	0                       ##   On action: cleanup
Lset46 = Ltmp127-Lfunc_begin0           ## >> Call Site 17 <<
	.long	Lset46
Lset47 = Ltmp128-Ltmp127                ##   Call between Ltmp127 and Ltmp128
	.long	Lset47
Lset48 = Ltmp129-Lfunc_begin0           ##     jumps to Ltmp129
	.long	Lset48
	.byte	0                       ##   On action: cleanup
Lset49 = Ltmp113-Lfunc_begin0           ## >> Call Site 18 <<
	.long	Lset49
Lset50 = Ltmp114-Ltmp113                ##   Call between Ltmp113 and Ltmp114
	.long	Lset50
Lset51 = Ltmp115-Lfunc_begin0           ##     jumps to Ltmp115
	.long	Lset51
	.byte	1                       ##   On action: 1
Lset52 = Ltmp124-Lfunc_begin0           ## >> Call Site 19 <<
	.long	Lset52
Lset53 = Ltmp123-Ltmp124                ##   Call between Ltmp124 and Ltmp123
	.long	Lset53
Lset54 = Ltmp126-Lfunc_begin0           ##     jumps to Ltmp126
	.long	Lset54
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z16apply_multi_moveP10game_statePK10multi_move
__Z16apply_multi_moveP10game_statePK10multi_move: ## @_Z16apply_multi_moveP10game_statePK10multi_move
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, L___gxx_personality_v0$non_lazy_ptr
	.cfi_lsda 16, Lexception1
## BB#0:
	pushl	%ebp
Ltmp159:
	.cfi_def_cfa_offset 8
Ltmp160:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp161:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$492, %esp              ## imm = 0x1EC
Ltmp162:
	.cfi_offset %esi, -20
Ltmp163:
	.cfi_offset %edi, -16
Ltmp164:
	.cfi_offset %ebx, -12
	calll	L15$pb
L15$pb:
	popl	%esi
	movl	8(%ebp), %ebx
	movl	L___stack_chk_guard$non_lazy_ptr-L15$pb(%esi), %eax
	movl	%eax, -468(%ebp)        ## 4-byte Spill
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	testl	%ebx, %ebx
	je	LBB15_70
## BB#1:
	movl	12(%ebp), %edi
	testl	%edi, %edi
	je	LBB15_70
## BB#2:
	movzbl	(%ebx), %eax
	cmpl	$255, %eax
	je	LBB15_4
## BB#3:
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	LBB15_71
LBB15_4:
	movw	2(%ebx), %ax
	testw	%ax, %ax
	je	LBB15_72
## BB#5:
	movzwl	4(%ebx), %ecx
	decl	%ecx
	movzwl	%cx, %ecx
	cmpl	$5, %ecx
	ja	LBB15_72
## BB#6:
	movzwl	%ax, %eax
	cmpl	$7, %eax
	jae	LBB15_72
## BB#7:
	movl	$1, (%esp)
	movl	%ebx, %ecx
	movl	%edi, %edx
	calll	__ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
	testb	%al, %al
	je	LBB15_8
## BB#9:
	movl	%esi, -480(%ebp)        ## 4-byte Spill
	movw	2(%ebx), %ax
	movw	%ax, -472(%ebp)         ## 2-byte Spill
	movw	4(%ebx), %ax
	movw	%ax, -476(%ebp)         ## 2-byte Spill
	leal	-336(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	calll	__Z11to_internalPK10game_statePS_
	movsbl	(%ebx), %eax
	leal	-360(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	__Z11to_internalPK10multi_moveaPS_
	movl	%esi, 4(%esp)
	leal	-368(%ebp), %eax
	movl	%eax, (%esp)
	calll	__Z12valid_mmovesRK10game_state
	subl	$4, %esp
	xorl	%ebx, %ebx
	cmpb	$0, -360(%ebp)
	je	LBB15_16
## BB#10:
	leal	-358(%ebp), %esi
LBB15_11:                               ## =>This Inner Loop Header: Depth=1
Ltmp136:
	movl	%esi, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	__Z10check_movePK10game_statePK9game_moveb
Ltmp137:
## BB#12:                               ##   in Loop: Header=BB15_11 Depth=1
	testb	%al, %al
	je	LBB15_59
## BB#13:                               ##   in Loop: Header=BB15_11 Depth=1
Ltmp138:
	movl	%esi, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	__Z10apply_moveP10game_statePK9game_moveb
Ltmp139:
## BB#14:                               ##   in Loop: Header=BB15_11 Depth=1
	incl	%ebx
	movzbl	-360(%ebp), %eax
	addl	$4, %esi
	cmpl	%eax, %ebx
	jb	LBB15_11
## BB#15:
	movb	%al, %bl
LBB15_16:
	movzwl	-476(%ebp), %ecx        ## 2-byte Folded Reload
	movzwl	-472(%ebp), %esi        ## 2-byte Folded Reload
	cmpl	%ecx, %esi
	sete	%al
	movzbl	(%edi), %edx
	movzbl	%al, %eax
	leal	2(%eax,%eax), %eax
	cmpl	%eax, %edx
	jne	LBB15_24
## BB#17:
	movl	-368(%ebp), %esi
LBB15_18:
	testl	%esi, %esi
	je	LBB15_55
## BB#19:
	movzbl	%bl, %ecx
LBB15_20:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_52 Depth 2
	movzbl	4(%esi), %eax
	cmpl	%ecx, %eax
	jne	LBB15_54
## BB#21:                               ##   in Loop: Header=BB15_20 Depth=1
	testb	%bl, %bl
	je	LBB15_58
## BB#22:                               ##   in Loop: Header=BB15_20 Depth=1
	xorl	%edx, %edx
LBB15_52:                               ##   Parent Loop BB15_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzwl	6(%esi,%edx,4), %eax
	movzwl	-358(%ebp,%edx,4), %edi
	cmpl	%edi, %eax
	jne	LBB15_54
## BB#53:                               ##   in Loop: Header=BB15_52 Depth=2
	movzwl	8(%esi,%edx,4), %eax
	movzwl	-356(%ebp,%edx,4), %edi
	cmpl	%edi, %eax
	jne	LBB15_54
## BB#51:                               ##   in Loop: Header=BB15_52 Depth=2
	incl	%edx
	cmpl	%ecx, %edx
	jb	LBB15_52
	jmp	LBB15_58
LBB15_54:                               ##   in Loop: Header=BB15_20 Depth=1
	movl	(%esi), %esi
	testl	%esi, %esi
	jne	LBB15_20
LBB15_55:
Ltmp156:
	movl	-480(%ebp), %ecx        ## 4-byte Reload
	leal	L_.str.42-L15$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L15$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z16apply_multi_moveP10game_statePK10multi_move-L15$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$689, 8(%esp)           ## imm = 0x2B1
	calll	___assert_rtn
Ltmp157:
## BB#56:
LBB15_8:
	xorl	%ebx, %ebx
	movl	-468(%ebp), %edi        ## 4-byte Reload
	jmp	LBB15_63
LBB15_58:
	movb	$1, %bl
Ltmp154:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	calll	__Z11to_internalPK10game_statePS_
Ltmp155:
	movl	-468(%ebp), %edi        ## 4-byte Reload
	jmp	LBB15_60
LBB15_57:
Ltmp158:
	jmp	LBB15_66
LBB15_65:
Ltmp140:
LBB15_66:
	movl	%eax, %esi
	movl	-368(%ebp), %eax
	testl	%eax, %eax
	je	LBB15_68
LBB15_67:                               ## =>This Inner Loop Header: Depth=1
	movl	(%eax), %edi
	movl	%eax, (%esp)
	calll	__ZdlPv
	testl	%edi, %edi
	movl	%edi, %eax
	jne	LBB15_67
LBB15_68:
	movl	$0, -368(%ebp)
	movl	%esi, (%esp)
	calll	__Unwind_Resume
LBB15_24:
	movl	%esi, -484(%ebp)        ## 4-byte Spill
	movl	%edx, -472(%ebp)        ## 4-byte Spill
	movl	%ecx, -476(%ebp)        ## 4-byte Spill
	movl	-368(%ebp), %esi
	testl	%esi, %esi
	je	LBB15_28
## BB#25:
	movl	-472(%ebp), %eax        ## 4-byte Reload
	movzbl	%al, %ecx
	movl	%esi, %eax
LBB15_26:                               ## =>This Inner Loop Header: Depth=1
	movzbl	4(%eax), %edx
	cmpl	%ecx, %edx
	ja	LBB15_37
## BB#27:                               ##   in Loop: Header=BB15_26 Depth=1
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	LBB15_26
LBB15_28:
	movzwl	-334(%ebp), %ecx
	movzwl	-332(%ebp), %eax
	cmpl	%eax, %ecx
	cmovaew	%cx, %ax
	movl	-484(%ebp), %ecx        ## 4-byte Reload
	cmpl	-476(%ebp), %ecx        ## 4-byte Folded Reload
	je	LBB15_18
## BB#29:
	movl	-472(%ebp), %ecx        ## 4-byte Reload
	testb	%cl, %cl
	je	LBB15_18
## BB#30:
	movzwl	%ax, %ecx
	movzwl	4(%edi), %eax
	cmpl	%ecx, %eax
	je	LBB15_18
## BB#31:
	testl	%esi, %esi
	je	LBB15_18
## BB#32:
	movl	%esi, %edx
LBB15_33:                               ## =>This Inner Loop Header: Depth=1
	movzbl	4(%edx), %eax
	cmpl	$1, %eax
	jne	LBB15_34
LBB15_35:                               ##   in Loop: Header=BB15_33 Depth=1
	movzwl	8(%edx), %eax
	cmpl	%ecx, %eax
	je	LBB15_44
## BB#36:                               ##   in Loop: Header=BB15_33 Depth=1
	movl	(%edx), %edx
	testl	%edx, %edx
	jne	LBB15_33
	jmp	LBB15_18
LBB15_34:                               ##   in Loop: Header=BB15_33 Depth=1
Ltmp146:
	movl	-480(%ebp), %ecx        ## 4-byte Reload
	leal	L_.str.64-L15$pb(%ecx), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L15$pb(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._ZZ16apply_multi_moveP10game_statePK10multi_moveENK3$_6clERS2_-L15$pb(%ecx), %eax
	movl	%eax, (%esp)
	movl	$652, 8(%esp)           ## imm = 0x28C
	calll	___assert_rtn
Ltmp147:
	jmp	LBB15_35
LBB15_73:
Ltmp148:
	jmp	LBB15_66
LBB15_59:
	xorl	%ebx, %ebx
	movl	-468(%ebp), %edi        ## 4-byte Reload
	jmp	LBB15_60
LBB15_37:
	movw	20(%eax), %cx
	movw	%cx, -400(%ebp)
	movsd	4(%eax), %xmm0          ## xmm0 = mem[0],zero
	movsd	12(%eax), %xmm1         ## xmm1 = mem[0],zero
	movsd	%xmm1, -408(%ebp)
	movsd	%xmm0, -416(%ebp)
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
Ltmp141:
	leal	-392(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-416(%ebp), %eax
	movl	%eax, (%esp)
	calll	__Z11to_internalPK10multi_moveaPS_
Ltmp142:
## BB#38:
	cmpb	$0, -392(%ebp)
	je	LBB15_42
## BB#39:
	xorl	%esi, %esi
	movl	-480(%ebp), %eax        ## 4-byte Reload
	leal	L_.str.38-L15$pb(%eax), %eax
	movl	%eax, -472(%ebp)        ## 4-byte Spill
	xorl	%eax, %eax
LBB15_40:                               ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	-272(%ebp,%ebx), %eax
	movl	$256, %ecx              ## imm = 0x100
	subl	%ebx, %ecx
	movzwl	-390(%ebp,%esi,4), %edx
	movzwl	-388(%ebp,%esi,4), %edi
	movl	%edi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-472(%ebp), %edx        ## 4-byte Reload
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_snprintf
	addl	%ebx, %eax
	jo	LBB15_23
## BB#41:                               ##   in Loop: Header=BB15_40 Depth=1
	incl	%esi
	movzbl	-392(%ebp), %ecx
	cmpl	%ecx, %esi
	jb	LBB15_40
LBB15_42:
Ltmp143:
	leal	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-480(%ebp), %eax        ## 4-byte Reload
	leal	L_.str.39-L15$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	calll	__ZN12_GLOBAL__N_14hintEbPKcz
Ltmp144:
	jmp	LBB15_43
LBB15_50:
Ltmp145:
	jmp	LBB15_66
LBB15_44:
	movw	20(%edx), %ax
	movw	%ax, -448(%ebp)
	movsd	4(%edx), %xmm0          ## xmm0 = mem[0],zero
	movsd	12(%edx), %xmm1         ## xmm1 = mem[0],zero
	movsd	%xmm1, -456(%ebp)
	movsd	%xmm0, -464(%ebp)
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
Ltmp149:
	leal	-440(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-464(%ebp), %eax
	movl	%eax, (%esp)
	calll	__Z11to_internalPK10multi_moveaPS_
Ltmp150:
## BB#45:
	cmpb	$0, -440(%ebp)
	je	LBB15_49
## BB#46:
	xorl	%esi, %esi
	movl	-480(%ebp), %eax        ## 4-byte Reload
	leal	L_.str.38-L15$pb(%eax), %eax
	movl	%eax, -472(%ebp)        ## 4-byte Spill
	xorl	%eax, %eax
LBB15_47:                               ## =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	-272(%ebp,%ebx), %eax
	movl	$256, %ecx              ## imm = 0x100
	subl	%ebx, %ecx
	movzwl	-438(%ebp,%esi,4), %edx
	movzwl	-436(%ebp,%esi,4), %edi
	movl	%edi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-472(%ebp), %edx        ## 4-byte Reload
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_snprintf
	addl	%ebx, %eax
	jo	LBB15_23
## BB#48:                               ##   in Loop: Header=BB15_47 Depth=1
	incl	%esi
	movzbl	-440(%ebp), %ecx
	cmpl	%ecx, %esi
	jb	LBB15_47
LBB15_49:
Ltmp151:
	leal	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-480(%ebp), %eax        ## 4-byte Reload
	leal	L_.str.40-L15$pb(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	calll	__ZN12_GLOBAL__N_14hintEbPKcz
Ltmp152:
LBB15_43:
	movl	-468(%ebp), %edi        ## 4-byte Reload
	xorl	%ebx, %ebx
LBB15_60:
	movl	-368(%ebp), %eax
	testl	%eax, %eax
	je	LBB15_62
LBB15_61:                               ## =>This Inner Loop Header: Depth=1
	movl	(%eax), %esi
	movl	%eax, (%esp)
	calll	__ZdlPv
	testl	%esi, %esi
	movl	%esi, %eax
	jne	LBB15_61
LBB15_62:
	movl	$0, -368(%ebp)
LBB15_63:
	movl	(%edi), %eax
	cmpl	-16(%ebp), %eax
	jne	LBB15_64
## BB#69:
	movzbl	%bl, %eax
	addl	$492, %esp              ## imm = 0x1EC
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB15_72:
	leal	L_.str.37-L15$pb(%esi), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L15$pb(%esi), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z16apply_multi_moveP10game_statePK10multi_move-L15$pb(%esi), %eax
	movl	%eax, (%esp)
	movl	$582, 8(%esp)           ## imm = 0x246
	calll	___assert_rtn
LBB15_23:
	ud2
LBB15_71:
	leal	L_.str.35-L15$pb(%esi), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L15$pb(%esi), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z16apply_multi_moveP10game_statePK10multi_move-L15$pb(%esi), %eax
	movl	%eax, (%esp)
	movl	$580, 8(%esp)           ## imm = 0x244
	calll	___assert_rtn
LBB15_70:
	leal	L_.str.34-L15$pb(%esi), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L15$pb(%esi), %eax
	movl	%eax, 4(%esp)
	leal	L___func__._Z16apply_multi_moveP10game_statePK10multi_move-L15$pb(%esi), %eax
	movl	%eax, (%esp)
	movl	$579, 8(%esp)           ## imm = 0x243
	calll	___assert_rtn
LBB15_64:
	calll	___stack_chk_fail
LBB15_74:
Ltmp153:
	jmp	LBB15_66
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table15:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\352\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
Lset55 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset55
Lset56 = Ltmp136-Lfunc_begin1           ##   Call between Lfunc_begin1 and Ltmp136
	.long	Lset56
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset57 = Ltmp136-Lfunc_begin1           ## >> Call Site 2 <<
	.long	Lset57
Lset58 = Ltmp139-Ltmp136                ##   Call between Ltmp136 and Ltmp139
	.long	Lset58
Lset59 = Ltmp140-Lfunc_begin1           ##     jumps to Ltmp140
	.long	Lset59
	.byte	0                       ##   On action: cleanup
Lset60 = Ltmp156-Lfunc_begin1           ## >> Call Site 3 <<
	.long	Lset60
Lset61 = Ltmp155-Ltmp156                ##   Call between Ltmp156 and Ltmp155
	.long	Lset61
Lset62 = Ltmp158-Lfunc_begin1           ##     jumps to Ltmp158
	.long	Lset62
	.byte	0                       ##   On action: cleanup
Lset63 = Ltmp155-Lfunc_begin1           ## >> Call Site 4 <<
	.long	Lset63
Lset64 = Ltmp146-Ltmp155                ##   Call between Ltmp155 and Ltmp146
	.long	Lset64
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset65 = Ltmp146-Lfunc_begin1           ## >> Call Site 5 <<
	.long	Lset65
Lset66 = Ltmp147-Ltmp146                ##   Call between Ltmp146 and Ltmp147
	.long	Lset66
Lset67 = Ltmp148-Lfunc_begin1           ##     jumps to Ltmp148
	.long	Lset67
	.byte	0                       ##   On action: cleanup
Lset68 = Ltmp141-Lfunc_begin1           ## >> Call Site 6 <<
	.long	Lset68
Lset69 = Ltmp144-Ltmp141                ##   Call between Ltmp141 and Ltmp144
	.long	Lset69
Lset70 = Ltmp145-Lfunc_begin1           ##     jumps to Ltmp145
	.long	Lset70
	.byte	0                       ##   On action: cleanup
Lset71 = Ltmp149-Lfunc_begin1           ## >> Call Site 7 <<
	.long	Lset71
Lset72 = Ltmp152-Ltmp149                ##   Call between Ltmp149 and Ltmp152
	.long	Lset72
Lset73 = Ltmp153-Lfunc_begin1           ##     jumps to Ltmp153
	.long	Lset73
	.byte	0                       ##   On action: cleanup
Lset74 = Ltmp152-Lfunc_begin1           ## >> Call Site 8 <<
	.long	Lset74
Lset75 = Lfunc_end1-Ltmp152             ##   Call between Ltmp152 and Lfunc_end1
	.long	Lset75
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
__ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb: ## @_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp165:
	.cfi_def_cfa_offset 8
Ltmp166:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp167:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
Ltmp168:
	.cfi_offset %esi, -20
Ltmp169:
	.cfi_offset %edi, -16
Ltmp170:
	.cfi_offset %ebx, -12
	calll	L16$pb
L16$pb:
	popl	%esi
	movb	8(%ebp), %al
	movzbl	(%edx), %ebx
	cmpl	$5, %ebx
	jb	LBB16_2
## BB#1:
	subl	$8, %esp
	leal	L_.str.61-L16$pb(%esi), %ecx
	jmp	LBB16_15
LBB16_2:
	movzwl	4(%ecx), %edi
	movzwl	2(%ecx), %ecx
	cmpl	%edi, %ecx
	jne	LBB16_3
## BB#7:
	movzbl	%bl, %edi
	cmpl	$4, %edi
	jb	LBB16_11
## BB#8:
	movzwl	4(%edx), %edi
	movzwl	8(%edx), %ecx
	cmpl	%ecx, %edi
	jne	LBB16_14
## BB#9:
	movzwl	12(%edx), %ecx
	movzwl	%di, %edi
	cmpl	%ecx, %edi
	jne	LBB16_14
## BB#10:
	movzwl	16(%edx), %edi
	movzwl	%di, %edi
	movzwl	%cx, %ecx
	cmpl	%edi, %ecx
	je	LBB16_12
	jmp	LBB16_14
LBB16_3:
	movzbl	%bl, %ecx
	cmpl	$2, %ecx
	ja	LBB16_6
## BB#4:
	movb	$1, %cl
	jne	LBB16_16
## BB#5:
	movzwl	8(%edx), %edi
	movzwl	4(%edx), %edx
	cmpl	%edi, %edx
	jne	LBB16_16
LBB16_6:
	subl	$8, %esp
	leal	L_.str.62-L16$pb(%esi), %ecx
	jmp	LBB16_15
LBB16_11:
	movb	$1, %cl
	cmpl	$3, %edi
	jb	LBB16_16
LBB16_12:
	movzwl	8(%edx), %edi
	movzwl	4(%edx), %ecx
	cmpl	%edi, %ecx
	jne	LBB16_14
## BB#13:
	movzwl	12(%edx), %edx
	movb	$1, %cl
	movzwl	%dx, %edx
	movzwl	%di, %edi
	cmpl	%edx, %edi
	je	LBB16_16
LBB16_14:
	subl	$8, %esp
	leal	L_.str.63-L16$pb(%esi), %ecx
LBB16_15:
	movzbl	%al, %eax
	pushl	%ecx
	pushl	%eax
	calll	__ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
	xorl	%ecx, %ecx
LBB16_16:
	movzbl	%cl, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
	.cfi_endproc

	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	calll	___cxa_begin_catch
	calll	__ZSt9terminatev

	.section	__TEXT,__cstring,cstring_literals
L___func__._Z11to_internalhsaPhPs:      ## @__func__._Z11to_internalhsaPhPs
	.asciz	"to_internal"

L_.str:                                 ## @.str
	.asciz	"state-internal.cc"

L_.str.1:                               ## @.str.1
	.asciz	"int_pos && int_val"

L_.str.2:                               ## @.str.2
	.asciz	"pos <= POS_OFF"

L_.str.3:                               ## @.str.3
	.asciz	"pos == POS_BAR || (val >= -NUM_CHECKERS && val <= NUM_CHECKERS)"

L_.str.4:                               ## @.str.4
	.asciz	"player == PLAYER_ABOVE || player == PLAYER_BELOW"

L_.str.5:                               ## @.str.5
	.asciz	"lower_val <= NUM_CHECKERS && higher_val <= NUM_CHECKERS"

L_.str.6:                               ## @.str.6
	.asciz	"st && ist"

L_.str.7:                               ## @.str.7
	.asciz	"st != ist"

L_.str.8:                               ## @.str.8
	.asciz	"move && int_move"

L_.str.9:                               ## @.str.9
	.asciz	"move != int_move"

L_.str.10:                              ## @.str.10
	.asciz	"mmove && int_mmove"

L_.str.11:                              ## @.str.11
	.asciz	"mmove != int_mmove"

L___func__._Z14is_final_statePK10game_state: ## @__func__._Z14is_final_statePK10game_state
	.asciz	"is_final_state"

L_.str.12:                              ## @.str.12
	.asciz	"state"

L___func__._Z6winnerPK10game_state:     ## @__func__._Z6winnerPK10game_state
	.asciz	"winner"

L_.str.13:                              ## @.str.13
	.asciz	"(checkers[0] == 0 && checkers[1] > 0) || (checkers[1] == 0 && checkers[0] > 0)"

L_.str.14:                              ## @.str.14
	.asciz	"winner != state->player"

L___func__._Z10check_movePK10game_statePK9game_moveb: ## @__func__._Z10check_movePK10game_statePK9game_moveb
	.asciz	"check_move"

L_.str.15:                              ## @.str.15
	.asciz	"int_state && int_move"

L_.str.16:                              ## @.str.16
	.asciz	"%hu does not match any die roll (%hu, %hu)"

L_.str.17:                              ## @.str.17
	.asciz	"Die roll does not match exactly to bear off a checker from point %hu and there is a checker at point %hu"

L___func__._Z10apply_moveP10game_statePK9game_moveb: ## @__func__._Z10apply_moveP10game_statePK9game_moveb
	.asciz	"apply_move"

L_.str.19:                              ## @.str.19
	.asciz	"from < POS_OFF && \"Re-entering is not allowed\""

L_.str.21:                              ## @.str.21
	.asciz	"b[from] > 0 && \"No own checker to move\""

L_.str.22:                              ## @.str.22
	.asciz	"to > POS_BAR && to <= POS_OFF + 5"

L_.str.24:                              ## @.str.24
	.asciz	"(to >= POS_OFF || b[to] >= -1) && \"Destination held by opponent\""

L_.str.25:                              ## @.str.25
	.asciz	"Opponent's blot at %hu is hit and goes to the bar"

L_.str.26:                              ## @.str.26
	.asciz	"Bearing off checker from %hu"

L___func__._Z12valid_mmovesRK10game_state: ## @__func__._Z12valid_mmovesRK10game_state
	.asciz	"valid_mmoves"

L_.str.28:                              ## @.str.28
	.asciz	"mmove.num_moves == num_move"

L_.str.30:                              ## @.str.30
	.asciz	"check_move(&tmp_state, &mmove.moves[cc], false) && \"Invalid move\""

L_.str.31:                              ## @.str.31
	.asciz	"mmove.num_moves <= MAX_MOVES"

L_.str.32:                              ## @.str.32
	.asciz	"check_move(&tmp_state, &move, false) && \"Invalid move\""

L_.str.33:                              ## @.str.33
	.asciz	"!mmoves_final.empty()"

L___func__._Z16apply_multi_moveP10game_statePK10multi_move: ## @__func__._Z16apply_multi_moveP10game_statePK10multi_move
	.asciz	"apply_multi_move"

L_.str.34:                              ## @.str.34
	.asciz	"state && mmove"

L_.str.35:                              ## @.str.35
	.asciz	"state->player == PLAYER_ABOVE || state->player == PLAYER_BELOW"

L_.str.37:                              ## @.str.37
	.asciz	"state->dice[0] > 0 && state->dice[1] > 0 && state->dice[0] < 7 && state->dice[1] < 7 && \"Broken dice\""

L_.str.38:                              ## @.str.38
	.asciz	"(%hu %hu) "

L_.str.39:                              ## @.str.39
	.asciz	"You must use all your dice if there are legal moves possible. One possibility: %s"

L_.str.40:                              ## @.str.40
	.asciz	"When not using both dice you must use the higher one if possible. One possibility: %s"

L_.str.42:                              ## @.str.42
	.asciz	"std::any_of(mmoves.cbegin(), mmoves.cend(), [&int_mmove](multi_move const & mm) { if (mm.num_moves != int_mmove.num_moves) return false; for (size_t cc = 0; cc < mm.num_moves; ++cc) { if (mm.moves[cc].point_from != int_mmove.moves[cc].point_from) return false; if (mm.moves[cc].roll != int_mmove.moves[cc].roll) return false; } return true; }) && \"Invalid move slipped through checks\""

L___func__._Z13set_lower_barPst:        ## @__func__._Z13set_lower_barPst
	.asciz	"set_lower_bar"

L_.str.43:                              ## @.str.43
	.asciz	"include/state.h"

L_.str.45:                              ## @.str.45
	.asciz	"low_val <= NUM_CHECKERS"

L_.str.46:                              ## @.str.46
	.asciz	"*bar_val >= 0 && *bar_val <= NUM_CHECKERS * 100 + NUM_CHECKERS"

L___func__._Z14set_higher_barPst:       ## @__func__._Z14set_higher_barPst
	.asciz	"set_higher_bar"

L_.str.47:                              ## @.str.47
	.asciz	"high_val <= NUM_CHECKERS"

L___func__._ZN12_GLOBAL__N_114count_checkersEPK10game_statePi: ## @__func__._ZN12_GLOBAL__N_114count_checkersEPK10game_statePi
	.asciz	"count_checkers"

L_.str.48:                              ## @.str.48
	.asciz	"count[0] >= 0 && count[0] <= NUM_CHECKERS && count[1] >= 0 && count[1] <= NUM_CHECKERS"

L_.str.49:                              ## @.str.49
	.asciz	"## hint: "

L_.str.50:                              ## @.str.50
	.asciz	"\n"

L___func__._ZN12_GLOBAL__N_110check_fromEPK10game_statetb: ## @__func__._ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	.asciz	"check_from"

L_.str.51:                              ## @.str.51
	.asciz	"int_state"

L_.str.52:                              ## @.str.52
	.asciz	"Checker must not re-enter the board once beared off"

L_.str.53:                              ## @.str.53
	.asciz	"There is no checker at point %hd"

L_.str.54:                              ## @.str.54
	.asciz	"Only own checkers may be moved (directly) and the bar is occupied by %hu checkers of your opponent"

L_.str.55:                              ## @.str.55
	.asciz	"Checkers from the bar have to re-enter first"

L_.str.56:                              ## @.str.56
	.asciz	"Only own checkers may be moved (directly) and point %hu is occupied by %hu checkers of your opponent"

L___func__._ZN12_GLOBAL__N_18check_toEPK10game_statetb: ## @__func__._ZN12_GLOBAL__N_18check_toEPK10game_statetb
	.asciz	"check_to"

L_.str.57:                              ## @.str.57
	.asciz	"to > POS_BAR"

L_.str.58:                              ## @.str.58
	.asciz	"Point %hu is occupied by %hu checkers of your opponent"

L_.str.59:                              ## @.str.59
	.asciz	"You may not bear off unless *all* your checkers are in your home board. There is a checker on point %u"

L_.str.61:                              ## @.str.61
	.asciz	"You try to make too many moves."

L_.str.62:                              ## @.str.62
	.asciz	"You did not roll a double -- use each die only once!"

L_.str.63:                              ## @.str.63
	.asciz	"Doubles oblige you to use each die twice!"

L___func__._ZZ16apply_multi_moveP10game_statePK10multi_moveENK3$_6clERS2_: ## @"__func__._ZZ16apply_multi_moveP10game_statePK10multi_moveENK3$_6clERS2_"
	.asciz	"operator()"

L_.str.64:                              ## @.str.64
	.asciz	"mm.num_moves == 1"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___gxx_personality_v0$non_lazy_ptr:
	.indirect_symbol	___gxx_personality_v0
	.long	0
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0
L___stderrp$non_lazy_ptr:
	.indirect_symbol	___stderrp
	.long	0

.subsections_via_symbols
