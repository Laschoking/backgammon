	.file	"state-internal.cc"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"## hint: "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.type	_ZN12_GLOBAL__N_14hintEbPKcz, @function
_ZN12_GLOBAL__N_14hintEbPKcz:
.LFB5008:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	testb	%al, %al
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	je	.L2
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.L2:
	testb	%dil, %dil
	movq	%rsi, %rbp
	je	.L1
	leaq	240(%rsp), %rax
	leaq	.LC0(%rip), %rdi
	movq	stderr@GOTPCREL(%rip), %rbx
	movl	$16, 8(%rsp)
	movq	%rax, 16(%rsp)
	leaq	32(%rsp), %rax
	movl	$48, 12(%rsp)
	movq	(%rbx), %rsi
	movq	%rax, 24(%rsp)
	call	fputs@PLT
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbp, %rsi
	call	vfprintf@PLT
	movq	(%rbx), %rsi
	movl	$10, %edi
	call	fputc@PLT
.L1:
	addq	$216, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5008:
	.size	_ZN12_GLOBAL__N_14hintEbPKcz, .-_ZN12_GLOBAL__N_14hintEbPKcz
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.str1.1
.LC2:
	.string	"You try to make too many moves."
.LC3:
	.string	"You did not roll a double -- use each die only once!"
.LC4:
	.string	"Doubles oblige you to use each die twice!"
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.type	_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb, @function
_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb:
.LFB5025:
	.cfi_startproc
	pushq	%rcx
	.cfi_def_cfa_offset 16
	movb	(%rsi), %cl
	cmpb	$4, %cl
	jbe	.L8
	movzbl	%dl, %edi
	leaq	.LC2(%rip), %rsi
	jmp	.L20
.L8:
	movw	4(%rdi), %ax
	cmpw	%ax, 2(%rdi)
	je	.L10
	cmpb	$2, %cl
	ja	.L11
	movb	$1, %al
	jne	.L9
	movw	8(%rsi), %cx
	cmpw	%cx, 4(%rsi)
	jne	.L9
.L11:
	movzbl	%dl, %edi
	leaq	.LC3(%rip), %rsi
	jmp	.L20
.L10:
	cmpb	$4, %cl
	jne	.L12
	movw	4(%rsi), %ax
	cmpw	8(%rsi), %ax
	jne	.L13
	cmpw	12(%rsi), %ax
	jne	.L13
	cmpw	16(%rsi), %ax
	jne	.L13
	jmp	.L14
.L12:
	cmpb	$3, %cl
	movb	$1, %al
	jne	.L9
.L14:
	movw	4(%rsi), %cx
	cmpw	8(%rsi), %cx
	jne	.L13
	cmpw	12(%rsi), %cx
	movb	$1, %al
	je	.L9
.L13:
	leaq	.LC4(%rip), %rsi
	movzbl	%dl, %edi
.L20:
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	xorl	%eax, %eax
.L9:
	popq	%rdx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5025:
	.size	_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb, .-_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"state-internal.cc"
.LC7:
	.string	"state"
	.globl	__subvdi3
	.globl	__addvdi3
.LC8:
	.string	"count[0] >= 0 && count[0] <= NUM_CHECKERS && count[1] >= 0 && count[1] <= NUM_CHECKERS"
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.type	_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi, @function
_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi:
.LFB5007:
	.cfi_startproc
	testq	%rdi, %rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	jne	.L22
	leaq	_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$25, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	jmp	.L33
.L22:
	movq	%rsi, %rbx
	movl	$0, 4(%rsi)
	movl	$0, (%rsi)
	movl	$1, %ebp
.L25:
	movswl	6(%r13,%rbp,2), %eax
	xorl	%r12d, %r12d
	movl	%eax, %esi
	testw	%ax, %ax
	setg	%r12b
	sarl	$31, %esi
	incq	%rbp
	xorl	%esi, %eax
	salq	$2, %r12
	movslq	%esi, %rsi
	movslq	%eax, %rdi
	leaq	(%rbx,%r12), %r14
	call	__subvdi3@PLT
	movslq	(%rbx,%r12), %rdi
	movslq	%eax, %rsi
	call	__addvdi3@PLT
	cmpq	$25, %rbp
	movl	%eax, (%r14)
	jne	.L25
	movw	6(%r13), %ax
	movl	$100, %ecx
	movslq	(%rbx), %rsi
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movzwl	%ax, %edi
	movl	%edx, %ebp
	call	__addvdi3@PLT
	movslq	4(%rbx), %rsi
	movl	%eax, (%rbx)
	movzwl	%bp, %edi
	movq	%rax, %r12
	call	__addvdi3@PLT
	cmpl	$15, %eax
	movl	%eax, 4(%rbx)
	ja	.L30
	cmpl	$15, %r12d
	jbe	.L21
.L30:
	leaq	_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	movl	$36, %edx
.L33:
	call	__assert_fail@PLT
.L21:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5007:
	.size	_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi, .-_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
	.align 2
.LCOLDB10:
	.text
.LHOTB10:
	.align 2
	.type	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38, @function
