	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	__Z11to_internalhsaPhPs
__Z11to_internalhsaPhPs:                ## @_Z11to_internalhsaPhPs
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	testq	%rcx, %rcx
	je	LBB0_24
## BB#1:
	testq	%r8, %r8
	je	LBB0_24
## BB#2:
	movzbl	%dil, %r9d
	cmpl	$26, %r9d
	jae	LBB0_25
## BB#3:
	testb	%dil, %dil
	setne	%r10b
	leal	15(%rsi), %eax
	movzwl	%ax, %eax
	cmpl	$31, %eax
	jb	LBB0_5
## BB#4:
	testb	%r10b, %r10b
	jne	LBB0_26
LBB0_5:
	movzbl	%dl, %r10d
	cmpl	$255, %r10d
	setne	%al
	cmpl	$1, %r10d
	je	LBB0_7
## BB#6:
	testb	%al, %al
	jne	LBB0_27
LBB0_7:
	testb	%dil, %dil
	je	LBB0_8
## BB#16:
	movsbl	%dl, %eax
	cwtl
	imull	%esi, %eax
	movw	%ax, (%r8)
	jmp	LBB0_17
LBB0_8:
	cmpl	$1, %r10d
	jne	LBB0_10
## BB#9:
	movw	%si, (%r8)
	jmp	LBB0_17
LBB0_10:
	movswq	%si, %rax
	imulq	$1374389535, %rax, %rdx ## imm = 0x51EB851F
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$37, %rdx
	addl	%eax, %edx
	movswl	%dx, %eax
	cmpl	$15, %eax
	jg	LBB0_28
## BB#11:
	imull	$100, %edx, %eax
	subl	%eax, %esi
	movswl	%si, %eax
	cmpl	$16, %eax
	jge	LBB0_28
## BB#12:
	movw	$0, (%r8)
	movzwl	%dx, %eax
	cmpl	$16, %eax
	jae	LBB0_29
## BB#13:
	movw	%dx, (%r8)
	movzwl	%si, %eax
	cmpl	$16, %eax
	jae	LBB0_30
## BB#14:
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax ## imm = 0x51EB851F
	movq	%rax, %r11
	shrq	$63, %r11
	shrq	$37, %rax
	addl	%r11d, %eax
	imull	$100, %eax, %eax
	subl	%eax, %edx
	imull	$100, %esi, %eax
	addl	%edx, %eax
	movw	%ax, (%r8)
	movzwl	%ax, %eax
	cmpl	$1516, %eax             ## imm = 0x5EC
	jae	LBB0_15
LBB0_17:
	cmpl	$255, %r10d
	movb	%dil, %al
	je	LBB0_19
## BB#18:
	movb	$25, %al
	subb	%dil, %al
LBB0_19:
	cmpl	$25, %r9d
	movb	%dil, %dl
	je	LBB0_21
## BB#20:
	movb	%al, %dl
LBB0_21:
	testb	%dil, %dil
	je	LBB0_23
## BB#22:
	movb	%dl, %dil
LBB0_23:
	movb	%dil, (%rcx)
	popq	%rbp
	retq
LBB0_24:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.1(%rip), %rcx
	movl	$60, %edx
	callq	___assert_rtn
LBB0_25:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.2(%rip), %rcx
	movl	$61, %edx
	callq	___assert_rtn
LBB0_26:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.3(%rip), %rcx
	movl	$62, %edx
	callq	___assert_rtn
LBB0_27:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$63, %edx
	callq	___assert_rtn
LBB0_28:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.5(%rip), %rcx
	movl	$75, %edx
	callq	___assert_rtn
LBB0_29:
	leaq	L___func__._Z13set_lower_barPst(%rip), %rdi
	leaq	L_.str.43(%rip), %rsi
	leaq	L_.str.45(%rip), %rcx
	movl	$97, %edx
	callq	___assert_rtn
LBB0_30:
	leaq	L___func__._Z14set_higher_barPst(%rip), %rdi
	leaq	L_.str.43(%rip), %rsi
	leaq	L_.str.47(%rip), %rcx
	movl	$107, %edx
	callq	___assert_rtn
LBB0_15:
	leaq	L___func__._Z14set_higher_barPst(%rip), %rdi
	leaq	L_.str.43(%rip), %rsi
	leaq	L_.str.46(%rip), %rcx
	movl	$109, %edx
	callq	___assert_rtn
	.cfi_endproc

	.globl	__Z13from_internalhsaPhPs
__Z13from_internalhsaPhPs:              ## @_Z13from_internalhsaPhPs
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__Z11to_internalhsaPhPs ## TAILCALL
	.cfi_endproc

	.globl	__Z11to_internalPK10game_statePS_
__Z11to_internalPK10game_statePS_:      ## @_Z11to_internalPK10game_statePS_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp9:
	.cfi_offset %rbx, -56
Ltmp10:
	.cfi_offset %r12, -48
Ltmp11:
	.cfi_offset %r13, -40
Ltmp12:
	.cfi_offset %r14, -32
Ltmp13:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r13
	testq	%r13, %r13
	je	LBB2_8
## BB#1:
	testq	%r14, %r14
	je	LBB2_8
## BB#2:
	cmpq	%r14, %r13
	je	LBB2_9
## BB#3:
	movb	(%r13), %al
	movb	%al, (%r14)
	xorl	%eax, %eax
LBB2_4:                                 ## =>This Inner Loop Header: Depth=1
	movw	2(%r13,%rax,2), %cx
	movw	%cx, 2(%r14,%rax,2)
	incq	%rax
	cmpq	$2, %rax
	jne	LBB2_4
## BB#5:
	xorl	%ebx, %ebx
	leaq	-41(%rbp), %r15
	leaq	-44(%rbp), %r12
LBB2_6:                                 ## =>This Inner Loop Header: Depth=1
	movswl	6(%r13,%rbx,2), %esi
	movsbl	(%r13), %edx
	movzbl	%bl, %edi
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	__Z11to_internalhsaPhPs
	movw	-44(%rbp), %ax
	movzbl	-41(%rbp), %ecx
	movw	%ax, 6(%r14,%rcx,2)
	incq	%rbx
	cmpq	$26, %rbx
	jne	LBB2_6
## BB#7:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_8:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.6(%rip), %rcx
	movl	$107, %edx
	callq	___assert_rtn
LBB2_9:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.7(%rip), %rcx
	movl	$108, %edx
	callq	___assert_rtn
	.cfi_endproc

	.globl	__Z13from_internalPK10game_statePS_
__Z13from_internalPK10game_statePS_:    ## @_Z13from_internalPK10game_statePS_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp14:
	.cfi_def_cfa_offset 16
Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp16:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__Z11to_internalPK10game_statePS_ ## TAILCALL
	.cfi_endproc

	.globl	__Z11to_internalPK9game_moveaPS_
__Z11to_internalPK9game_moveaPS_:       ## @_Z11to_internalPK9game_moveaPS_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp17:
	.cfi_def_cfa_offset 16
Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp19:
	.cfi_def_cfa_register %rbp
	testq	%rdi, %rdi
	je	LBB4_9
## BB#1:
	testq	%rdx, %rdx
	je	LBB4_9
## BB#2:
	cmpq	%rdx, %rdi
	je	LBB4_10
## BB#3:
	movzbl	%sil, %ecx
	cmpl	$255, %ecx
	setne	%al
	cmpl	$1, %ecx
	je	LBB4_5
## BB#4:
	testb	%al, %al
	jne	LBB4_11
LBB4_5:
	movw	(%rdi), %ax
	testw	%ax, %ax
	je	LBB4_8
## BB#6:
	movzwl	%ax, %esi
	cmpl	$25, %esi
	je	LBB4_8
## BB#7:
	movl	$25, %esi
	subl	%eax, %esi
	cmpl	$255, %ecx
	cmovew	%ax, %si
	movw	%si, %ax
LBB4_8:
	movw	%ax, (%rdx)
	movw	2(%rdi), %ax
	movw	%ax, 2(%rdx)
	popq	%rbp
	retq
LBB4_9:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.8(%rip), %rcx
	movl	$136, %edx
	callq	___assert_rtn
LBB4_10:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.9(%rip), %rcx
	movl	$137, %edx
	callq	___assert_rtn
LBB4_11:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$138, %edx
	callq	___assert_rtn
	.cfi_endproc

	.globl	__Z13from_internalPK9game_moveaPS_
__Z13from_internalPK9game_moveaPS_:     ## @_Z13from_internalPK9game_moveaPS_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp20:
	.cfi_def_cfa_offset 16
Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp22:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__Z11to_internalPK9game_moveaPS_ ## TAILCALL
	.cfi_endproc

	.globl	__Z11to_internalPK10multi_moveaPS_
__Z11to_internalPK10multi_moveaPS_:     ## @_Z11to_internalPK10multi_moveaPS_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp23:
	.cfi_def_cfa_offset 16
Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp25:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp26:
	.cfi_offset %rbx, -56
Ltmp27:
	.cfi_offset %r12, -48
Ltmp28:
	.cfi_offset %r13, -40
Ltmp29:
	.cfi_offset %r14, -32
Ltmp30:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rdi, %r14
	testq	%r14, %r14
	je	LBB6_7
## BB#1:
	testq	%r15, %r15
	je	LBB6_7
## BB#2:
	cmpq	%r15, %r14
	je	LBB6_8
## BB#3:
	movb	(%r14), %al
	movb	%al, (%r15)
	cmpb	$0, (%r14)
	je	LBB6_6
## BB#4:
	leaq	2(%r14), %r13
	addq	$2, %r15
	xorl	%ebx, %ebx
	movsbl	%sil, %r12d
LBB6_5:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	callq	__Z11to_internalPK9game_moveaPS_
	incq	%rbx
	movzbl	(%r14), %eax
	addq	$4, %r13
	addq	$4, %r15
	cmpq	%rax, %rbx
	jb	LBB6_5
LBB6_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_7:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.10(%rip), %rcx
	movl	$163, %edx
	callq	___assert_rtn
LBB6_8:
	leaq	L___func__._Z11to_internalhsaPhPs(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.11(%rip), %rcx
	movl	$164, %edx
	callq	___assert_rtn
	.cfi_endproc

	.globl	__Z13from_internalPK10multi_moveaPS_
__Z13from_internalPK10multi_moveaPS_:   ## @_Z13from_internalPK10multi_moveaPS_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp31:
	.cfi_def_cfa_offset 16
Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp33:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__Z11to_internalPK10multi_moveaPS_ ## TAILCALL
	.cfi_endproc

	.globl	__Z14is_final_statePK10game_state
__Z14is_final_statePK10game_state:      ## @_Z14is_final_statePK10game_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp34:
	.cfi_def_cfa_offset 16
Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %r8
	movq	(%r8), %r8
	movq	%r8, -8(%rbp)
	testq	%rdi, %rdi
	je	LBB8_9
## BB#1:
	movq	$0, -16(%rbp)
	movl	$4, %eax
LBB8_2:                                 ## =>This Inner Loop Header: Depth=1
	movswl	(%rdi,%rax,2), %esi
	testl	%esi, %esi
	setg	%cl
	movl	%esi, %edx
	negl	%edx
	cmovll	%esi, %edx
	movzbl	%cl, %esi
	addl	-16(%rbp,%rsi,4), %edx
	jo	LBB8_12
## BB#3:                                ##   in Loop: Header=BB8_2 Depth=1
	movl	%edx, -16(%rbp,%rsi,4)
	leaq	1(%rax), %rcx
	addq	$-2, %rax
	cmpq	$25, %rax
	movq	%rcx, %rax
	jb	LBB8_2
## BB#4:
	movswq	6(%rdi), %rdx
	imulq	$1374389535, %rdx, %rax ## imm = 0x51EB851F
	movq	%rax, %rsi
	shrq	$63, %rsi
	shrq	$37, %rax
	addl	%esi, %eax
	movzwl	%ax, %eax
	addl	-16(%rbp), %eax
	jo	LBB8_12
## BB#5:
	movl	%eax, -16(%rbp)
	movslq	%edx, %rcx
	imulq	$1374389535, %rcx, %rdx ## imm = 0x51EB851F
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$37, %rdx
	addl	%esi, %edx
	imull	$100, %edx, %edx
	subl	%edx, %ecx
	movzwl	%cx, %edx
	addl	-12(%rbp), %edx
	jo	LBB8_12
## BB#6:
	movl	%edx, -12(%rbp)
	movl	%edx, %ecx
	orl	%eax, %ecx
	cmpl	$16, %ecx
	jae	LBB8_10
## BB#7:
	testl	%eax, %eax
	sete	%al
	testl	%edx, %edx
	sete	%dl
	cmpq	-8(%rbp), %r8
	jne	LBB8_11
## BB#8:
	orb	%dl, %al
	addq	$16, %rsp
	popq	%rbp
	retq
LBB8_12:
	ud2
LBB8_9:
	leaq	L___func__._Z14is_final_statePK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.12(%rip), %rcx
	movl	$186, %edx
	callq	___assert_rtn
LBB8_10:
	leaq	L___func__._ZN12_GLOBAL__N_114count_checkersEPK10game_statePi(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.48(%rip), %rcx
	movl	$36, %edx
	callq	___assert_rtn
LBB8_11:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	__Z6winnerPK10game_state
__Z6winnerPK10game_state:               ## @_Z6winnerPK10game_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp37:
	.cfi_def_cfa_offset 16
Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp39:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
Ltmp40:
	.cfi_offset %rbx, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %r8
	movq	(%r8), %r8
	movq	%r8, -16(%rbp)
	testq	%rdi, %rdi
	je	LBB9_23
## BB#1:
	movq	$0, -24(%rbp)
	movl	$4, %eax
LBB9_2:                                 ## =>This Inner Loop Header: Depth=1
	movswl	(%rdi,%rax,2), %edx
	testl	%edx, %edx
	setg	%sil
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	movzbl	%sil, %edx
	addl	-24(%rbp,%rdx,4), %ecx
	jo	LBB9_26
## BB#3:                                ##   in Loop: Header=BB9_2 Depth=1
	movl	%ecx, -24(%rbp,%rdx,4)
	leaq	1(%rax), %rcx
	addq	$-2, %rax
	cmpq	$25, %rax
	movq	%rcx, %rax
	jb	LBB9_2
## BB#4:
	movswq	6(%rdi), %r9
	imulq	$1374389535, %r9, %rax  ## imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$37, %rax
	addl	%ecx, %eax
	movzwl	%ax, %r11d
	addl	-24(%rbp), %r11d
	jo	LBB9_26
## BB#5:
	movl	%r11d, -24(%rbp)
	movslq	%r9d, %rcx
	imulq	$1374389535, %rcx, %rdx ## imm = 0x51EB851F
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$37, %rdx
	addl	%esi, %edx
	imull	$100, %edx, %edx
	subl	%edx, %ecx
	movzwl	%cx, %ecx
	addl	-20(%rbp), %ecx
	jo	LBB9_26
## BB#6:
	movl	%ecx, -20(%rbp)
	movl	%ecx, %edx
	orl	%r11d, %edx
	cmpl	$16, %edx
	jae	LBB9_24
## BB#7:
	testl	%r11d, %r11d
	je	LBB9_8
## BB#10:
	testl	%ecx, %ecx
	jne	LBB9_9
## BB#11:
	testl	%r11d, %r11d
	jg	LBB9_12
	jmp	LBB9_9
LBB9_8:
	testl	%ecx, %ecx
	jle	LBB9_9
LBB9_12:
	cmpl	$1, %r11d
	sbbl	%r10d, %r10d
	orl	$1, %r10d
	movsbl	(%rdi), %ecx
	cmpl	%ecx, %r10d
	je	LBB9_13
## BB#15:
	testl	%r11d, %r11d
	movl	$19, %ecx
	movl	$1, %edx
	cmoveq	%rcx, %rdx
	movl	$24, %ecx
	movl	$6, %esi
	cmoveq	%rcx, %rsi
	xorl	%ecx, %ecx
	cmpq	%rsi, %rdx
	ja	LBB9_19
## BB#16:
	xorl	%ecx, %ecx
LBB9_17:                                ## =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movswl	6(%rdi,%rdx,2), %ebx
	movl	%ebx, %ecx
	negl	%ecx
	cmovll	%ebx, %ecx
	addl	%eax, %ecx
	jo	LBB9_14
## BB#18:                               ##   in Loop: Header=BB9_17 Depth=1
	incq	%rdx
	cmpq	%rsi, %rdx
	jbe	LBB9_17
LBB9_19:
	testl	%r11d, %r11d
	sete	%al
	movzbl	%al, %edx
	movl	$1, %eax
	cmpl	$15, -24(%rbp,%rdx,4)
	jl	LBB9_21
## BB#20:
	testw	%r9w, %r9w
	setne	%al
	movzbl	%al, %edx
	orl	$2, %edx
	testl	%ecx, %ecx
	movl	$3, %eax
	cmovel	%edx, %eax
LBB9_21:
	cmpq	-16(%rbp), %r8
	jne	LBB9_25
## BB#22:
	imull	%r10d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB9_26:
	ud2
LBB9_14:
	ud2
LBB9_23:
	leaq	L___func__._Z6winnerPK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.12(%rip), %rcx
	movl	$197, %edx
	callq	___assert_rtn
LBB9_24:
	leaq	L___func__._ZN12_GLOBAL__N_114count_checkersEPK10game_statePi(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.48(%rip), %rcx
	movl	$36, %edx
	callq	___assert_rtn
LBB9_9:
	leaq	L___func__._Z6winnerPK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.13(%rip), %rcx
	movl	$203, %edx
	callq	___assert_rtn
LBB9_13:
	leaq	L___func__._Z6winnerPK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.14(%rip), %rcx
	movl	$206, %edx
	callq	___assert_rtn
LBB9_25:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	__Z10check_movePK10game_statePK9game_moveb
__Z10check_movePK10game_statePK9game_moveb: ## @_Z10check_movePK10game_statePK9game_moveb
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp41:
	.cfi_def_cfa_offset 16
Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp43:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp44:
	.cfi_offset %rbx, -56
Ltmp45:
	.cfi_offset %r12, -48
Ltmp46:
	.cfi_offset %r13, -40
Ltmp47:
	.cfi_offset %r14, -32
Ltmp48:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB10_21
## BB#1:
	testq	%rsi, %rsi
	je	LBB10_21
## BB#2:
	movzwl	(%rsi), %r12d
	movzwl	2(%rsi), %r13d
	movzwl	2(%rbx), %ecx
	cmpl	%ecx, %r13d
	je	LBB10_5
## BB#3:
	movzwl	4(%rbx), %r8d
	cmpl	%r8d, %r13d
	jne	LBB10_4
LBB10_5:
	movzbl	%dl, %r14d
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	callq	__ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	testb	%al, %al
	je	LBB10_6
## BB#7:
	addl	%r12d, %r13d
	testw	%r13w, %r13w
	je	LBB10_22
## BB#8:
	movl	$4, %eax
	movzwl	%r13w, %ecx
	cmpl	$24, %ecx
	ja	LBB10_12
## BB#9:
	movswl	6(%rbx,%rcx,2), %eax
	cmpl	$-1, %eax
	jge	LBB10_10
## BB#14:
	movzbl	%r13b, %edi
	movsbl	(%rbx), %edx
	movswl	%ax, %esi
	leaq	-41(%rbp), %rcx
	leaq	-44(%rbp), %r8
	callq	__Z11to_internalhsaPhPs
	movzbl	-41(%rbp), %edx
	movswl	-44(%rbp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	leaq	L_.str.58(%rip), %rsi
	xorl	%eax, %eax
	movl	%r14d, %edi
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
	jmp	LBB10_6
LBB10_12:                               ## =>This Inner Loop Header: Depth=1
	cmpw	$0, (%rbx,%rax,2)
	jg	LBB10_13
## BB#11:                               ##   in Loop: Header=BB10_12 Depth=1
	leaq	1(%rax), %rdx
	addq	$-2, %rax
	cmpq	$19, %rax
	movq	%rdx, %rax
	jb	LBB10_12
## BB#15:
	movb	$1, %r15b
	cmpl	$26, %ecx
	jb	LBB10_20
## BB#16:
	movl	$19, %r13d
	cmpl	$20, %r12d
	jb	LBB10_20
LBB10_17:                               ## =>This Inner Loop Header: Depth=1
	movzwl	%r13w, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	__ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	testb	%al, %al
	jne	LBB10_19
## BB#18:                               ##   in Loop: Header=BB10_17 Depth=1
	incq	%r13
	cmpq	%r12, %r13
	jb	LBB10_17
	jmp	LBB10_20
LBB10_4:
	movzbl	%dl, %edi
	leaq	L_.str.16(%rip), %rsi
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movl	%r13d, %edx
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
	jmp	LBB10_20
LBB10_13:
	addl	$-3, %eax
	movsbl	(%rbx), %edx
	movzbl	%al, %edi
	leaq	-41(%rbp), %rcx
	leaq	-44(%rbp), %r8
	xorl	%esi, %esi
	callq	__Z11to_internalhsaPhPs
	movzbl	-41(%rbp), %edx
	leaq	L_.str.59(%rip), %rsi
	xorl	%eax, %eax
	movl	%r14d, %edi
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
LBB10_6:
	xorl	%r15d, %r15d
LBB10_20:
	movb	%r15b, %al
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB10_10:
	movb	$1, %r15b
	jmp	LBB10_20
LBB10_19:
	movsbl	(%rbx), %edx
	movzbl	%r12b, %edi
	xorl	%r15d, %r15d
	leaq	-45(%rbp), %rcx
	leaq	-48(%rbp), %r12
	xorl	%esi, %esi
	movq	%r12, %r8
	callq	__Z11to_internalhsaPhPs
	movsbl	(%rbx), %edx
	movzbl	%r13b, %edi
	leaq	-46(%rbp), %rcx
	xorl	%esi, %esi
	movq	%r12, %r8
	callq	__Z11to_internalhsaPhPs
	movzbl	-45(%rbp), %edx
	movzbl	-46(%rbp), %ecx
	leaq	L_.str.17(%rip), %rsi
	xorl	%eax, %eax
	movl	%r14d, %edi
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
	jmp	LBB10_20
LBB10_21:
	leaq	L___func__._Z10check_movePK10game_statePK9game_moveb(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.15(%rip), %rcx
	movl	$313, %edx              ## imm = 0x139
	callq	___assert_rtn
LBB10_22:
	leaq	L___func__._ZN12_GLOBAL__N_18check_toEPK10game_statetb(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.57(%rip), %rcx
	movl	$279, %edx              ## imm = 0x117
	callq	___assert_rtn
	.cfi_endproc

__ZN12_GLOBAL__N_14hintEbPKcz:          ## @_ZN12_GLOBAL__N_14hintEbPKcz
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp49:
	.cfi_def_cfa_offset 16
Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp51:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
Ltmp52:
	.cfi_offset %rbx, -40
Ltmp53:
	.cfi_offset %r14, -32
Ltmp54:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	testb	%al, %al
	je	LBB11_2
## BB#1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
LBB11_2:
	movq	%r9, -200(%rbp)
	movq	%r8, -208(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, -32(%rbp)
	testb	%dil, %dil
	je	LBB11_4
## BB#3:
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$16, -64(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %r15
	movq	(%r15), %rcx
	leaq	L_.str.49(%rip), %rdi
	movl	$9, %esi
	movl	$1, %edx
	callq	_fwrite
	movq	(%r15), %rdi
	leaq	-64(%rbp), %rdx
	movq	%r14, %rsi
	callq	_vfprintf
	movq	(%r15), %rsi
	movl	$10, %edi
	callq	_fputc
LBB11_4:
	cmpq	-32(%rbp), %rbx
	jne	LBB11_6
## BB#5:
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB11_6:
	callq	___stack_chk_fail
	.cfi_endproc

__ZN12_GLOBAL__N_110check_fromEPK10game_statetb: ## @_ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp55:
	.cfi_def_cfa_offset 16
Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Ltmp58:
	.cfi_offset %rbx, -32
Ltmp59:
	.cfi_offset %r14, -24
	movl	%edx, %r14d
	testq	%rdi, %rdi
	je	LBB12_15
## BB#1:
	movzwl	%si, %ecx
	cmpl	$25, %ecx
	jb	LBB12_4
## BB#2:
	movzbl	%r14b, %edi
	leaq	L_.str.52(%rip), %rsi
LBB12_3:
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
	jmp	LBB12_14
LBB12_4:
	movb	(%rdi), %al
	movw	6(%rdi,%rcx,2), %cx
	testw	%cx, %cx
	je	LBB12_5
## BB#6:
	movswq	6(%rdi), %rdx
	imulq	$1374389535, %rdx, %rdi ## imm = 0x51EB851F
	movq	%rdi, %rbx
	shrq	$63, %rbx
	shrq	$37, %rdi
	addl	%ebx, %edi
	imull	$100, %edi, %ebx
	movl	%edx, %edi
	subl	%ebx, %edi
	movw	%di, %bx
	orw	%si, %bx
	je	LBB12_7
## BB#9:
	testw	%si, %si
	je	LBB12_12
## BB#10:
	testw	%di, %di
	je	LBB12_12
## BB#11:
	movzbl	%r14b, %edi
	leaq	L_.str.55(%rip), %rsi
	jmp	LBB12_3
LBB12_5:
	movzbl	%sil, %edi
	movsbl	%al, %edx
	xorl	%ebx, %ebx
	leaq	-17(%rbp), %rcx
	leaq	-20(%rbp), %r8
	xorl	%esi, %esi
	callq	__Z11to_internalhsaPhPs
	movzbl	-17(%rbp), %edx
	movzbl	%r14b, %edi
	leaq	L_.str.53(%rip), %rsi
	jmp	LBB12_8
LBB12_7:
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax ## imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$37, %rax
	addl	%ecx, %eax
	movzwl	%ax, %edx
	movzbl	%r14b, %edi
	leaq	L_.str.54(%rip), %rsi
	xorl	%ebx, %ebx
LBB12_8:
	xorl	%eax, %eax
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
	jmp	LBB12_14
LBB12_12:
	movb	$1, %bl
	testw	%cx, %cx
	jns	LBB12_14
## BB#13:
	movzbl	%sil, %edi
	movswl	%cx, %esi
	movsbl	%al, %edx
	leaq	-17(%rbp), %rcx
	leaq	-20(%rbp), %r8
	callq	__Z11to_internalhsaPhPs
	movzbl	-17(%rbp), %edx
	movswl	-20(%rbp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movzbl	%r14b, %edi
	leaq	L_.str.56(%rip), %rsi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
LBB12_14:
	movb	%bl, %al
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB12_15:
	leaq	L___func__._ZN12_GLOBAL__N_110check_fromEPK10game_statetb(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.51(%rip), %rcx
	movl	$229, %edx
	callq	___assert_rtn
	.cfi_endproc

	.globl	__Z10apply_moveP10game_statePK9game_moveb
__Z10apply_moveP10game_statePK9game_moveb: ## @_Z10apply_moveP10game_statePK9game_moveb
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp60:
	.cfi_def_cfa_offset 16
Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp62:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp63:
	.cfi_offset %rbx, -56
Ltmp64:
	.cfi_offset %r12, -48
Ltmp65:
	.cfi_offset %r13, -40
Ltmp66:
	.cfi_offset %r14, -32
Ltmp67:
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB13_21
## BB#1:
	testq	%rsi, %rsi
	je	LBB13_21
## BB#2:
	movzwl	(%rsi), %eax
	cmpq	$25, %rax
	jae	LBB13_22
## BB#3:
	movw	6(%rbx,%rax,2), %dx
	testw	%dx, %dx
	jle	LBB13_23
## BB#4:
	movw	2(%rsi), %cx
	addw	%ax, %cx
	leal	-1(%rcx), %esi
	movzwl	%si, %esi
	cmpl	$30, %esi
	jae	LBB13_24
## BB#5:
	movzwl	%cx, %r15d
	cmpl	$24, %r15d
	ja	LBB13_7
## BB#6:
	movswl	6(%rbx,%r15,2), %esi
	cmpl	$-1, %esi
	jl	LBB13_25
LBB13_7:
	testw	%ax, %ax
	je	LBB13_8
## BB#11:
	decl	%edx
	movw	%dx, 6(%rbx,%rax,2)
	jmp	LBB13_12
LBB13_8:
	movswq	6(%rbx), %rdx
	imulq	$1374389535, %rdx, %rsi ## imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$37, %rsi
	addl	%edi, %esi
	imull	$100, %esi, %esi
	negl	%esi
	leal	-1(%rdx,%rsi), %esi
	movzwl	%si, %edi
	cmpl	$16, %edi
	jae	LBB13_26
## BB#9:
	movslq	%edx, %rdx
	imulq	$1374389535, %rdx, %rdx ## imm = 0x51EB851F
	movq	%rdx, %rdi
	shrq	$63, %rdi
	shrq	$37, %rdx
	addl	%edi, %edx
	imull	$100, %edx, %edx
	addl	%edx, %esi
	movw	%si, 6(%rbx)
	movzwl	%si, %edx
	cmpl	$1516, %edx             ## imm = 0x5EC
	jae	LBB13_10
LBB13_12:
	cmpl	$24, %r15d
	ja	LBB13_17
## BB#13:
	movzwl	6(%rbx,%r15,2), %edx
	cmpl	$65535, %edx            ## imm = 0xFFFF
	je	LBB13_14
LBB13_17:
	cmpl	$25, %r15d
	jb	LBB13_19
## BB#18:
	movsbl	(%rbx), %edx
	movzbl	%al, %edi
	leaq	-41(%rbp), %rcx
	leaq	-44(%rbp), %r8
	xorl	%esi, %esi
	callq	__Z11to_internalhsaPhPs
	movzbl	-41(%rbp), %edx
	movzbl	%r14b, %edi
	leaq	L_.str.26(%rip), %rsi
	xorl	%eax, %eax
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
	incw	56(%rbx)
	jmp	LBB13_20
LBB13_19:
	incw	6(%rbx,%r15,2)
	jmp	LBB13_20
LBB13_14:
	movswq	6(%rbx), %rax
	imulq	$1374389535, %rax, %r12 ## imm = 0x51EB851F
	movq	%r12, %r13
	shrq	$37, %r13
	shrq	$63, %r12
	movzbl	%cl, %edi
	movsbl	(%rbx), %edx
	leaq	-41(%rbp), %rcx
	leaq	-44(%rbp), %r8
	xorl	%esi, %esi
	callq	__Z11to_internalhsaPhPs
	movzbl	-41(%rbp), %edx
	movzbl	%r14b, %edi
	leaq	L_.str.25(%rip), %rsi
	xorl	%eax, %eax
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
	leal	1(%r13,%r12), %eax
	movzwl	%ax, %ecx
	cmpl	$16, %ecx
	jae	LBB13_27
## BB#15:
	movswq	6(%rbx), %rcx
	imulq	$1374389535, %rcx, %rdx ## imm = 0x51EB851F
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$37, %rdx
	addl	%esi, %edx
	imull	$100, %edx, %edx
	subl	%edx, %ecx
	imull	$100, %eax, %eax
	addl	%ecx, %eax
	movw	%ax, 6(%rbx)
	movzwl	%ax, %eax
	cmpl	$1516, %eax             ## imm = 0x5EC
	jae	LBB13_28
## BB#16:
	movw	$1, 6(%rbx,%r15,2)
LBB13_20:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB13_21:
	leaq	L___func__._Z10apply_moveP10game_statePK9game_moveb(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.15(%rip), %rcx
	movl	$358, %edx              ## imm = 0x166
	callq	___assert_rtn
LBB13_22:
	leaq	L___func__._Z10apply_moveP10game_statePK9game_moveb(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.19(%rip), %rcx
	movl	$368, %edx              ## imm = 0x170
	callq	___assert_rtn
LBB13_23:
	leaq	L___func__._Z10apply_moveP10game_statePK9game_moveb(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.21(%rip), %rcx
	movl	$369, %edx              ## imm = 0x171
	callq	___assert_rtn
LBB13_24:
	leaq	L___func__._Z10apply_moveP10game_statePK9game_moveb(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.22(%rip), %rcx
	movl	$370, %edx              ## imm = 0x172
	callq	___assert_rtn
LBB13_25:
	leaq	L___func__._Z10apply_moveP10game_statePK9game_moveb(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.24(%rip), %rcx
	movl	$371, %edx              ## imm = 0x173
	callq	___assert_rtn
LBB13_26:
	leaq	L___func__._Z13set_lower_barPst(%rip), %rdi
	leaq	L_.str.43(%rip), %rsi
	leaq	L_.str.45(%rip), %rcx
	movl	$97, %edx
	callq	___assert_rtn
LBB13_10:
	leaq	L___func__._Z13set_lower_barPst(%rip), %rdi
	leaq	L_.str.43(%rip), %rsi
	leaq	L_.str.46(%rip), %rcx
	movl	$99, %edx
	callq	___assert_rtn
LBB13_27:
	leaq	L___func__._Z14set_higher_barPst(%rip), %rdi
	leaq	L_.str.43(%rip), %rsi
	leaq	L_.str.47(%rip), %rcx
	movl	$107, %edx
	callq	___assert_rtn
LBB13_28:
	leaq	L___func__._Z14set_higher_barPst(%rip), %rdi
	leaq	L_.str.43(%rip), %rsi
	leaq	L_.str.46(%rip), %rcx
	movl	$109, %edx
	callq	___assert_rtn
	.cfi_endproc

	.globl	__Z12valid_mmovesRK10game_state
__Z12valid_mmovesRK10game_state:        ## @_Z12valid_mmovesRK10game_state
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp120:
	.cfi_def_cfa_offset 16
Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp122:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
Ltmp123:
	.cfi_offset %rbx, -56
Ltmp124:
	.cfi_offset %r12, -48
Ltmp125:
	.cfi_offset %r13, -40
Ltmp126:
	.cfi_offset %r14, -32
Ltmp127:
	.cfi_offset %r15, -24
	movq	%rsi, -152(%rbp)        ## 8-byte Spill
	movq	%rdi, %r15
	movq	%r15, -168(%rbp)        ## 8-byte Spill
	movq	$0, (%r15)
	movzwl	2(%rsi), %eax
	movl	%eax, -188(%rbp)        ## 4-byte Spill
	movzwl	4(%rsi), %ecx
	movl	%ecx, -192(%rbp)        ## 4-byte Spill
	cmpl	%ecx, %eax
	sete	%al
	movzbl	%al, %r14d
	xorl	%ebx, %ebx
Ltmp68:
	xorl	%r13d, %r13d
	leaq	-64(%rbp), %rdi
	callq	__Z21initialize_multi_moveP10multi_move
Ltmp69:
## BB#1:
	xorl	%ebx, %ebx
Ltmp70:
	xorl	%r13d, %r13d
	movl	$32, %edi
	callq	__Znwm
Ltmp71:
## BB#2:
	leaq	2(%r14,%r14), %rcx
	movq	%rcx, -176(%rbp)        ## 8-byte Spill
	movw	-48(%rbp), %cx
	movw	%cx, 24(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	%rcx, 8(%rax)
	movq	$0, (%rax)
	xorl	%ecx, %ecx
	movq	%rcx, -160(%rbp)        ## 8-byte Spill
	xorl	%r13d, %r13d
	movq	%rax, %rbx
LBB14_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_23 Depth 2
                                        ##       Child Loop BB14_49 Depth 3
                                        ##       Child Loop BB14_28 Depth 3
                                        ##         Child Loop BB14_29 Depth 4
                                        ##       Child Loop BB14_37 Depth 3
                                        ##       Child Loop BB14_41 Depth 3
	testq	%rbx, %rbx
	je	LBB14_4
## BB#22:                               ##   in Loop: Header=BB14_3 Depth=1
	movq	%r13, %r12
	movq	%rbx, %r13
	xorl	%r14d, %r14d
LBB14_23:                               ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB14_49 Depth 3
                                        ##       Child Loop BB14_28 Depth 3
                                        ##         Child Loop BB14_29 Depth 4
                                        ##       Child Loop BB14_37 Depth 3
                                        ##       Child Loop BB14_41 Depth 3
	movq	%r13, %rdi
	movw	24(%rdi), %ax
	movw	%ax, -48(%rbp)
	movq	8(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	(%rdi), %r13
	callq	__ZdlPv
	movzbl	-64(%rbp), %ebx
	cmpq	-160(%rbp), %rbx        ## 8-byte Folded Reload
	jne	LBB14_24
LBB14_25:                               ##   in Loop: Header=BB14_23 Depth=2
Ltmp75:
	movl	$32, %edi
	callq	__Znwm
Ltmp76:
## BB#26:                               ##   in Loop: Header=BB14_23 Depth=2
	movw	-48(%rbp), %cx
	movw	%cx, 24(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	%rcx, 8(%rax)
	movq	(%r15), %rcx
	movq	%rcx, (%rax)
	movq	%rax, (%r15)
	movq	-152(%rbp), %rcx        ## 8-byte Reload
	movw	56(%rcx), %ax
	movw	%ax, -72(%rbp)
	movq	48(%rcx), %rax
	movq	%rax, -80(%rbp)
	movq	40(%rcx), %rax
	movq	%rax, -88(%rbp)
	movq	32(%rcx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rcx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -112(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	movq	%rcx, -120(%rbp)
	movq	%rax, -128(%rbp)
	testb	%bl, %bl
	leaq	-62(%rbp), %rbx
	movl	$0, %r15d
	je	LBB14_27
LBB14_49:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
Ltmp78:
	xorl	%edx, %edx
	leaq	-128(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__Z10check_movePK10game_statePK9game_moveb
Ltmp79:
## BB#50:                               ##   in Loop: Header=BB14_49 Depth=3
	testb	%al, %al
	je	LBB14_51
## BB#56:                               ##   in Loop: Header=BB14_49 Depth=3
Ltmp83:
	xorl	%edx, %edx
	leaq	-128(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__Z10apply_moveP10game_statePK9game_moveb
Ltmp84:
## BB#57:                               ##   in Loop: Header=BB14_49 Depth=3
	incq	%r15
	movzbl	-64(%rbp), %eax
	addq	$4, %rbx
	cmpq	%rax, %r15
	jb	LBB14_49
LBB14_27:                               ##   in Loop: Header=BB14_23 Depth=2
	movq	%r13, -184(%rbp)        ## 8-byte Spill
	movzwl	-124(%rbp), %eax
	movzwl	-126(%rbp), %ecx
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	movl	$2, %r13d
	subq	%rax, %r13
	movw	$0, -44(%rbp)
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        ## 8-byte Spill
LBB14_28:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_23 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB14_29 Depth 4
	testq	%r13, %r13
	movl	$0, %ebx
	je	LBB14_35
LBB14_29:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_23 Depth=2
                                        ##       Parent Loop BB14_28 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movw	-126(%rbp,%rbx,2), %ax
	movw	%ax, -42(%rbp)
Ltmp86:
	xorl	%edx, %edx
	leaq	-128(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	callq	__Z10check_movePK10game_statePK9game_moveb
Ltmp87:
## BB#30:                               ##   in Loop: Header=BB14_29 Depth=4
	testb	%al, %al
	je	LBB14_33
## BB#31:                               ##   in Loop: Header=BB14_29 Depth=4
Ltmp88:
	movl	$16, %edi
	callq	__Znwm
Ltmp89:
## BB#32:                               ##   in Loop: Header=BB14_29 Depth=4
	movl	-44(%rbp), %ecx
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	movl	%ecx, 8(%rax)
	movq	-136(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rax, %r15
	movq	%rax, -136(%rbp)        ## 8-byte Spill
LBB14_33:                               ##   in Loop: Header=BB14_29 Depth=4
	incq	%rbx
	cmpq	%r13, %rbx
	jb	LBB14_29
## BB#34:                               ##   in Loop: Header=BB14_28 Depth=3
	movzwl	-44(%rbp), %ecx
LBB14_35:                               ##   in Loop: Header=BB14_28 Depth=3
	incl	%ecx
	movw	%cx, -44(%rbp)
	movzwl	%cx, %eax
	cmpl	$25, %eax
	jb	LBB14_28
## BB#36:                               ##   in Loop: Header=BB14_23 Depth=2
	testq	%r12, %r12
	je	LBB14_38
LBB14_37:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	(%r12), %rbx
	movq	%r12, %rdi
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %r12
	jne	LBB14_37
LBB14_38:                               ##   in Loop: Header=BB14_23 Depth=2
	movb	-64(%rbp), %al
	incb	%al
	movb	%al, -64(%rbp)
	movq	-144(%rbp), %rcx        ## 8-byte Reload
	testq	%rcx, %rcx
	movq	-184(%rbp), %r13        ## 8-byte Reload
	je	LBB14_62
## BB#39:                               ##   in Loop: Header=BB14_23 Depth=2
	movzbl	%al, %eax
	cmpl	$4, %eax
	movq	%rcx, %r15
	jbe	LBB14_41
	jmp	LBB14_40
LBB14_24:                               ##   in Loop: Header=BB14_23 Depth=2
Ltmp72:
	leaq	L___func__._Z12valid_mmovesRK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.28(%rip), %rcx
	movl	$496, %edx              ## imm = 0x1F0
	callq	___assert_rtn
Ltmp73:
	jmp	LBB14_25
LBB14_40:                               ##   in Loop: Header=BB14_23 Depth=2
Ltmp98:
	leaq	L___func__._Z12valid_mmovesRK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.31(%rip), %rcx
	movl	$515, %edx              ## imm = 0x203
	callq	___assert_rtn
Ltmp99:
LBB14_41:                               ##   Parent Loop BB14_3 Depth=1
                                        ##     Parent Loop BB14_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	leaq	8(%r15), %rbx
Ltmp91:
	xorl	%edx, %edx
	leaq	-128(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__Z10check_movePK10game_statePK9game_moveb
Ltmp92:
## BB#42:                               ##   in Loop: Header=BB14_41 Depth=3
	testb	%al, %al
	je	LBB14_43
LBB14_44:                               ##   in Loop: Header=BB14_41 Depth=3
	movl	(%rbx), %eax
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	movl	%eax, -62(%rbp,%rcx,4)
Ltmp95:
	movl	$32, %edi
	callq	__Znwm
Ltmp96:
## BB#45:                               ##   in Loop: Header=BB14_41 Depth=3
	movw	-48(%rbp), %cx
	movw	%cx, 24(%rax)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	%rdx, 8(%rax)
	movq	%r14, (%rax)
	movq	(%r15), %r15
	testq	%r15, %r15
	movq	%rax, %r14
	je	LBB14_62
## BB#46:                               ##   in Loop: Header=BB14_41 Depth=3
	movzbl	-64(%rbp), %eax
	cmpl	$4, %eax
	jbe	LBB14_41
	jmp	LBB14_40
LBB14_43:                               ##   in Loop: Header=BB14_41 Depth=3
Ltmp93:
	leaq	L___func__._Z12valid_mmovesRK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.32(%rip), %rcx
	movl	$516, %edx              ## imm = 0x204
	callq	___assert_rtn
Ltmp94:
	jmp	LBB14_44
LBB14_62:                               ##   in Loop: Header=BB14_23 Depth=2
	testq	%r13, %r13
	movq	-144(%rbp), %r12        ## 8-byte Reload
	movq	%r14, %rcx
	movq	%rcx, %rbx
	movq	-168(%rbp), %r15        ## 8-byte Reload
	jne	LBB14_23
	jmp	LBB14_63
LBB14_4:                                ##   in Loop: Header=BB14_3 Depth=1
	movq	%r13, -144(%rbp)        ## 8-byte Spill
	xorl	%ebx, %ebx
LBB14_63:                               ##   in Loop: Header=BB14_3 Depth=1
	movq	-160(%rbp), %rax        ## 8-byte Reload
	incq	%rax
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	cmpq	-176(%rbp), %rax        ## 8-byte Folded Reload
	movq	-144(%rbp), %r13        ## 8-byte Reload
	jb	LBB14_3
## BB#5:
	testq	%rbx, %rbx
	je	LBB14_64
## BB#6:
Ltmp101:
	movl	$32, %edi
	callq	__Znwm
	movq	%rax, %r12
Ltmp102:
## BB#7:
	movq	%r15, -168(%rbp)        ## 8-byte Spill
	movw	24(%rbx), %ax
	movw	%ax, 24(%r12)
	movq	8(%rbx), %rax
	movq	16(%rbx), %rcx
	movq	%rcx, 16(%r12)
	movq	%rax, 8(%r12)
	movq	%rbx, -184(%rbp)        ## 8-byte Spill
	movq	(%rbx), %r14
	testq	%r14, %r14
	je	LBB14_8
## BB#9:
	movq	%r12, %r15
LBB14_10:                               ## =>This Inner Loop Header: Depth=1
Ltmp103:
	movl	$32, %edi
	callq	__Znwm
Ltmp104:
## BB#11:                               ##   in Loop: Header=BB14_10 Depth=1
	movw	24(%r14), %cx
	movw	%cx, 24(%rax)
	movq	8(%r14), %rcx
	movq	16(%r14), %rdx
	movq	%rdx, 16(%rax)
	movq	%rcx, 8(%rax)
	movq	%rax, (%r15)
	movq	(%r14), %r14
	testq	%r14, %r14
	movq	%rax, %r15
	jne	LBB14_10
	jmp	LBB14_12
LBB14_47:
Ltmp90:
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	testq	%r15, %r15
	movq	-184(%rbp), %r13        ## 8-byte Reload
	je	LBB14_61
LBB14_48:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15), %rbx
	movq	%r15, %rdi
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %r15
	jne	LBB14_48
	jmp	LBB14_61
LBB14_53:
Ltmp85:
LBB14_55:
	movq	%rax, -136(%rbp)        ## 8-byte Spill
LBB14_61:
	movq	-168(%rbp), %r15        ## 8-byte Reload
LBB14_150:
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	LBB14_152
LBB14_151:                              ## =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbx
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	jne	LBB14_151
LBB14_152:
	movq	$0, (%r15)
	testq	%r14, %r14
	je	LBB14_154
LBB14_153:                              ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rbx
	movq	%r14, %rdi
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %r14
	jne	LBB14_153
LBB14_154:
	testq	%r13, %r13
	je	LBB14_156
LBB14_155:                              ## =>This Inner Loop Header: Depth=1
	movq	(%r13), %rbx
	movq	%r13, %rdi
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %r13
	jne	LBB14_155
LBB14_156:
	testq	%r12, %r12
	je	LBB14_158
LBB14_157:                              ## =>This Inner Loop Header: Depth=1
	movq	(%r12), %rbx
	movq	%r12, %rdi
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %r12
	jne	LBB14_157
LBB14_158:
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	callq	__Unwind_Resume
LBB14_19:
Ltmp77:
LBB14_21:
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	jmp	LBB14_150
LBB14_58:
Ltmp97:
LBB14_60:
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	movq	-144(%rbp), %r12        ## 8-byte Reload
	jmp	LBB14_61
LBB14_64:
	movq	%rbx, -184(%rbp)        ## 8-byte Spill
	movq	(%r15), %r12
	testq	%r12, %r12
	jne	LBB14_65
	jmp	LBB14_80
LBB14_8:
	movq	%r12, %rax
LBB14_12:
	movq	-168(%rbp), %r15        ## 8-byte Reload
	movq	(%r15), %rcx
	movq	%rcx, (%rax)
	movq	%r12, (%r15)
LBB14_65:
	movq	%r15, -168(%rbp)        ## 8-byte Spill
	movq	%r15, %rbx
	movq	%r15, %r13
LBB14_66:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_67 Depth 2
                                        ##     Child Loop BB14_69 Depth 2
                                        ##     Child Loop BB14_75 Depth 2
	addq	$8, %r12
	xorl	%edx, %edx
	movq	-152(%rbp), %rdi        ## 8-byte Reload
	movq	%r12, %rsi
	callq	__ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
	testb	%al, %al
	movq	%r13, %r14
	movl	$2, %eax
	je	LBB14_67
## BB#77:                               ##   in Loop: Header=BB14_66 Depth=1
	movq	(%r15), %r14
	jmp	LBB14_78
LBB14_67:                               ##   Parent Loop BB14_66 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	decq	%rax
	jo	LBB14_159
## BB#68:                               ##   in Loop: Header=BB14_67 Depth=2
	movq	(%r14), %r14
	testq	%rax, %rax
	jg	LBB14_67
	jmp	LBB14_69
LBB14_71:                               ##   in Loop: Header=BB14_69 Depth=2
	movq	(%r14), %r14
LBB14_69:                               ##   Parent Loop BB14_66 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testq	%r14, %r14
	je	LBB14_72
## BB#70:                               ##   in Loop: Header=BB14_69 Depth=2
	leaq	8(%r14), %rsi
	xorl	%edx, %edx
	movq	-152(%rbp), %rdi        ## 8-byte Reload
	callq	__ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
	testb	%al, %al
	je	LBB14_71
LBB14_72:                               ##   in Loop: Header=BB14_66 Depth=1
	cmpq	%r14, %r13
	je	LBB14_76
## BB#73:                               ##   in Loop: Header=BB14_66 Depth=1
	movq	(%rbx), %rdi
	cmpq	%r14, %rdi
	je	LBB14_76
## BB#74:                               ##   in Loop: Header=BB14_66 Depth=1
	movq	%r14, (%r15)
LBB14_75:                               ##   Parent Loop BB14_66 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %rbx
	callq	__ZdlPv
	cmpq	%r14, %rbx
	movq	%rbx, %rdi
	jne	LBB14_75
LBB14_76:                               ##   in Loop: Header=BB14_66 Depth=1
	testq	%r14, %r14
	je	LBB14_79
LBB14_78:                               ##   in Loop: Header=BB14_66 Depth=1
	movq	(%r14), %r12
	testq	%r12, %r12
	movq	%r14, %rbx
	movq	%r14, %r13
	movq	%r14, %r15
	jne	LBB14_66
LBB14_79:
	movq	-168(%rbp), %r15        ## 8-byte Reload
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	movq	-144(%rbp), %r13        ## 8-byte Reload
	je	LBB14_80
LBB14_81:
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	movq	%rdi, %r8
	movq	%rdi, %r14
	je	LBB14_92
## BB#82:
	movzbl	8(%rdi), %eax
	movzbl	8(%rdx), %ecx
	cmpl	%eax, %ecx
	movq	%rdi, %r8
	cmovbq	%rdx, %r8
	movq	(%rdx), %rcx
	cmovbq	%rdi, %rdx
	movq	%rdx, %r14
	jmp	LBB14_83
LBB14_89:                               ##   in Loop: Header=BB14_83 Depth=1
	movq	(%rdx), %rcx
LBB14_83:                               ## =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	LBB14_92
## BB#84:                               ##   in Loop: Header=BB14_83 Depth=1
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	LBB14_85
## BB#87:                               ##   in Loop: Header=BB14_83 Depth=1
	movzbl	8(%rdx), %esi
	movzbl	8(%rcx), %ebx
	movb	8(%r8), %al
	movzbl	%al, %eax
	cmpl	%ebx, %esi
	jae	LBB14_90
## BB#88:                               ##   in Loop: Header=BB14_83 Depth=1
	movzbl	%sil, %esi
	cmpl	%eax, %esi
	cmovbq	%rdx, %r8
	movzbl	8(%r14), %eax
	movzbl	%bl, %esi
	cmpl	%eax, %esi
	cmovaeq	%rcx, %r14
	jmp	LBB14_89
LBB14_90:                               ##   in Loop: Header=BB14_83 Depth=1
	movzbl	%bl, %ebx
	cmpl	%eax, %ebx
	cmovbq	%rcx, %r8
	movzbl	8(%r14), %eax
	movzbl	%sil, %ecx
	cmpl	%eax, %ecx
	cmovaeq	%rdx, %r14
	jmp	LBB14_89
LBB14_13:
Ltmp105:
	movq	%rax, %rdi
	callq	___cxa_begin_catch
LBB14_14:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r12), %rbx
	movq	%r12, %rdi
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %r12
	jne	LBB14_14
## BB#15:
Ltmp106:
	callq	___cxa_rethrow
Ltmp107:
## BB#16:
LBB14_85:
	movzbl	8(%rcx), %edx
	movzbl	8(%r8), %eax
	cmpl	%eax, %edx
	jae	LBB14_91
## BB#86:
	movq	%rcx, %r8
	jmp	LBB14_92
LBB14_91:
	movzbl	8(%r14), %eax
	movzbl	%dl, %edx
	cmpl	%eax, %edx
	cmovaeq	%rcx, %r14
LBB14_92:
	movzbl	8(%r14), %edx
	movzbl	8(%r8), %eax
	cmpl	%edx, %eax
	je	LBB14_107
## BB#93:
	movq	%r15, %rcx
	movq	%r15, %rax
	jmp	LBB14_94
LBB14_116:                              ##   in Loop: Header=BB14_94 Depth=1
	movb	8(%r14), %dl
	movq	%rbx, %rcx
	movq	%rbx, %rax
LBB14_94:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_95 Depth 2
                                        ##     Child Loop BB14_98 Depth 2
                                        ##     Child Loop BB14_104 Depth 2
	movzbl	%dl, %edx
	movzbl	8(%rdi), %esi
	cmpl	%edx, %esi
	movq	%rcx, %rbx
	movl	$2, %esi
	jae	LBB14_114
LBB14_95:                               ##   Parent Loop BB14_94 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	decq	%rsi
	jo	LBB14_159
## BB#96:                               ##   in Loop: Header=BB14_95 Depth=2
	movq	(%rbx), %rbx
	testq	%rsi, %rsi
	jg	LBB14_95
## BB#97:                               ##   in Loop: Header=BB14_94 Depth=1
	movq	%r15, %r12
	jmp	LBB14_98
LBB14_100:                              ##   in Loop: Header=BB14_98 Depth=2
	movq	(%rbx), %rbx
LBB14_98:                               ##   Parent Loop BB14_94 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	LBB14_101
## BB#99:                               ##   in Loop: Header=BB14_98 Depth=2
	movzbl	8(%rbx), %esi
	cmpl	%edx, %esi
	jb	LBB14_100
LBB14_101:                              ##   in Loop: Header=BB14_94 Depth=1
	cmpq	%rbx, %rcx
	je	LBB14_105
## BB#102:                              ##   in Loop: Header=BB14_94 Depth=1
	cmpq	%rbx, %rdi
	je	LBB14_105
## BB#103:                              ##   in Loop: Header=BB14_94 Depth=1
	movq	%rbx, (%rax)
LBB14_104:                              ##   Parent Loop BB14_94 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r15
	callq	__ZdlPv
	cmpq	%rbx, %r15
	movq	%r15, %rdi
	jne	LBB14_104
LBB14_105:                              ##   in Loop: Header=BB14_94 Depth=1
	testq	%rbx, %rbx
	movq	%r12, %r15
	jne	LBB14_115
	jmp	LBB14_106
LBB14_114:                              ##   in Loop: Header=BB14_94 Depth=1
	movq	%rdi, %rbx
LBB14_115:                              ##   in Loop: Header=BB14_94 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	LBB14_116
LBB14_106:
	movq	(%r15), %rdi
LBB14_107:
	testq	%rdi, %rdi
	je	LBB14_108
LBB14_109:
	movl	-192(%rbp), %eax        ## 4-byte Reload
	movzwl	%ax, %eax
	movl	-188(%rbp), %ecx        ## 4-byte Reload
	movzwl	%cx, %ecx
	cmpl	%eax, %ecx
	je	LBB14_144
## BB#110:
	movq	-152(%rbp), %rax        ## 8-byte Reload
	movzwl	2(%rax), %ecx
	movzwl	4(%rax), %eax
	cmpl	%eax, %ecx
	cmovaew	%cx, %ax
	movzbl	8(%r14), %ecx
	cmpq	-176(%rbp), %rcx        ## 8-byte Folded Reload
	jae	LBB14_144
## BB#111:
	movzwl	%ax, %r14d
	movq	%rdi, %rax
LBB14_112:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_118 Depth 2
	movzbl	8(%rax), %ecx
	testq	%rcx, %rcx
	je	LBB14_124
## BB#113:                              ##   in Loop: Header=BB14_112 Depth=1
	xorl	%edx, %edx
LBB14_118:                              ##   Parent Loop BB14_112 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzwl	12(%rax,%rdx,4), %esi
	cmpl	%r14d, %esi
	je	LBB14_119
## BB#117:                              ##   in Loop: Header=BB14_118 Depth=2
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	LBB14_118
LBB14_124:                              ##   in Loop: Header=BB14_112 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB14_112
	jmp	LBB14_142
LBB14_119:
	movq	%r15, %rcx
	movq	%r15, %r8
LBB14_120:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_122 Depth 2
                                        ##     Child Loop BB14_127 Depth 2
                                        ##     Child Loop BB14_130 Depth 2
                                        ##       Child Loop BB14_134 Depth 3
                                        ##     Child Loop BB14_138 Depth 2
	movzbl	8(%rdi), %edx
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	movl	$2, %esi
	je	LBB14_127
## BB#121:                              ##   in Loop: Header=BB14_120 Depth=1
	xorl	%esi, %esi
LBB14_122:                              ##   Parent Loop BB14_120 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzwl	12(%rdi,%rsi,4), %ebx
	cmpl	%r14d, %ebx
	je	LBB14_123
## BB#125:                              ##   in Loop: Header=BB14_122 Depth=2
	incq	%rsi
	cmpq	%rdx, %rsi
	jb	LBB14_122
## BB#126:                              ##   in Loop: Header=BB14_120 Depth=1
	movq	%rcx, %rbx
	movl	$2, %esi
LBB14_127:                              ##   Parent Loop BB14_120 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	decq	%rsi
	jo	LBB14_159
## BB#128:                              ##   in Loop: Header=BB14_127 Depth=2
	movq	(%rbx), %rbx
	testq	%rsi, %rsi
	jg	LBB14_127
## BB#129:                              ##   in Loop: Header=BB14_120 Depth=1
	movq	%r15, %r12
	jmp	LBB14_130
LBB14_160:                              ##   in Loop: Header=BB14_130 Depth=2
	movq	(%rbx), %rbx
LBB14_130:                              ##   Parent Loop BB14_120 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB14_134 Depth 3
	testq	%rbx, %rbx
	je	LBB14_135
## BB#131:                              ##   in Loop: Header=BB14_130 Depth=2
	movzbl	8(%rbx), %edx
	testq	%rdx, %rdx
	je	LBB14_160
## BB#132:                              ##   in Loop: Header=BB14_130 Depth=2
	xorl	%esi, %esi
LBB14_134:                              ##   Parent Loop BB14_120 Depth=1
                                        ##     Parent Loop BB14_130 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movzwl	12(%rbx,%rsi,4), %eax
	cmpl	%r14d, %eax
	je	LBB14_135
## BB#133:                              ##   in Loop: Header=BB14_134 Depth=3
	incq	%rsi
	cmpq	%rdx, %rsi
	jb	LBB14_134
	jmp	LBB14_160
LBB14_135:                              ##   in Loop: Header=BB14_120 Depth=1
	cmpq	%rbx, %rcx
	je	LBB14_139
## BB#136:                              ##   in Loop: Header=BB14_120 Depth=1
	cmpq	%rbx, %rdi
	je	LBB14_139
## BB#137:                              ##   in Loop: Header=BB14_120 Depth=1
	movq	%rbx, (%r8)
LBB14_138:                              ##   Parent Loop BB14_120 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %r15
	callq	__ZdlPv
	cmpq	%rbx, %r15
	movq	%r15, %rdi
	jne	LBB14_138
LBB14_139:                              ##   in Loop: Header=BB14_120 Depth=1
	testq	%rbx, %rbx
	movq	%r12, %r15
	jne	LBB14_140
	jmp	LBB14_141
LBB14_123:                              ##   in Loop: Header=BB14_120 Depth=1
	movq	(%r8), %rbx
LBB14_140:                              ##   in Loop: Header=BB14_120 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rcx
	movq	%rbx, %r8
	jne	LBB14_120
LBB14_141:
	movq	(%r15), %rdi
LBB14_142:
	testq	%rdi, %rdi
	je	LBB14_143
LBB14_144:
	movq	-184(%rbp), %rdi        ## 8-byte Reload
	testq	%rdi, %rdi
	je	LBB14_146
LBB14_145:                              ## =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbx
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	jne	LBB14_145
LBB14_146:
	testq	%r13, %r13
	je	LBB14_148
LBB14_147:                              ## =>This Inner Loop Header: Depth=1
	movq	(%r13), %rbx
	movq	%r13, %rdi
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %r13
	jne	LBB14_147
LBB14_148:
	movq	%r15, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB14_159:
	ud2
LBB14_51:
Ltmp80:
	leaq	L___func__._Z12valid_mmovesRK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.30(%rip), %rcx
	movl	$505, %edx              ## imm = 0x1F9
	callq	___assert_rtn
Ltmp81:
## BB#52:
LBB14_80:
Ltmp117:
	leaq	L___func__._Z12valid_mmovesRK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.33(%rip), %rcx
	movl	$536, %edx              ## imm = 0x218
	movq	-184(%rbp), %rbx        ## 8-byte Reload
	callq	___assert_rtn
Ltmp118:
	jmp	LBB14_81
LBB14_17:
Ltmp119:
	movq	%rbx, -184(%rbp)        ## 8-byte Spill
	movq	%r13, %r12
	movq	%r15, -168(%rbp)        ## 8-byte Spill
	movq	%rax, -136(%rbp)        ## 8-byte Spill
LBB14_18:
	xorl	%r14d, %r14d
	movq	-184(%rbp), %r13        ## 8-byte Reload
	jmp	LBB14_61
LBB14_59:
Ltmp100:
	jmp	LBB14_60
LBB14_108:
Ltmp114:
	movq	%r13, %r12
	leaq	L___func__._Z12valid_mmovesRK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.33(%rip), %rcx
	movl	$548, %edx              ## imm = 0x224
	callq	___assert_rtn
Ltmp115:
	jmp	LBB14_109
LBB14_143:
Ltmp112:
	movq	%r13, %r12
	leaq	L___func__._Z12valid_mmovesRK10game_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.33(%rip), %rcx
	movl	$572, %edx              ## imm = 0x23C
	callq	___assert_rtn
Ltmp113:
	jmp	LBB14_144
LBB14_149:
Ltmp116:
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	xorl	%r14d, %r14d
	movq	-184(%rbp), %r13        ## 8-byte Reload
	jmp	LBB14_150
LBB14_161:
Ltmp108:
	movq	%r13, %r12
	movq	%rax, -136(%rbp)        ## 8-byte Spill
Ltmp109:
	callq	___cxa_end_catch
Ltmp110:
	jmp	LBB14_18
LBB14_162:
Ltmp111:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB14_20:
Ltmp74:
	jmp	LBB14_21
LBB14_54:
Ltmp82:
	jmp	LBB14_55
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table14:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\331\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\320\001"              ## Call site table length
Lset0 = Ltmp68-Lfunc_begin0             ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp71-Ltmp68                   ##   Call between Ltmp68 and Ltmp71
	.long	Lset1
Lset2 = Ltmp119-Lfunc_begin0            ##     jumps to Ltmp119
	.long	Lset2
	.byte	0                       ##   On action: cleanup
Lset3 = Ltmp75-Lfunc_begin0             ## >> Call Site 2 <<
	.long	Lset3
Lset4 = Ltmp76-Ltmp75                   ##   Call between Ltmp75 and Ltmp76
	.long	Lset4
Lset5 = Ltmp77-Lfunc_begin0             ##     jumps to Ltmp77
	.long	Lset5
	.byte	0                       ##   On action: cleanup
Lset6 = Ltmp78-Lfunc_begin0             ## >> Call Site 3 <<
	.long	Lset6
Lset7 = Ltmp84-Ltmp78                   ##   Call between Ltmp78 and Ltmp84
	.long	Lset7
Lset8 = Ltmp85-Lfunc_begin0             ##     jumps to Ltmp85
	.long	Lset8
	.byte	0                       ##   On action: cleanup
Lset9 = Ltmp86-Lfunc_begin0             ## >> Call Site 4 <<
	.long	Lset9
Lset10 = Ltmp89-Ltmp86                  ##   Call between Ltmp86 and Ltmp89
	.long	Lset10
Lset11 = Ltmp90-Lfunc_begin0            ##     jumps to Ltmp90
	.long	Lset11
	.byte	0                       ##   On action: cleanup
Lset12 = Ltmp72-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset12
Lset13 = Ltmp73-Ltmp72                  ##   Call between Ltmp72 and Ltmp73
	.long	Lset13
Lset14 = Ltmp74-Lfunc_begin0            ##     jumps to Ltmp74
	.long	Lset14
	.byte	0                       ##   On action: cleanup
Lset15 = Ltmp98-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset15
Lset16 = Ltmp99-Ltmp98                  ##   Call between Ltmp98 and Ltmp99
	.long	Lset16
Lset17 = Ltmp100-Lfunc_begin0           ##     jumps to Ltmp100
	.long	Lset17
	.byte	0                       ##   On action: cleanup
Lset18 = Ltmp91-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset18
Lset19 = Ltmp96-Ltmp91                  ##   Call between Ltmp91 and Ltmp96
	.long	Lset19
Lset20 = Ltmp97-Lfunc_begin0            ##     jumps to Ltmp97
	.long	Lset20
	.byte	0                       ##   On action: cleanup
Lset21 = Ltmp93-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset21
Lset22 = Ltmp94-Ltmp93                  ##   Call between Ltmp93 and Ltmp94
	.long	Lset22
Lset23 = Ltmp100-Lfunc_begin0           ##     jumps to Ltmp100
	.long	Lset23
	.byte	0                       ##   On action: cleanup
Lset24 = Ltmp101-Lfunc_begin0           ## >> Call Site 9 <<
	.long	Lset24
Lset25 = Ltmp102-Ltmp101                ##   Call between Ltmp101 and Ltmp102
	.long	Lset25
Lset26 = Ltmp119-Lfunc_begin0           ##     jumps to Ltmp119
	.long	Lset26
	.byte	0                       ##   On action: cleanup
Lset27 = Ltmp103-Lfunc_begin0           ## >> Call Site 10 <<
	.long	Lset27
Lset28 = Ltmp104-Ltmp103                ##   Call between Ltmp103 and Ltmp104
	.long	Lset28
Lset29 = Ltmp105-Lfunc_begin0           ##     jumps to Ltmp105
	.long	Lset29
	.byte	1                       ##   On action: 1
Lset30 = Ltmp104-Lfunc_begin0           ## >> Call Site 11 <<
	.long	Lset30
Lset31 = Ltmp106-Ltmp104                ##   Call between Ltmp104 and Ltmp106
	.long	Lset31
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset32 = Ltmp106-Lfunc_begin0           ## >> Call Site 12 <<
	.long	Lset32
Lset33 = Ltmp107-Ltmp106                ##   Call between Ltmp106 and Ltmp107
	.long	Lset33
Lset34 = Ltmp108-Lfunc_begin0           ##     jumps to Ltmp108
	.long	Lset34
	.byte	0                       ##   On action: cleanup
Lset35 = Ltmp80-Lfunc_begin0            ## >> Call Site 13 <<
	.long	Lset35
Lset36 = Ltmp81-Ltmp80                  ##   Call between Ltmp80 and Ltmp81
	.long	Lset36
Lset37 = Ltmp82-Lfunc_begin0            ##     jumps to Ltmp82
	.long	Lset37
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp117-Lfunc_begin0           ## >> Call Site 14 <<
	.long	Lset38
Lset39 = Ltmp118-Ltmp117                ##   Call between Ltmp117 and Ltmp118
	.long	Lset39
Lset40 = Ltmp119-Lfunc_begin0           ##     jumps to Ltmp119
	.long	Lset40
	.byte	0                       ##   On action: cleanup
Lset41 = Ltmp114-Lfunc_begin0           ## >> Call Site 15 <<
	.long	Lset41
Lset42 = Ltmp113-Ltmp114                ##   Call between Ltmp114 and Ltmp113
	.long	Lset42
Lset43 = Ltmp116-Lfunc_begin0           ##     jumps to Ltmp116
	.long	Lset43
	.byte	0                       ##   On action: cleanup
Lset44 = Ltmp109-Lfunc_begin0           ## >> Call Site 16 <<
	.long	Lset44
Lset45 = Ltmp110-Ltmp109                ##   Call between Ltmp109 and Ltmp110
	.long	Lset45
Lset46 = Ltmp111-Lfunc_begin0           ##     jumps to Ltmp111
	.long	Lset46
	.byte	1                       ##   On action: 1
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
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp147:
	.cfi_def_cfa_offset 16
Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp149:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp150:
	.cfi_offset %rbx, -56
Ltmp151:
	.cfi_offset %r12, -48
Ltmp152:
	.cfi_offset %r13, -40
Ltmp153:
	.cfi_offset %r14, -32
Ltmp154:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, -48(%rbp)
	testq	%r15, %r15
	je	LBB15_70
## BB#1:
	testq	%r14, %r14
	je	LBB15_70
## BB#2:
	movzbl	(%r15), %eax
	cmpl	$255, %eax
	je	LBB15_4
## BB#3:
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	LBB15_71
LBB15_4:
	movw	2(%r15), %ax
	testw	%ax, %ax
	je	LBB15_72
## BB#5:
	movzwl	4(%r15), %ecx
	decl	%ecx
	movzwl	%cx, %ecx
	cmpl	$5, %ecx
	ja	LBB15_72
## BB#6:
	movzwl	%ax, %eax
	cmpl	$7, %eax
	jae	LBB15_72
## BB#7:
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
	testb	%al, %al
	je	LBB15_8
## BB#9:
	movw	2(%r15), %ax
	movw	%ax, -498(%rbp)         ## 2-byte Spill
	movw	4(%r15), %ax
	movw	%ax, -500(%rbp)         ## 2-byte Spill
	leaq	-368(%rbp), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__Z11to_internalPK10game_statePS_
	movsbl	(%r15), %esi
	leaq	-392(%rbp), %rdx
	movq	%r14, %rdi
	callq	__Z11to_internalPK10multi_moveaPS_
	leaq	-400(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__Z12valid_mmovesRK10game_state
	cmpb	$0, -392(%rbp)
	je	LBB15_10
## BB#11:
	leaq	-390(%rbp), %rbx
	xorl	%r13d, %r13d
	leaq	-368(%rbp), %r12
LBB15_12:                               ## =>This Inner Loop Header: Depth=1
Ltmp128:
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	__Z10check_movePK10game_statePK9game_moveb
Ltmp129:
## BB#13:                               ##   in Loop: Header=BB15_12 Depth=1
	testb	%al, %al
	je	LBB15_44
## BB#14:                               ##   in Loop: Header=BB15_12 Depth=1
Ltmp130:
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	__Z10apply_moveP10game_statePK9game_moveb
Ltmp131:
## BB#15:                               ##   in Loop: Header=BB15_12 Depth=1
	incq	%r13
	movzbl	-392(%rbp), %eax
	addq	$4, %rbx
	cmpq	%rax, %r13
	jb	LBB15_12
	jmp	LBB15_16
LBB15_8:
	xorl	%r14d, %r14d
	jmp	LBB15_63
LBB15_10:
	xorl	%eax, %eax
LBB15_16:
	movzwl	-500(%rbp), %r8d        ## 2-byte Folded Reload
	movzwl	-498(%rbp), %r9d        ## 2-byte Folded Reload
	cmpl	%r8d, %r9d
	sete	%cl
	movzbl	(%r14), %esi
	movzbl	%cl, %ecx
	leal	2(%rcx,%rcx), %ecx
	cmpl	%ecx, %esi
	jne	LBB15_24
## BB#17:
	movq	-400(%rbp), %rbx
LBB15_18:
	testq	%rbx, %rbx
	je	LBB15_56
## BB#19:
	movzbl	%al, %edx
LBB15_20:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_53 Depth 2
	movzbl	8(%rbx), %ecx
	cmpl	%edx, %ecx
	jne	LBB15_55
## BB#21:                               ##   in Loop: Header=BB15_20 Depth=1
	testb	%al, %al
	je	LBB15_59
## BB#22:                               ##   in Loop: Header=BB15_20 Depth=1
	xorl	%esi, %esi
LBB15_53:                               ##   Parent Loop BB15_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzwl	10(%rbx,%rsi,4), %ecx
	movzwl	-390(%rbp,%rsi,4), %edi
	cmpl	%edi, %ecx
	jne	LBB15_55
## BB#54:                               ##   in Loop: Header=BB15_53 Depth=2
	movzwl	12(%rbx,%rsi,4), %ecx
	movzwl	-388(%rbp,%rsi,4), %edi
	cmpl	%edi, %ecx
	jne	LBB15_55
## BB#52:                               ##   in Loop: Header=BB15_53 Depth=2
	incq	%rsi
	cmpq	%rdx, %rsi
	jb	LBB15_53
	jmp	LBB15_59
LBB15_55:                               ##   in Loop: Header=BB15_20 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB15_20
LBB15_56:
Ltmp144:
	leaq	L___func__._Z16apply_multi_moveP10game_statePK10multi_move(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.42(%rip), %rcx
	movl	$689, %edx              ## imm = 0x2B1
	callq	___assert_rtn
Ltmp145:
## BB#57:
LBB15_59:
	movb	$1, %r14b
Ltmp142:
	leaq	-368(%rbp), %rdi
	movq	%r15, %rsi
	callq	__Z11to_internalPK10game_statePS_
Ltmp143:
	jmp	LBB15_60
LBB15_58:
Ltmp146:
	jmp	LBB15_66
LBB15_65:
Ltmp132:
LBB15_66:
	movq	%rax, %r14
	movq	-400(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB15_68
LBB15_67:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbx
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	jne	LBB15_67
LBB15_68:
	movq	$0, -400(%rbp)
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB15_24:
	movq	-400(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB15_28
## BB#25:
	movzbl	%sil, %edx
	movq	%rbx, %rcx
LBB15_26:                               ## =>This Inner Loop Header: Depth=1
	movzbl	8(%rcx), %edi
	cmpl	%edx, %edi
	ja	LBB15_37
## BB#27:                               ##   in Loop: Header=BB15_26 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	LBB15_26
LBB15_28:
	movzwl	-366(%rbp), %edx
	movzwl	-364(%rbp), %ecx
	cmpl	%ecx, %edx
	cmovaew	%dx, %cx
	cmpl	%r8d, %r9d
	je	LBB15_18
## BB#29:
	testb	%sil, %sil
	je	LBB15_18
## BB#30:
	movzwl	%cx, %edx
	movzwl	4(%r14), %ecx
	cmpl	%edx, %ecx
	je	LBB15_18
## BB#31:
	testq	%rbx, %rbx
	je	LBB15_18
## BB#32:
	movq	%rbx, %rcx
LBB15_33:                               ## =>This Inner Loop Header: Depth=1
	movzbl	8(%rcx), %esi
	cmpl	$1, %esi
	jne	LBB15_34
LBB15_35:                               ##   in Loop: Header=BB15_33 Depth=1
	leaq	8(%rcx), %rsi
	movzwl	4(%rsi), %edi
	cmpl	%edx, %edi
	je	LBB15_45
## BB#36:                               ##   in Loop: Header=BB15_33 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	LBB15_33
	jmp	LBB15_18
LBB15_34:                               ##   in Loop: Header=BB15_33 Depth=1
Ltmp136:
	leaq	L___func__._ZZ16apply_multi_moveP10game_statePK10multi_moveENK3$_6clERS2_(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.64(%rip), %rcx
	movl	$652, %edx              ## imm = 0x28C
	callq	___assert_rtn
Ltmp137:
	jmp	LBB15_35
LBB15_73:
Ltmp138:
	jmp	LBB15_66
LBB15_37:
	addq	$8, %rcx
	movw	16(%rcx), %ax
	movw	%ax, -432(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	movq	%rcx, -440(%rbp)
	movq	%rax, -448(%rbp)
	movsbl	(%r15), %esi
Ltmp133:
	leaq	-448(%rbp), %rdi
	leaq	-424(%rbp), %rdx
	callq	__Z11to_internalPK10multi_moveaPS_
Ltmp134:
## BB#38:
	cmpb	$0, -424(%rbp)
	je	LBB15_42
## BB#39:
	leaq	L_.str.38(%rip), %r14
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
LBB15_40:                               ## =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rbx
	leaq	-304(%rbp,%rbx), %rdi
	movl	$256, %esi              ## imm = 0x100
	subq	%rbx, %rsi
	movzwl	-422(%rbp,%r15,4), %ecx
	movzwl	-420(%rbp,%r15,4), %r8d
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	_snprintf
	addl	%eax, %ebx
	jo	LBB15_23
## BB#41:                               ##   in Loop: Header=BB15_40 Depth=1
	incq	%r15
	movzbl	-424(%rbp), %eax
	cmpq	%rax, %r15
	jb	LBB15_40
LBB15_42:
	leaq	L_.str.39(%rip), %rsi
	jmp	LBB15_43
LBB15_45:
	movw	16(%rsi), %ax
	movw	%ax, -480(%rbp)
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	%rcx, -488(%rbp)
	movq	%rax, -496(%rbp)
	movsbl	(%r15), %esi
Ltmp139:
	leaq	-496(%rbp), %rdi
	leaq	-472(%rbp), %rdx
	callq	__Z11to_internalPK10multi_moveaPS_
Ltmp140:
## BB#46:
	cmpb	$0, -472(%rbp)
	je	LBB15_50
## BB#47:
	leaq	L_.str.38(%rip), %r14
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
LBB15_48:                               ## =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rbx
	leaq	-304(%rbp,%rbx), %rdi
	movl	$256, %esi              ## imm = 0x100
	subq	%rbx, %rsi
	movzwl	-470(%rbp,%r15,4), %ecx
	movzwl	-468(%rbp,%r15,4), %r8d
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	_snprintf
	addl	%eax, %ebx
	jo	LBB15_23
## BB#49:                               ##   in Loop: Header=BB15_48 Depth=1
	incq	%r15
	movzbl	-472(%rbp), %eax
	cmpq	%rax, %r15
	jb	LBB15_48
LBB15_50:
	leaq	L_.str.40(%rip), %rsi
LBB15_43:
	leaq	-304(%rbp), %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
LBB15_44:
	xorl	%r14d, %r14d
LBB15_60:
	movq	-400(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB15_62
LBB15_61:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbx
	callq	__ZdlPv
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	jne	LBB15_61
LBB15_62:
	movq	$0, -400(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB15_63:
	cmpq	-48(%rbp), %rbx
	jne	LBB15_64
## BB#69:
	movb	%r14b, %al
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB15_72:
	leaq	L___func__._Z16apply_multi_moveP10game_statePK10multi_move(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.37(%rip), %rcx
	movl	$582, %edx              ## imm = 0x246
	callq	___assert_rtn
LBB15_23:
	ud2
LBB15_71:
	leaq	L___func__._Z16apply_multi_moveP10game_statePK10multi_move(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.35(%rip), %rcx
	movl	$580, %edx              ## imm = 0x244
	callq	___assert_rtn
LBB15_70:
	leaq	L___func__._Z16apply_multi_moveP10game_statePK10multi_move(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str.34(%rip), %rcx
	movl	$579, %edx              ## imm = 0x243
	callq	___assert_rtn
LBB15_64:
	callq	___stack_chk_fail
LBB15_51:
Ltmp135:
	jmp	LBB15_66
LBB15_74:
Ltmp141:
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
Lset47 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset47
Lset48 = Ltmp128-Lfunc_begin1           ##   Call between Lfunc_begin1 and Ltmp128
	.long	Lset48
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset49 = Ltmp128-Lfunc_begin1           ## >> Call Site 2 <<
	.long	Lset49
Lset50 = Ltmp131-Ltmp128                ##   Call between Ltmp128 and Ltmp131
	.long	Lset50
Lset51 = Ltmp132-Lfunc_begin1           ##     jumps to Ltmp132
	.long	Lset51
	.byte	0                       ##   On action: cleanup
Lset52 = Ltmp144-Lfunc_begin1           ## >> Call Site 3 <<
	.long	Lset52
Lset53 = Ltmp143-Ltmp144                ##   Call between Ltmp144 and Ltmp143
	.long	Lset53
Lset54 = Ltmp146-Lfunc_begin1           ##     jumps to Ltmp146
	.long	Lset54
	.byte	0                       ##   On action: cleanup
Lset55 = Ltmp143-Lfunc_begin1           ## >> Call Site 4 <<
	.long	Lset55
Lset56 = Ltmp136-Ltmp143                ##   Call between Ltmp143 and Ltmp136
	.long	Lset56
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset57 = Ltmp136-Lfunc_begin1           ## >> Call Site 5 <<
	.long	Lset57
Lset58 = Ltmp137-Ltmp136                ##   Call between Ltmp136 and Ltmp137
	.long	Lset58
Lset59 = Ltmp138-Lfunc_begin1           ##     jumps to Ltmp138
	.long	Lset59
	.byte	0                       ##   On action: cleanup
Lset60 = Ltmp133-Lfunc_begin1           ## >> Call Site 6 <<
	.long	Lset60
Lset61 = Ltmp134-Ltmp133                ##   Call between Ltmp133 and Ltmp134
	.long	Lset61
Lset62 = Ltmp135-Lfunc_begin1           ##     jumps to Ltmp135
	.long	Lset62
	.byte	0                       ##   On action: cleanup
Lset63 = Ltmp139-Lfunc_begin1           ## >> Call Site 7 <<
	.long	Lset63
Lset64 = Ltmp140-Ltmp139                ##   Call between Ltmp139 and Ltmp140
	.long	Lset64
Lset65 = Ltmp141-Lfunc_begin1           ##     jumps to Ltmp141
	.long	Lset65
	.byte	0                       ##   On action: cleanup
Lset66 = Ltmp140-Lfunc_begin1           ## >> Call Site 8 <<
	.long	Lset66
Lset67 = Lfunc_end1-Ltmp140             ##   Call between Ltmp140 and Lfunc_end1
	.long	Lset67
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
__ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb: ## @_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp155:
	.cfi_def_cfa_offset 16
Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp157:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp158:
	.cfi_offset %rbx, -24
	movzbl	(%rsi), %eax
	cmpl	$5, %eax
	jb	LBB16_2
## BB#1:
	movzbl	%dl, %edi
	leaq	L_.str.61(%rip), %rsi
	jmp	LBB16_15
LBB16_2:
	movzwl	4(%rdi), %ecx
	movzwl	2(%rdi), %edi
	movzbl	%al, %eax
	cmpl	%ecx, %edi
	jne	LBB16_3
## BB#7:
	cmpl	$4, %eax
	jb	LBB16_11
## BB#8:
	movzwl	4(%rsi), %ecx
	movzwl	8(%rsi), %eax
	cmpl	%eax, %ecx
	jne	LBB16_14
## BB#9:
	movzwl	12(%rsi), %eax
	movzwl	%cx, %ecx
	cmpl	%eax, %ecx
	jne	LBB16_14
## BB#10:
	movzwl	16(%rsi), %ecx
	movzwl	%cx, %ecx
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	je	LBB16_12
	jmp	LBB16_14
LBB16_3:
	cmpl	$2, %eax
	ja	LBB16_6
## BB#4:
	movb	$1, %bl
	jne	LBB16_16
## BB#5:
	movzwl	8(%rsi), %eax
	movzwl	4(%rsi), %ecx
	cmpl	%eax, %ecx
	jne	LBB16_16
LBB16_6:
	movzbl	%dl, %edi
	leaq	L_.str.62(%rip), %rsi
	jmp	LBB16_15
LBB16_11:
	movb	$1, %bl
	cmpl	$3, %eax
	jb	LBB16_16
LBB16_12:
	movzwl	8(%rsi), %eax
	movzwl	4(%rsi), %ecx
	cmpl	%eax, %ecx
	jne	LBB16_14
## BB#13:
	movzwl	12(%rsi), %ecx
	movb	$1, %bl
	movzwl	%cx, %ecx
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	je	LBB16_16
LBB16_14:
	movzbl	%dl, %edi
	leaq	L_.str.63(%rip), %rsi
LBB16_15:
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	__ZN12_GLOBAL__N_14hintEbPKcz
LBB16_16:
	movb	%bl, %al
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev

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


.subsections_via_symbols