_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38:
.LFB5584:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	(%rdi), %rax
	movq	%rax, (%rbx)
	call	_ZdlPv@PLT
	movq	(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5584:
	.size	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38, .-_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.rodata.str1.1
.LC11:
	.string	"include/state.h"
.LC12:
	.string	"bar_val"
.LC13:
	.string	"low_val <= NUM_CHECKERS"
.LC14:
	.string	"*bar_val >= 0 && *bar_val <= NUM_CHECKERS * 100 + NUM_CHECKERS"
	.section	.text.unlikely._Z13set_lower_barPst,"axG",@progbits,_Z13set_lower_barPst,comdat
.LCOLDB15:
	.section	.text._Z13set_lower_barPst,"axG",@progbits,_Z13set_lower_barPst,comdat
.LHOTB15:
	.weak	_Z13set_lower_barPst
	.type	_Z13set_lower_barPst, @function
_Z13set_lower_barPst:
.LFB5004:
	.cfi_startproc
	testq	%rdi, %rdi
	pushq	%rdx
	.cfi_def_cfa_offset 16
	jne	.L37
	leaq	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$96, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	jmp	.L41
.L37:
	cmpw	$15, %si
	jbe	.L38
	leaq	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC11(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	movl	$97, %edx
.L41:
	call	__assert_fail@PLT
.L38:
	movw	(%rdi), %ax
	movl	$100, %ecx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	imull	$100, %eax, %eax
	addl	%esi, %eax
	cmpw	$1515, %ax
	movw	%ax, (%rdi)
	jbe	.L36
	leaq	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$99, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	jmp	.L41
.L36:
	popq	%rax
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5004:
	.size	_Z13set_lower_barPst, .-_Z13set_lower_barPst
	.section	.text.unlikely._Z13set_lower_barPst,"axG",@progbits,_Z13set_lower_barPst,comdat
.LCOLDE15:
	.section	.text._Z13set_lower_barPst,"axG",@progbits,_Z13set_lower_barPst,comdat
.LHOTE15:
	.section	.rodata.str1.1
.LC16:
	.string	"high_val <= NUM_CHECKERS"
	.section	.text.unlikely._Z14set_higher_barPst,"axG",@progbits,_Z14set_higher_barPst,comdat
.LCOLDB17:
	.section	.text._Z14set_higher_barPst,"axG",@progbits,_Z14set_higher_barPst,comdat
.LHOTB17:
	.weak	_Z14set_higher_barPst
	.type	_Z14set_higher_barPst, @function
_Z14set_higher_barPst:
.LFB5005:
	.cfi_startproc
	testq	%rdi, %rdi
	pushq	%rdx
	.cfi_def_cfa_offset 16
	jne	.L43
	leaq	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$106, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	jmp	.L47
.L43:
	cmpw	$15, %si
	jbe	.L44
	leaq	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC11(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	movl	$107, %edx
.L47:
	call	__assert_fail@PLT
.L44:
	movw	(%rdi), %ax
	movl	$100, %ecx
	imull	$100, %esi, %esi
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	addl	%esi, %edx
	cmpw	$1515, %dx
	movw	%dx, (%rdi)
	jbe	.L42
	leaq	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$109, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	jmp	.L47
.L42:
	popq	%rax
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5005:
	.size	_Z14set_higher_barPst, .-_Z14set_higher_barPst
	.section	.text.unlikely._Z14set_higher_barPst,"axG",@progbits,_Z14set_higher_barPst,comdat
.LCOLDE17:
	.section	.text._Z14set_higher_barPst,"axG",@progbits,_Z14set_higher_barPst,comdat
.LHOTE17:
	.section	.rodata.str1.1
.LC18:
	.string	"int_pos && int_val"
.LC19:
	.string	"pos <= POS_OFF"
.LC20:
	.string	"pos == POS_BAR || (val >= -NUM_CHECKERS && val <= NUM_CHECKERS)"
.LC21:
	.string	"player == PLAYER_ABOVE || player == PLAYER_BELOW"
.LC22:
	.string	"lower_val <= NUM_CHECKERS && higher_val <= NUM_CHECKERS"
	.section	.text.unlikely
.LCOLDB23:
	.text
.LHOTB23:
	.globl	_Z11to_internalhsaPhPs
	.type	_Z11to_internalhsaPhPs, @function
_Z11to_internalhsaPhPs:
.LFB5009:
	.cfi_startproc
	testq	%rcx, %rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx
	pushq	%r9
	.cfi_def_cfa_offset 64
	movsbq	%dl, %rdi
	je	.L61
	testq	%r8, %r8
	movq	%r8, %r14
	jne	.L49
.L61:
	leaq	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$60, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC18(%rip), %rdi
	jmp	.L65
.L49:
	cmpb	$25, %bl
	jbe	.L51
	leaq	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	movl	$61, %edx
.L65:
	call	__assert_fail@PLT
.L51:
	testb	%bl, %bl
	movl	%esi, %r15d
	movl	%esi, %ebp
	je	.L52
	leal	15(%rsi), %eax
	cmpw	$30, %ax
	jbe	.L52
	leaq	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$62, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC20(%rip), %rdi
	jmp	.L65
.L52:
	movl	$1, %esi
	call	__addvdi3@PLT
	testb	$-3, %al
	je	.L53
	leaq	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$63, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	jmp	.L65
.L53:
	testb	%bl, %bl
	jne	.L54
	cmpb	$1, %r12b
	je	.L64
	movl	%ebp, %edx
	movl	%ebp, %eax
	movl	$100, %ecx
	sarw	$15, %dx
	idivw	%cx
	cmpw	$15, %ax
	movl	%edx, %ebp
	jg	.L62
	cmpw	$15, %dx
	jle	.L57
.L62:
	leaq	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$75, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	jmp	.L65
.L57:
	movzwl	%ax, %esi
	movq	%r14, %rdi
	movw	$0, (%r14)
	call	_Z13set_lower_barPst@PLT
	movzwl	%bp, %esi
	movq	%r14, %rdi
	call	_Z14set_higher_barPst@PLT
	jmp	.L56
.L54:
	movsbw	%r12b, %ax
	imull	%eax, %r15d
.L64:
	movw	%r15w, (%r14)
.L56:
	testb	%bl, %bl
	sete	%dl
	cmpb	$25, %bl
	sete	%al
	orb	%al, %dl
	jne	.L59
	incb	%r12b
	je	.L59
	movb	$25, %al
	subl	%ebx, %eax
	movb	%al, %bl
.L59:
	movb	%bl, 0(%r13)
	popq	%rax
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5009:
	.size	_Z11to_internalhsaPhPs, .-_Z11to_internalhsaPhPs
	.section	.text.unlikely
.LCOLDE23:
	.text
.LHOTE23:
	.section	.text.unlikely
.LCOLDB24:
	.text
.LHOTB24:
	.globl	_Z13from_internalhsaPhPs
	.type	_Z13from_internalhsaPhPs, @function
_Z13from_internalhsaPhPs:
.LFB5010:
	.cfi_startproc
	movsbl	%dl, %edx
	movswl	%si, %esi
	movzbl	%dil, %edi
	jmp	_Z11to_internalhsaPhPs@PLT
	.cfi_endproc
.LFE5010:
	.size	_Z13from_internalhsaPhPs, .-_Z13from_internalhsaPhPs
	.section	.text.unlikely
.LCOLDE24:
	.text
.LHOTE24:
	.section	.rodata.str1.1
.LC25:
	.string	"int_state"
.LC26:
	.string	"Checker must not re-enter the board once beared off"
.LC27:
	.string	"There is no checker at point %hd"
.LC28:
	.string	"Only own checkers may be moved (directly) and the bar is occupied by %hu checkers of your opponent"
.LC29:
	.string	"Checkers from the bar have to re-enter first"
.LC30:
	.string	"Only own checkers may be moved (directly) and point %hu is occupied by %hu checkers of your opponent"
	.section	.text.unlikely
.LCOLDB31:
	.text
.LHOTB31:
	.type	_ZN12_GLOBAL__N_110check_fromEPK10game_statetb, @function
_ZN12_GLOBAL__N_110check_fromEPK10game_statetb:
.LFB5019:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %r8d
	movzwl	%si, %eax
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdi, %rdi
	jne	.L68
	leaq	_ZZN12_GLOBAL__N_110check_fromEPK10game_statetbE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC25(%rip), %rdi
	movl	$229, %edx
	call	__assert_fail@PLT
.L68:
	cmpw	$24, %si
	movl	%edx, %ebx
	movb	(%rdi), %r9b
	leaq	6(%rdi), %rdx
	jbe	.L69
	movzbl	%bl, %edi
	leaq	.LC26(%rip), %rsi
	jmp	.L76
.L69:
	movswl	(%rdx,%rax,2), %esi
	testw	%si, %si
	jne	.L71
	movzwl	%r8w, %edi
	leaq	13(%rsp), %rcx
	leaq	14(%rsp), %r8
	movsbl	%r9b, %edx
	xorl	%esi, %esi
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	13(%rsp), %edx
	movzbl	%bl, %edi
	leaq	.LC27(%rip), %rsi
	jmp	.L78
.L71:
	movw	6(%rdi), %ax
	movl	$100, %ecx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movl	%edx, %ecx
	orw	%r8w, %cx
	jne	.L72
	leaq	.LC28(%rip), %rsi
	movzwl	%ax, %edx
	movzbl	%bl, %edi
.L78:
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	jmp	.L77
.L72:
	testw	%dx, %dx
	setne	%bpl
	testw	%r8w, %r8w
	setne	%al
	andb	%al, %bpl
	je	.L73
	leaq	.LC29(%rip), %rsi
	movzbl	%bl, %edi
.L76:
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
.L77:
	xorl	%ebp, %ebp
	jmp	.L70
.L73:
	testw	%si, %si
	jns	.L74
	leaq	13(%rsp), %rcx
	movzwl	%r8w, %edi
	leaq	14(%rsp), %r8
	movsbl	%r9b, %edx
	call	_Z13from_internalhsaPhPs@PLT
	movswl	14(%rsp), %edi
	movl	%edi, %esi
	sarl	$31, %esi
	xorl	%esi, %edi
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	call	__subvdi3@PLT
	movzbl	13(%rsp), %edx
	leaq	.LC30(%rip), %rsi
	movl	%eax, %ecx
	movzbl	%bl, %edi
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	jmp	.L70
.L74:
	movb	$1, %bpl
.L70:
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	movb	%bpl, %al
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5019:
	.size	_ZN12_GLOBAL__N_110check_fromEPK10game_statetb, .-_ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.rodata.str1.1
.LC32:
	.string	"st && ist"
.LC33:
	.string	"st != ist"
	.section	.text.unlikely
.LCOLDB34:
	.text
.LHOTB34:
	.globl	_Z11to_internalPK10game_statePS_
	.type	_Z11to_internalPK10game_statePS_, @function
_Z11to_internalPK10game_statePS_:
.LFB5011:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdi, %rdi
	je	.L84
	testq	%rsi, %rsi
	movq	%rsi, %rbp
	jne	.L80
.L84:
	leaq	_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$107, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC32(%rip), %rdi
	jmp	.L87
.L80:
	cmpq	%rsi, %rdi
	jne	.L82
	leaq	_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC33(%rip), %rdi
	movl	$108, %edx
.L87:
	call	__assert_fail@PLT
.L82:
	movb	(%rdi), %al
	leaq	14(%rsp), %r14
	leaq	13(%rsp), %r13
	xorl	%r12d, %r12d
	movb	%al, (%rsi)
	movw	2(%rdi), %ax
	movw	%ax, 2(%rsi)
	movw	4(%rdi), %ax
	movw	%ax, 4(%rsi)
.L83:
	movsbl	(%rbx), %edx
	movswl	6(%rbx,%r12,2), %esi
	movl	%r12d, %edi
	movq	%r14, %r8
	movq	%r13, %rcx
	incq	%r12
	call	_Z11to_internalhsaPhPs@PLT
	movzbl	13(%rsp), %eax
	movw	14(%rsp), %dx
	cmpq	$26, %r12
	movw	%dx, 6(%rbp,%rax,2)
	jne	.L83
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5011:
	.size	_Z11to_internalPK10game_statePS_, .-_Z11to_internalPK10game_statePS_
	.section	.text.unlikely
.LCOLDE34:
	.text
.LHOTE34:
	.section	.text.unlikely
.LCOLDB35:
	.text
.LHOTB35:
	.globl	_Z13from_internalPK10game_statePS_
	.type	_Z13from_internalPK10game_statePS_, @function
_Z13from_internalPK10game_statePS_:
.LFB5012:
	.cfi_startproc
	jmp	_Z11to_internalPK10game_statePS_@PLT
	.cfi_endproc
.LFE5012:
	.size	_Z13from_internalPK10game_statePS_, .-_Z13from_internalPK10game_statePS_
	.section	.text.unlikely
.LCOLDE35:
	.text
.LHOTE35:
	.section	.rodata.str1.1
.LC36:
	.string	"move && int_move"
.LC37:
	.string	"move != int_move"
	.section	.text.unlikely
.LCOLDB38:
	.text
.LHOTB38:
	.globl	_Z11to_internalPK9game_moveaPS_
	.type	_Z11to_internalPK9game_moveaPS_, @function
_Z11to_internalPK9game_moveaPS_:
.LFB5013:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	testq	%rbp, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%esi, %r12d
	movsbq	%sil, %rdi
	je	.L95
	testq	%rdx, %rdx
	movq	%rdx, %rbx
	jne	.L90
.L95:
	leaq	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$136, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC36(%rip), %rdi
	jmp	.L97
.L90:
	cmpq	%rdx, %rbp
	jne	.L92
	leaq	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC37(%rip), %rdi
	movl	$137, %edx
.L97:
	call	__assert_fail@PLT
.L92:
	movl	$1, %esi
	call	__addvdi3@PLT
	testb	$-3, %al
	je	.L93
	leaq	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$138, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	jmp	.L97
.L93:
	movl	0(%rbp), %eax
	cmpw	$25, %ax
	sete	%cl
	testw	%ax, %ax
	sete	%dl
	orb	%dl, %cl
	jne	.L94
	incb	%r12b
	je	.L94
	movl	$25, %edx
	subl	%eax, %edx
	movl	%edx, %eax
.L94:
	movw	%ax, (%rbx)
	movw	2(%rbp), %ax
	movw	%ax, 2(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5013:
	.size	_Z11to_internalPK9game_moveaPS_, .-_Z11to_internalPK9game_moveaPS_
	.section	.text.unlikely
.LCOLDE38:
	.text
.LHOTE38:
	.section	.text.unlikely
.LCOLDB39:
	.text
.LHOTB39:
	.globl	_Z13from_internalPK9game_moveaPS_
	.type	_Z13from_internalPK9game_moveaPS_, @function
_Z13from_internalPK9game_moveaPS_:
.LFB5014:
	.cfi_startproc
	movsbl	%sil, %esi
	jmp	_Z11to_internalPK9game_moveaPS_@PLT
	.cfi_endproc
.LFE5014:
	.size	_Z13from_internalPK9game_moveaPS_, .-_Z13from_internalPK9game_moveaPS_
	.section	.text.unlikely
.LCOLDE39:
	.text
.LHOTE39:
	.section	.rodata.str1.1
.LC40:
	.string	"mmove && int_mmove"
.LC41:
	.string	"mmove != int_mmove"
	.section	.text.unlikely
.LCOLDB42:
	.text
.LHOTB42:
	.globl	_Z11to_internalPK10multi_moveaPS_
	.type	_Z11to_internalPK10multi_moveaPS_, @function
_Z11to_internalPK10multi_moveaPS_:
.LFB5015:
	.cfi_startproc
	testq	%rdi, %rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	je	.L105
	testq	%rdx, %rdx
	jne	.L100
.L105:
	leaq	_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$163, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC40(%rip), %rdi
	jmp	.L107
.L100:
	cmpq	%rdx, %rdi
	jne	.L102
	leaq	_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC41(%rip), %rdi
	movl	$164, %edx
.L107:
	call	__assert_fail@PLT
.L102:
	movb	(%rdi), %al
	leaq	2(%rdi), %r14
	leaq	2(%rdx), %rbx
	xorl	%r13d, %r13d
	movsbl	%sil, %r12d
	movb	%al, (%rdx)
.L103:
	movzbl	0(%rbp), %eax
	cmpq	%rax, %r13
	jnb	.L108
	movq	%rbx, %rdx
	movq	%r14, %rdi
	movl	%r12d, %esi
	call	_Z11to_internalPK9game_moveaPS_@PLT
	incq	%r13
	addq	$4, %r14
	addq	$4, %rbx
	jmp	.L103
.L108:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5015:
	.size	_Z11to_internalPK10multi_moveaPS_, .-_Z11to_internalPK10multi_moveaPS_
	.section	.text.unlikely
.LCOLDE42:
	.text
.LHOTE42:
	.section	.text.unlikely
.LCOLDB43:
	.text
.LHOTB43:
	.globl	_Z13from_internalPK10multi_moveaPS_
	.type	_Z13from_internalPK10multi_moveaPS_, @function
_Z13from_internalPK10multi_moveaPS_:
.LFB5016:
	.cfi_startproc
	movsbl	%sil, %esi
	jmp	_Z11to_internalPK10multi_moveaPS_@PLT
	.cfi_endproc
.LFE5016:
	.size	_Z13from_internalPK10multi_moveaPS_, .-_Z13from_internalPK10multi_moveaPS_
	.section	.text.unlikely
.LCOLDE43:
	.text
.LHOTE43:
	.section	.text.unlikely
.LCOLDB44:
	.text
.LHOTB44:
	.globl	_Z14is_final_statePK10game_state
	.type	_Z14is_final_statePK10game_state, @function
_Z14is_final_statePK10game_state:
.LFB5017:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	jne	.L111
	leaq	_ZZ14is_final_statePK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	movl	$186, %edx
	call	__assert_fail@PLT
.L111:
	leaq	8(%rsp), %rsi
	call	_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi
	cmpl	$0, 8(%rsp)
	movb	$1, %al
	je	.L112
	cmpl	$0, 12(%rsp)
	sete	%al
.L112:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5017:
	.size	_Z14is_final_statePK10game_state, .-_Z14is_final_statePK10game_state
	.section	.text.unlikely
.LCOLDE44:
	.text
.LHOTE44:
	.section	.rodata.str1.1
.LC45:
	.string	"(checkers[0] == 0 && checkers[1] > 0) || (checkers[1] == 0 && checkers[0] > 0)"
.LC46:
	.string	"winner != state->player"
	.globl	__mulvdi3
	.section	.text.unlikely
.LCOLDB47:
	.text
.LHOTB47:
	.globl	_Z6winnerPK10game_state
	.type	_Z6winnerPK10game_state, @function
_Z6winnerPK10game_state:
.LFB5018:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdi, %rdi
	jne	.L116
	leaq	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$197, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	jmp	.L138
.L116:
	leaq	8(%rsp), %rsi
	call	_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi
	movl	8(%rsp), %eax
	testl	%eax, %eax
	jne	.L117
	orl	$-1, %ebx
	cmpl	$0, 12(%rsp)
	jg	.L118
.L117:
	cmpl	$0, 12(%rsp)
	jne	.L131
	testl	%eax, %eax
	movl	$1, %ebx
	jg	.L118
.L131:
	leaq	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC45(%rip), %rdi
	movl	$203, %edx
.L138:
	call	__assert_fail@PLT
.L118:
	movsbl	(%r14), %eax
	cmpl	%eax, %ebx
	jne	.L120
	leaq	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$206, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC46(%rip), %rdi
	jmp	.L138
.L120:
	cmpl	$-1, %ebx
	movl	$19, %eax
	movl	$1, %r12d
	cmove	%rax, %r12
	movl	$6, %r13d
	movb	$24, %al
	cmove	%rax, %r13
	xorl	%ebp, %ebp
.L122:
	cmpq	%r13, %r12
	ja	.L139
	movswl	6(%r14,%r12,2), %eax
	incq	%r12
	movl	%eax, %esi
	sarl	$31, %esi
	xorl	%esi, %eax
	movslq	%esi, %rsi
	movslq	%eax, %rdi
	call	__subvdi3@PLT
	movslq	%ebp, %rdi
	movslq	%eax, %rsi
	call	__addvdi3@PLT
	movl	%eax, %ebp
	jmp	.L122
.L139:
	xorl	%eax, %eax
	cmpl	$-1, %ebx
	movl	$1, %esi
	sete	%al
	cmpl	$14, 8(%rsp,%rax,4)
	jle	.L124
	testl	%ebp, %ebp
	jne	.L132
	cmpw	$0, 6(%r14)
	movb	$2, %sil
	je	.L124
.L132:
	movl	$3, %esi
.L124:
	movslq	%ebx, %rdi
	movslq	%esi, %rsi
	call	__mulvdi3@PLT
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5018:
	.size	_Z6winnerPK10game_state, .-_Z6winnerPK10game_state
	.section	.text.unlikely
.LCOLDE47:
	.text
.LHOTE47:
	.section	.rodata.str1.1
.LC48:
	.string	"int_state && int_move"
.LC49:
	.string	"%hu does not match any die roll (%hu, %hu)"
.LC50:
	.string	"to > POS_BAR"
.LC51:
	.string	"Point %hu is occupied by %hu checkers of your opponent"
.LC52:
	.string	"You may not bear off unless *all* your checkers are in your home board. There is a checker on point %u"
.LC53:
	.string	"Die roll does not match exactly to bear off a checker from point %hu and there is a checker at point %hu"
	.section	.text.unlikely
.LCOLDB54:
	.text
.LHOTB54:
	.globl	_Z10check_movePK10game_statePK9game_moveb
	.type	_Z10check_movePK10game_statePK9game_moveb, @function
_Z10check_movePK10game_statePK9game_moveb:
.LFB5021:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	testq	%rdi, %rdi
	sete	%r15b
	testq	%rsi, %rsi
	sete	%al
	orb	%al, %r15b
	je	.L141
	leaq	_ZZ10check_movePK10game_statePK9game_movebE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$313, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC48(%rip), %rdi
	jmp	.L163
.L141:
	movzwl	2(%rdi), %ecx
	movw	2(%rsi), %bp
	movzbl	%dl, %r14d
	movw	(%rsi), %r13w
	cmpw	%cx, %bp
	je	.L142
	movzwl	4(%rdi), %r8d
	cmpw	%r8w, %bp
	je	.L142
	leaq	.LC49(%rip), %rsi
	movzwl	%bp, %edx
	movl	%r14d, %edi
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	jmp	.L143
.L142:
	movzwl	%r13w, %esi
	movl	%r14d, %edx
	movq	%rbx, %rdi
	call	_ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	testb	%al, %al
	movb	%al, %cl
	je	.L143
	movl	%ebp, %edx
	addw	%r13w, %dx
	jne	.L145
	leaq	_ZZN12_GLOBAL__N_18check_toEPK10game_statetbE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC50(%rip), %rdi
	movl	$279, %edx
.L163:
	call	__assert_fail@PLT
.L145:
	cmpw	$24, %dx
	ja	.L154
	movzwl	%dx, %eax
	movswl	6(%rbx,%rax,2), %esi
	movq	%rax, %rdi
	cmpw	$-1, %si
	jge	.L147
	movsbl	(%rbx), %edx
	leaq	29(%rsp), %rcx
	leaq	30(%rsp), %r8
	call	_Z13from_internalhsaPhPs@PLT
	movswl	30(%rsp), %edi
	movl	%edi, %esi
	sarl	$31, %esi
	xorl	%esi, %edi
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	call	__subvdi3@PLT
	movzbl	29(%rsp), %edx
	movl	%eax, %ecx
	leaq	.LC51(%rip), %rsi
	jmp	.L162
.L154:
	movl	$1, %edi
.L146:
	cmpw	$0, 6(%rbx,%rdi,2)
	jle	.L148
	movsbl	(%rbx), %edx
	leaq	29(%rsp), %rcx
	leaq	30(%rsp), %r8
	xorl	%esi, %esi
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	29(%rsp), %edx
	leaq	.LC52(%rip), %rsi
	movl	%r14d, %edi
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	jmp	.L143
.L148:
	incq	%rdi
	cmpq	$19, %rdi
	jne	.L146
.L147:
	testb	%cl, %cl
	je	.L143
	cmpw	$25, %dx
	movl	$19, %r12d
	movzwl	%r13w, %ebp
	ja	.L160
.L153:
	movb	%cl, %r15b
	jmp	.L143
.L151:
	incq	%r12
.L160:
	cmpq	%rbp, %r12
	jnb	.L153
	xorl	%edx, %edx
	movl	%r12d, %esi
	movq	%rbx, %rdi
	movb	%cl, 15(%rsp)
	call	_ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	testb	%al, %al
	movb	15(%rsp), %cl
	je	.L151
	movsbl	(%rbx), %edx
	leaq	30(%rsp), %rbp
	leaq	28(%rsp), %rcx
	movzbl	%r13b, %edi
	xorl	%esi, %esi
	movq	%rbp, %r8
	call	_Z13from_internalhsaPhPs@PLT
	movsbl	(%rbx), %edx
	leaq	29(%rsp), %rcx
	xorl	%esi, %esi
	movzbl	%r12b, %edi
	movq	%rbp, %r8
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	29(%rsp), %ecx
	movzbl	28(%rsp), %edx
	leaq	.LC53(%rip), %rsi
.L162:
	movl	%r14d, %edi
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
.L143:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	movb	%r15b, %al
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5021:
	.size	_Z10check_movePK10game_statePK9game_moveb, .-_Z10check_movePK10game_statePK9game_moveb
	.section	.text.unlikely
.LCOLDE54:
	.text
.LHOTE54:
	.section	.rodata.str1.1
.LC55:
	.string	"from < POS_OFF && \"Re-entering is not allowed\""
.LC56:
	.string	"b[from] > 0 && \"No own checker to move\""
.LC57:
	.string	"to > POS_BAR && to <= POS_OFF + 5"
.LC58:
	.string	"(to >= POS_OFF || b[to] >= -1) && \"Destination held by opponent\""
.LC59:
	.string	"Opponent's blot at %hu is hit and goes to the bar"
.LC60:
	.string	"Bearing off checker from %hu"
	.section	.text.unlikely
.LCOLDB61:
	.text
.LHOTB61:
	.globl	_Z10apply_moveP10game_statePK9game_moveb
	.type	_Z10apply_moveP10game_statePK9game_moveb, @function
_Z10apply_moveP10game_statePK9game_moveb:
.LFB5022:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdi, %rdi
	je	.L176
	testq	%rsi, %rsi
	jne	.L165
.L176:
	leaq	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$358, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC48(%rip), %rdi
	jmp	.L178
.L165:
	movw	(%rsi), %r12w
	leaq	6(%rdi), %r14
	movl	%r12d, %ebp
	addw	2(%rsi), %bp
	cmpw	$24, %r12w
	jbe	.L167
	leaq	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC55(%rip), %rdi
	movl	$368, %edx
.L178:
	call	__assert_fail@PLT
.L167:
	movzwl	%r12w, %eax
	cmpw	$0, (%r14,%rax,2)
	jg	.L168
	leaq	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$369, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC56(%rip), %rdi
	jmp	.L178
.L168:
	movl	%edx, %r13d
	leal	-1(%rbp), %edx
	cmpw	$29, %dx
	jbe	.L169
	leaq	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$370, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC57(%rip), %rdi
	jmp	.L178
.L169:
	cmpw	$24, %bp
	ja	.L170
	movzwl	%bp, %edx
	cmpw	$-1, (%r14,%rdx,2)
	jge	.L170
	leaq	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$371, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC58(%rip), %rdi
	jmp	.L178
.L170:
	testw	%r12w, %r12w
	jne	.L171
	movw	6(%rbx), %ax
	movl	$100, %ecx
	movq	%r14, %rdi
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	decl	%edx
	movzwl	%dx, %esi
	call	_Z13set_lower_barPst@PLT
	jmp	.L172
.L171:
	addq	%rax, %rax
	decw	6(%rbx,%rax)
.L172:
	cmpw	$24, %bp
	ja	.L173
	movzwl	%bp, %eax
	cmpw	$-1, (%r14,%rax,2)
	jne	.L174
	movw	6(%rbx), %ax
	movl	$100, %ecx
	leaq	14(%rsp), %r8
	movzwl	%bp, %ebp
	xorl	%esi, %esi
	movl	%ebp, %edi
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movsbl	(%rbx), %edx
	leaq	13(%rsp), %rcx
	movl	%eax, %r12d
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	13(%rsp), %edx
	leaq	.LC59(%rip), %rsi
	movzbl	%r13b, %edi
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	leal	1(%r12), %esi
	movq	%r14, %rdi
	movzwl	%si, %esi
	call	_Z14set_higher_barPst@PLT
	movw	$1, 6(%rbx,%rbp,2)
	jmp	.L164
.L173:
	movsbl	(%rbx), %edx
	leaq	13(%rsp), %rcx
	leaq	14(%rsp), %r8
	movzwl	%r12w, %edi
	xorl	%esi, %esi
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	13(%rsp), %edx
	leaq	.LC60(%rip), %rsi
	movzbl	%r13b, %edi
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	incw	56(%rbx)
	jmp	.L164
.L174:
	addq	%rax, %rax
	incw	6(%rbx,%rax)
.L164:
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5022:
	.size	_Z10apply_moveP10game_statePK9game_moveb, .-_Z10apply_moveP10game_statePK9game_moveb
	.section	.text.unlikely
.LCOLDE61:
	.text
.LHOTE61:
	.section	.text.unlikely._ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_,"axG",@progbits,_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_,comdat
	.align 2
.LCOLDB62:
	.section	.text._ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_,"axG",@progbits,_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_,comdat
.LHOTB62:
	.align 2
	.weak	_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_
	.type	_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_, @function
_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_:
.LFB5137:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	$32, %edi
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, 8(%rsp)
	call	_Znwm@PLT
	movq	8(%rsp), %rsi
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	movl	$18, %ecx
	rep movsb
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	%rax, (%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5137:
	.size	_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_, .-_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_
	.section	.text.unlikely._ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_,"axG",@progbits,_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_,comdat
.LCOLDE62:
	.section	.text._ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_,"axG",@progbits,_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_,comdat
.LHOTE62:
	.section	.text.unlikely._ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev,"axG",@progbits,_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED5Ev,comdat
	.align 2
.LCOLDB63:
	.section	.text._ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev,"axG",@progbits,_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED5Ev,comdat
.LHOTB63:
	.align 2
	.weak	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev
	.type	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev, @function
_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev:
.LFB5245:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rdi
.L182:
	testq	%rdi, %rdi
	je	.L185
	movq	(%rdi), %rbx
	call	_ZdlPv@PLT
	movq	%rbx, %rdi
	jmp	.L182
.L185:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5245:
	.size	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev, .-_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev
	.section	.text.unlikely._ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev,"axG",@progbits,_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED5Ev,comdat
.LCOLDE63:
	.section	.text._ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev,"axG",@progbits,_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED5Ev,comdat
.LHOTE63:
	.weak	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED1Ev
	.set	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED1Ev,_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev
	.section	.text.unlikely._ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev,"axG",@progbits,_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED5Ev,comdat
	.align 2
.LCOLDB64:
	.section	.text._ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev,"axG",@progbits,_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED5Ev,comdat
.LHOTB64:
	.align 2
	.weak	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev
	.type	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev, @function
_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev:
.LFB5273:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rdi
.L187:
	testq	%rdi, %rdi
	je	.L190
	movq	(%rdi), %rbx
	call	_ZdlPv@PLT
	movq	%rbx, %rdi
	jmp	.L187
.L190:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5273:
	.size	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev, .-_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev
	.section	.text.unlikely._ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev,"axG",@progbits,_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED5Ev,comdat
.LCOLDE64:
	.section	.text._ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev,"axG",@progbits,_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED5Ev,comdat
.LHOTE64:
	.weak	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED1Ev
	.set	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED1Ev,_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev
	.section	.rodata.str1.1
.LC65:
	.string	"mmoves_new.empty()"
.LC66:
	.string	"mmove.num_moves == num_move"
.LC67:
	.string	"check_move(&tmp_state, &mmove.moves[cc], false) && \"Invalid move\""
.LC68:
	.string	"mmove.num_moves <= MAX_MOVES"
.LC69:
	.string	"check_move(&tmp_state, &move, false) && \"Invalid move\""
.LC70:
	.string	"!mmoves_final.empty()"
	.section	.text.unlikely
.LCOLDB71:
	.text
.LHOTB71:
	.globl	_Z12valid_mmovesRK10game_state
	.type	_Z12valid_mmovesRK10game_state, @function
_Z12valid_mmovesRK10game_state:
.LFB5027:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5027
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movw	4(%rsi), %ax
	cmpw	%ax, 2(%rsi)
	leaq	94(%rsp), %rbp
	movq	$0, (%rdi)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	%rbp, %rdi
	sete	31(%rsp)
	cmpb	$1, 31(%rsp)
	sbbq	%rax, %rax
	movq	%rax, (%rsp)
	leaq	64(%rsp), %rax
	andq	$-2, (%rsp)
	addq	$4, (%rsp)
	movq	%rax, 8(%rsp)
.LEHB0:
	call	_Z21initialize_multi_moveP10multi_move@PLT
	movq	%rbp, %rsi
	movq	8(%rsp), %rdi
	call	_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_@PLT
	leaq	52(%rsp), %rax
	leaq	112(%rsp), %r13
	xorl	%r15d, %r15d
	movq	%rax, 32(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 40(%rsp)
.L212:
	cmpq	$0, 72(%rsp)
	je	.L285
	leaq	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$489, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC65(%rip), %rdi
	jmp	.L292
.L298:
	movq	80(%rsp), %r14
	incb	94(%rsp)
	movq	%r14, 56(%rsp)
.L207:
	testq	%r14, %r14
	jne	.L210
.L285:
	movq	64(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L294
	addq	$8, %rsi
	movl	$18, %ecx
	movq	%rbp, %rdi
	rep movsb
	movq	8(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38
	movzbl	94(%rsp), %eax
	cmpq	%r15, %rax
	je	.L194
	leaq	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC66(%rip), %rdi
	movl	$496, %edx
.L292:
	call	__assert_fail@PLT
.L194:
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_@PLT
	movl	$58, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	rep movsb
	leaq	2(%rbp), %r14
	movq	$0, 16(%rsp)
.L195:
	movzbl	94(%rsp), %eax
	cmpq	%rax, 16(%rsp)
	jnb	.L295
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_Z10check_movePK10game_statePK9game_moveb@PLT
	testb	%al, %al
	jne	.L196
	leaq	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$505, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC67(%rip), %rdi
	jmp	.L292
.L196:
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_Z10apply_moveP10game_statePK9game_moveb@PLT
.LEHE0:
	incq	16(%rsp)
	addq	$4, %r14
	jmp	.L195
.L295:
	movl	116(%rsp), %eax
	cmpw	%ax, 114(%rsp)
	movq	$0, 80(%rsp)
	movw	$0, 52(%rsp)
	setne	%al
	incl	%eax
	movzbl	%al, %eax
	movq	%rax, 16(%rsp)
.L199:
	cmpw	$24, 52(%rsp)
	ja	.L296
	xorl	%r14d, %r14d
.L202:
	cmpq	16(%rsp), %r14
	jnb	.L297
	movw	2(%r13,%r14,2), %ax
	movq	32(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r13, %rdi
	movw	%ax, 54(%rsp)
.LEHB1:
	call	_Z10check_movePK10game_statePK9game_moveb@PLT
	testb	%al, %al
	je	.L200
	movl	$16, %edi
	call	_Znwm@PLT
.LEHE1:
	movl	52(%rsp), %edx
	movq	$0, (%rax)
	movl	%edx, 8(%rax)
	movq	80(%rsp), %rdx
	movq	%rdx, (%rax)
	movq	%rax, 80(%rsp)
.L200:
	incq	%r14
	jmp	.L202
.L297:
	incw	52(%rsp)
	jmp	.L199
.L296:
	movq	56(%rsp), %rdi
	jmp	.L203
.L264:
	movq	%rax, %rbp
.L204:
	leaq	80(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev@PLT
	jmp	.L205
.L203:
	testq	%rdi, %rdi
	je	.L298
	movq	(%rdi), %r14
	call	_ZdlPv@PLT
	movq	%r14, %rdi
	jmp	.L203
.L210:
	cmpb	$4, 94(%rsp)
	leaq	8(%r14), %rsi
	jbe	.L208
	leaq	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$515, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC68(%rip), %rdi
	jmp	.L292
.L208:
	xorl	%edx, %edx
	movq	%r13, %rdi
.LEHB2:
	call	_Z10check_movePK10game_statePK9game_moveb@PLT
	testb	%al, %al
	jne	.L209
	leaq	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$516, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC69(%rip), %rdi
	jmp	.L292
.L209:
	movl	8(%r14), %eax
	movq	40(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%eax, 2(%rbp,%r15,4)
	call	_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_@PLT
.LEHE2:
	movq	(%r14), %r14
	jmp	.L207
.L294:
	incq	%r15
	cmpq	(%rsp), %r15
	movq	72(%rsp), %rax
	movq	$0, 72(%rsp)
	movq	%rax, 64(%rsp)
	jne	.L212
	leaq	112(%rsp), %r14
	movq	%rax, %rbp
	movq	%rbx, %r13
	movq	$0, 112(%rsp)
	movq	%r14, %r15
.L213:
	testq	%rbp, %rbp
	je	.L299
	movl	$32, %edi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movq	$0, (%rax)
	leaq	8(%rbp), %rsi
	leaq	8(%rax), %rdi
	movl	$18, %ecx
	rep movsb
	movq	%rax, (%r14)
	movq	%rax, %r14
	movq	0(%rbp), %rbp
	jmp	.L213
.L265:
	movq	%rax, %rbp
.L216:
	movq	%r15, %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	jmp	.L205
.L299:
	movq	112(%rsp), %rdx
	movq	%r15, %rax
	testq	%rdx, %rdx
	je	.L217
.L218:
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L300
	movq	%rcx, %rax
	jmp	.L218
.L300:
	cmpq	%r15, %rax
	je	.L217
	movq	(%rbx), %rcx
	movq	$0, 112(%rsp)
	movq	%rcx, (%rax)
	movq	%rdx, (%rbx)
.L217:
	movq	%r15, %rdi
	movq	%rbx, %rbp
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
.L220:
	movq	0(%rbp), %rsi
	testq	%rsi, %rsi
	je	.L221
	addq	$8, %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
.LEHB4:
	call	_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
.LEHE4:
	testb	%al, %al
	jne	.L222
	movq	%rbp, %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38
	jmp	.L220
.L222:
	movq	0(%rbp), %rbp
	jmp	.L220
.L221:
	movq	(%rbx), %rbp
	leaq	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$536, %edx
	testq	%rbp, %rbp
	je	.L293
	movq	0(%rbp), %rdx
	movq	%rbp, %rax
	testq	%rdx, %rdx
	je	.L225
	movb	8(%rbp), %sil
	cmpb	%sil, 8(%rdx)
	movq	%rdx, %rax
	jb	.L252
	movq	%rbp, %rax
	movq	%rdx, %rbp
.L252:
	movq	(%rdx), %rdx
.L227:
	testq	%rdx, %rdx
	je	.L225
	movq	(%rdx), %rcx
	testq	%rcx, %rcx
	jne	.L228
	movb	8(%rdx), %cl
	cmpb	8(%rax), %cl
	jb	.L259
	cmpb	8(%rbp), %cl
	cmovnb	%rdx, %rbp
.L225:
	movb	8(%rbp), %cl
	cmpb	%cl, 8(%rax)
	movq	%rbx, %r14
	je	.L235
.L236:
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L235
	movb	8(%rbp), %sil
	cmpb	%sil, 8(%rax)
	jb	.L301
	movq	%rax, %r14
	jmp	.L236
.L301:
	movq	%r14, %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38
	jmp	.L236
.L235:
	movq	(%rbx), %rax
	leaq	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$548, %edx
	testq	%rax, %rax
	je	.L293
	cmpb	$0, 31(%rsp)
	jne	.L239
	movzbl	8(%rbp), %esi
	movw	2(%r12), %cx
	cmpq	(%rsp), %rsi
	movw	4(%r12), %dx
	jnb	.L239
	cmpw	%cx, %dx
	cmovnb	%edx, %ecx
	movl	%ecx, %ebp
.L241:
	movzbl	8(%rax), %ecx
	xorl	%edx, %edx
.L243:
	cmpq	%rcx, %rdx
	jb	.L244
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L241
	jmp	.L239
.L244:
	cmpw	%bp, 12(%rax,%rdx,4)
	je	.L242
	incq	%rdx
	jmp	.L243
.L242:
	testq	%rax, %rax
	je	.L239
.L248:
	movq	0(%r13), %rdx
	testq	%rdx, %rdx
	je	.L239
	movzbl	8(%rdx), %ecx
	xorl	%eax, %eax
.L247:
	cmpq	%rcx, %rax
	jnb	.L302
	cmpw	%bp, 12(%rdx,%rax,4)
	jne	.L303
	movq	%rdx, %r13
	jmp	.L248
.L303:
	incq	%rax
	jmp	.L247
.L302:
	movq	%r13, %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38
	jmp	.L248
.L239:
	cmpq	$0, (%rbx)
	jne	.L251
	leaq	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$572, %edx
.L293:
	leaq	.LC6(%rip), %rsi
	leaq	.LC70(%rip), %rdi
	jmp	.L292
.L263:
	movq	%rax, %rbp
.L205:
	movq	%rbx, %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	leaq	72(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	movq	8(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	leaq	56(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev@PLT
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L228:
	movb	8(%rcx), %sil
	movb	8(%rdx), %dil
	cmpb	%dil, %sil
	jnb	.L230
	cmpb	8(%rax), %sil
	cmovb	%rcx, %rax
	cmpb	8(%rbp), %dil
	cmovnb	%rdx, %rbp
	jmp	.L232
.L230:
	cmpb	8(%rax), %dil
	cmovb	%rdx, %rax
	cmpb	8(%rbp), %sil
	cmovnb	%rcx, %rbp
.L232:
	movq	(%rcx), %rdx
	jmp	.L227
.L259:
	movq	%rdx, %rax
	jmp	.L225
.L251:
	leaq	72(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	movq	8(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	leaq	56(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev@PLT
	addq	$184, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5027:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA5027:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5027-.LLSDACSB5027
.LLSDACSB5027:
	.uleb128 .LEHB0-.LFB5027
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L263-.LFB5027
	.uleb128 0
	.uleb128 .LEHB1-.LFB5027
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L264-.LFB5027
	.uleb128 0
	.uleb128 .LEHB2-.LFB5027
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L263-.LFB5027
	.uleb128 0
	.uleb128 .LEHB3-.LFB5027
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L265-.LFB5027
	.uleb128 0
	.uleb128 .LEHB4-.LFB5027
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L263-.LFB5027
	.uleb128 0
	.uleb128 .LEHB5-.LFB5027
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE5027:
	.text
	.size	_Z12valid_mmovesRK10game_state, .-_Z12valid_mmovesRK10game_state
	.section	.text.unlikely
.LCOLDE71:
	.text
.LHOTE71:
	.section	.rodata.str1.1
.LC72:
	.string	"state && mmove"
.LC73:
	.string	"state->player == PLAYER_ABOVE || state->player == PLAYER_BELOW"
.LC74:
	.string	"state->dice[0] > 0 && state->dice[1] > 0 && state->dice[0] < 7 && state->dice[1] < 7 && \"Broken dice\""
.LC75:
	.string	"(%hu %hu) "
.LC76:
	.string	"You must use all your dice if there are legal moves possible. One possibility: %s"
.LC77:
	.string	"mm.num_moves == 1"
.LC78:
	.string	"When not using both dice you must use the higher one if possible. One possibility: %s"
.LC79:
	.ascii	"std::any_of(mmoves.cbegin(), mmoves.cend(), [&int_mmove](mul"
	.ascii	"ti_move const & mm) { if (mm.num_moves != int_mmove.num_move"
	.ascii	"s) retur"
	.string	"n false; for (size_t cc = 0; cc < mm.num_moves; ++cc) { if (mm.moves[cc].point_from != int_mmove.moves[cc].point_from) return false; if (mm.moves[cc].roll != int_mmove.moves[cc].roll) return false; } return true; }) && \"Invalid move slipped through checks\""
	.section	.text.unlikely
.LCOLDB80:
	.text
.LHOTB80:
	.globl	_Z16apply_multi_moveP10game_statePK10multi_move
	.type	_Z16apply_multi_moveP10game_statePK10multi_move, @function
_Z16apply_multi_moveP10game_statePK10multi_move:
.LFB5040:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5040
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$424, %rsp
	.cfi_def_cfa_offset 480
	testq	%rdi, %rdi
	je	.L343
	testq	%rsi, %rsi
	movq	%rsi, %r12
	jne	.L305
.L343:
	leaq	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$579, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC72(%rip), %rdi
	jmp	.L365
.L305:
	movsbq	(%rdi), %rdi
	movl	$1, %esi
	call	__addvdi3@PLT
	testb	$-3, %al
	je	.L307
	leaq	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	leaq	.LC73(%rip), %rdi
	movl	$580, %edx
.L365:
	call	__assert_fail@PLT
.L307:
	movw	2(%rbx), %dx
	testw	%dx, %dx
	je	.L308
	movw	4(%rbx), %ax
	decl	%eax
	cmpw	$5, %ax
	seta	%cl
	cmpw	$6, %dx
	seta	%al
	orb	%al, %cl
	je	.L309
.L308:
	leaq	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$582, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC74(%rip), %rdi
	jmp	.L365
.L309:
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
.LEHB6:
	call	_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
	testb	%al, %al
	movb	%al, %r13b
	je	.L349
	movw	2(%rbx), %ax
	leaq	102(%rsp), %rbp
	movq	%rbx, %rdi
	leaq	48(%rsp), %r14
	movq	%rbp, %rsi
	movw	%ax, 28(%rsp)
	movw	4(%rbx), %ax
	leaq	2(%r14), %r15
	movw	%ax, 30(%rsp)
	call	_Z11to_internalPK10game_statePS_@PLT
	movsbl	(%rbx), %esi
	movq	%r14, %rdx
	movq	%r12, %rdi
	call	_Z11to_internalPK10multi_moveaPS_@PLT
	leaq	40(%rsp), %rax
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	_Z12valid_mmovesRK10game_state@PLT
.LEHE6:
	movq	$0, 16(%rsp)
.L311:
	movzbl	48(%rsp), %edi
	cmpq	%rdi, 16(%rsp)
	movq	%rdi, %rcx
	jnb	.L366
	movl	$1, %edx
	movq	%r15, %rsi
	movq	%rbp, %rdi
.LEHB7:
	call	_Z10check_movePK10game_statePK9game_moveb@PLT
	testb	%al, %al
	je	.L340
	movl	$1, %edx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	_Z10apply_moveP10game_statePK9game_moveb@PLT
	incq	16(%rsp)
	addq	$4, %r15
	jmp	.L311
.L366:
	movw	30(%rsp), %dx
	cmpw	%dx, 28(%rsp)
	movzbl	(%r12), %edx
	sete	%r9b
	cmpb	$1, %r9b
	movl	%edx, %r8d
	sbbl	%eax, %eax
	andl	$-2, %eax
	addl	$4, %eax
	cmpl	%eax, %edx
	movq	40(%rsp), %rdx
	je	.L315
	movq	%rdx, %rsi
	movq	%rdx, %rax
.L316:
	testq	%rax, %rax
	je	.L317
	cmpb	%r8b, 8(%rax)
	ja	.L318
	movq	(%rax), %rax
	jmp	.L316
.L317:
	testb	%r8b, %r8b
	movl	104(%rsp), %r10d
	movw	106(%rsp), %ax
	setne	%r8b
	cmpb	%r8b, %r9b
	jnb	.L315
	cmpw	%r10w, %ax
	cmovb	%r10d, %eax
	cmpw	%ax, 4(%r12)
	jne	.L324
.L315:
	movq	%rdx, %rax
.L330:
	testq	%rax, %rax
	je	.L344
	xorl	%edx, %edx
	cmpb	%cl, 8(%rax)
	je	.L333
.L332:
	movq	(%rax), %rax
	jmp	.L330
.L334:
	movw	2(%r14,%rdx,4), %si
	cmpw	%si, 10(%rax,%rdx,4)
	jne	.L332
	movl	4(%r14,%rdx,4), %esi
	cmpw	%si, 12(%rax,%rdx,4)
	jne	.L332
	incq	%rdx
.L333:
	cmpq	%rdi, %rdx
	jne	.L334
	testq	%rax, %rax
	jne	.L335
.L344:
	leaq	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$689, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC79(%rip), %rdi
	jmp	.L365
.L335:
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_Z13from_internalPK10game_statePS_@PLT
	jmp	.L312
.L367:
	leaq	.LC76(%rip), %rsi
	movq	%r13, %rdx
.L364:
	movl	$1, %edi
	xorl	%eax, %eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
.LEHE7:
.L340:
	xorl	%r13d, %r13d
.L312:
	movq	8(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	jmp	.L349
.L342:
	movq	%rax, %rbx
.L336:
	movq	8(%rsp), %rdi
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	movq	%rbx, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L318:
	leaq	84(%rsp), %rdi
	leaq	8(%rax), %rsi
	movl	$18, %ecx
	rep movsb
	movsbl	(%rbx), %esi
	leaq	66(%rsp), %rbp
	leaq	84(%rsp), %rdi
	movq	%rbp, %rdx
.LEHB9:
	call	_Z13from_internalPK10multi_moveaPS_@PLT
	leaq	160(%rsp), %r13
	xorl	%r12d, %r12d
	xorl	%eax, %eax
.L320:
	movzbl	66(%rsp), %edx
	addq	$4, %rbp
	cmpq	%rdx, %r12
	jnb	.L367
	movzwl	-2(%rbp), %ecx
	movzwl	0(%rbp), %r8d
	movslq	%eax, %rbx
	leaq	0(%r13,%rbx), %rdi
	leaq	.LC75(%rip), %rdx
	movl	$256, %esi
	subq	%rbx, %rsi
	xorl	%eax, %eax
	incq	%r12
	call	snprintf@PLT
	movq	%rbx, %rdi
	movslq	%eax, %rsi
	call	__addvdi3@PLT
	jmp	.L320
.L325:
	cmpw	%ax, 12(%rsi)
	je	.L326
	movq	(%rsi), %rsi
.L324:
	testq	%rsi, %rsi
	je	.L315
	cmpb	$1, 8(%rsi)
	je	.L325
	leaq	_ZZZ16apply_multi_moveP10game_statePK10multi_moveENKUlRS2_E0_clES4_E19__PRETTY_FUNCTION__(%rip), %rcx
	movl	$652, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC77(%rip), %rdi
	jmp	.L365
.L326:
	leaq	84(%rsp), %rdi
	addq	$8, %rsi
	movl	$18, %ecx
	rep movsb
	movsbl	(%rbx), %esi
	leaq	66(%rsp), %rbp
	leaq	84(%rsp), %rdi
	movq	%rbp, %rdx
	call	_Z13from_internalPK10multi_moveaPS_@PLT
.LEHE9:
	leaq	160(%rsp), %r13
	xorl	%r12d, %r12d
	xorl	%eax, %eax
.L328:
	movzbl	66(%rsp), %edx
	addq	$4, %rbp
	cmpq	%rdx, %r12
	jnb	.L368
	movzwl	-2(%rbp), %ecx
	movzwl	0(%rbp), %r8d
	movslq	%eax, %rbx
	leaq	0(%r13,%rbx), %rdi
	leaq	.LC75(%rip), %rdx
	movl	$256, %esi
	subq	%rbx, %rsi
	xorl	%eax, %eax
	incq	%r12
	call	snprintf@PLT
	movq	%rbx, %rdi
	movslq	%eax, %rsi
	call	__addvdi3@PLT
	jmp	.L328
.L368:
	movq	%r13, %rdx
	leaq	.LC78(%rip), %rsi
	jmp	.L364
.L349:
	addq	$424, %rsp
	.cfi_def_cfa_offset 56
	movb	%r13b, %al
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5040:
	.section	.gcc_except_table
.LLSDA5040:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5040-.LLSDACSB5040
.LLSDACSB5040:
	.uleb128 .LEHB6-.LFB5040
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB5040
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L342-.LFB5040
	.uleb128 0
	.uleb128 .LEHB8-.LFB5040
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB5040
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L342-.LFB5040
	.uleb128 0
.LLSDACSE5040:
	.text
	.size	_Z16apply_multi_moveP10game_statePK10multi_move, .-_Z16apply_multi_moveP10game_statePK10multi_move
	.section	.text.unlikely
.LCOLDE80:
	.text
.LHOTE80:
	.section	.rodata
	.align 64
	.type	_ZZZ16apply_multi_moveP10game_statePK10multi_moveENKUlRS2_E0_clES4_E19__PRETTY_FUNCTION__, @object
	.size	_ZZZ16apply_multi_moveP10game_statePK10multi_moveENKUlRS2_E0_clES4_E19__PRETTY_FUNCTION__, 78
_ZZZ16apply_multi_moveP10game_statePK10multi_moveENKUlRS2_E0_clES4_E19__PRETTY_FUNCTION__:
	.string	"apply_multi_move(game_state*, const multi_move*)::<lambda(const multi_move&)>"
	.align 16
	.type	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__, @object
	.size	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__, 54
_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__:
	.string	"bool apply_multi_move(game_state*, const multi_move*)"
	.align 16
	.type	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__, @object
	.size	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__, 62
_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__:
	.string	"std::forward_list<multi_move> valid_mmoves(const game_state&)"
	.align 16
	.type	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__, @object
	.size	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__, 53
_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__:
	.string	"void apply_move(game_state*, const game_move*, bool)"
	.align 64
	.type	_ZZN12_GLOBAL__N_110check_fromEPK10game_statetbE19__PRETTY_FUNCTION__, @object
	.size	_ZZN12_GLOBAL__N_110check_fromEPK10game_statetbE19__PRETTY_FUNCTION__, 74
_ZZN12_GLOBAL__N_110check_fromEPK10game_statetbE19__PRETTY_FUNCTION__:
	.string	"bool {anonymous}::check_from(const game_state*, short unsigned int, bool)"
	.align 64
	.type	_ZZN12_GLOBAL__N_18check_toEPK10game_statetbE19__PRETTY_FUNCTION__, @object
	.size	_ZZN12_GLOBAL__N_18check_toEPK10game_statetbE19__PRETTY_FUNCTION__, 72
_ZZN12_GLOBAL__N_18check_toEPK10game_statetbE19__PRETTY_FUNCTION__:
	.string	"bool {anonymous}::check_to(const game_state*, short unsigned int, bool)"
	.align 16
	.type	_ZZ10check_movePK10game_statePK9game_movebE19__PRETTY_FUNCTION__, @object
	.size	_ZZ10check_movePK10game_statePK9game_movebE19__PRETTY_FUNCTION__, 59
_ZZ10check_movePK10game_statePK9game_movebE19__PRETTY_FUNCTION__:
	.string	"bool check_move(const game_state*, const game_move*, bool)"
	.align 16
	.type	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__, @object
	.size	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__, 30
_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__:
	.string	"int winner(const game_state*)"
	.align 16
	.type	_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__, @object
	.size	_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__, 58
_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__:
	.string	"void {anonymous}::count_checkers(const game_state*, int*)"
	.align 16
	.type	_ZZ14is_final_statePK10game_stateE19__PRETTY_FUNCTION__, @object
	.size	_ZZ14is_final_statePK10game_stateE19__PRETTY_FUNCTION__, 39
_ZZ14is_final_statePK10game_stateE19__PRETTY_FUNCTION__:
	.string	"bool is_final_state(const game_state*)"
	.align 16
	.type	_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__, @object
	.size	_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__, 62
_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__:
	.string	"void to_internal(const multi_move*, signed char, multi_move*)"
	.align 16
	.type	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__, @object
	.size	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__, 60
_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__:
	.string	"void to_internal(const game_move*, signed char, game_move*)"
	.align 16
	.type	_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__, @object
	.size	_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__, 49
_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__:
	.string	"void to_internal(const game_state*, game_state*)"
	.align 16
	.type	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__, @object
	.size	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__, 52
_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__:
	.string	"void set_higher_bar(short int*, short unsigned int)"
	.align 16
	.type	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__, @object
	.size	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__, 51
_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__:
	.string	"void set_lower_bar(short int*, short unsigned int)"
	.align 64
	.type	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__, @object
	.size	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__, 84
_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__:
	.string	"void to_internal(unsigned char, short int, signed char, unsigned char*, short int*)"
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
