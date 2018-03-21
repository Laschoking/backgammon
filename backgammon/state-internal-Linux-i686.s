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
.LFB4901:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	cmpb	$0, 8(%ebp)
	je	.L1
	movl	stderr@GOT(%ebx), %esi
	pushl	%eax
	leal	16(%ebp), %edi
	pushl	%eax
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	(%esi)
	pushl	%eax
	call	fputs@PLT
	addl	$12, %esp
	pushl	%edi
	pushl	12(%ebp)
	pushl	(%esi)
	call	vfprintf@PLT
	popl	%edx
	popl	%ecx
	pushl	(%esi)
	pushl	$10
	call	fputc@PLT
	addl	$16, %esp
.L1:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4901:
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
.LFB4918:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$16, %esp
	movb	(%edx), %cl
	movl	8(%ebp), %esi
	cmpb	$4, %cl
	movl	%esi, -12(%ebp)
	jbe	.L6
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%ecx
	pushl	%ecx
	jmp	.L18
.L6:
	movw	4(%eax), %si
	cmpw	%si, 2(%eax)
	je	.L8
	cmpb	$2, %cl
	ja	.L9
	movb	$1, %al
	jne	.L7
	movw	8(%edx), %si
	cmpw	%si, 4(%edx)
	jne	.L7
.L9:
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%edx
	pushl	%edx
	jmp	.L18
.L8:
	cmpb	$4, %cl
	jne	.L10
	movw	4(%edx), %ax
	cmpw	8(%edx), %ax
	jne	.L11
	cmpw	12(%edx), %ax
	jne	.L11
	cmpw	16(%edx), %ax
	jne	.L11
	jmp	.L12
.L10:
	cmpb	$3, %cl
	movb	$1, %al
	jne	.L7
.L12:
	movw	4(%edx), %si
	cmpw	8(%edx), %si
	jne	.L11
	cmpw	12(%edx), %si
	movb	$1, %al
	je	.L7
.L11:
	pushl	%eax
	pushl	%eax
	leal	.LC4@GOTOFF(%ebx), %eax
.L18:
	movzbl	-12(%ebp), %ecx
	pushl	%eax
	pushl	%ecx
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
	xorl	%eax, %eax
.L7:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4918:
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
	.globl	__subvsi3
	.globl	__addvsi3
.LC8:
	.string	"count[0] >= 0 && count[0] <= NUM_CHECKERS && count[1] >= 0 && count[1] <= NUM_CHECKERS"
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.type	_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi, @function
_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi:
.LFB4900:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %edi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	testl	%eax, %eax
	jne	.L20
	leal	_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$25
	pushl	%eax
	leal	.LC7@GOTOFF(%ebx), %eax
	jmp	.L31
.L20:
	movl	%edx, %esi
	movl	$0, 4(%edx)
	movl	$0, (%edx)
	movl	$1, %ecx
.L23:
	movswl	6(%edi,%ecx,2), %edx
	xorl	%eax, %eax
	movl	%ecx, -36(%ebp)
	pushl	%ecx
	pushl	%ecx
	testw	%dx, %dx
	setg	%al
	movl	%eax, -28(%ebp)
	sall	$2, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	%esi, %eax
	movl	%eax, -32(%ebp)
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	pushl	%eax
	pushl	%edx
	call	__subvsi3@PLT
	popl	%edx
	popl	%ecx
	pushl	%eax
	movl	-28(%ebp), %eax
	pushl	(%esi,%eax)
	call	__addvsi3@PLT
	movl	-32(%ebp), %ecx
	addl	$16, %esp
	movl	%eax, (%ecx)
	movl	-36(%ebp), %ecx
	incl	%ecx
	cmpl	$25, %ecx
	jne	.L23
	movw	6(%edi), %ax
	movb	$100, %cl
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movzwl	%ax, %eax
	movzwl	%dx, %edi
	pushl	%edx
	pushl	%edx
	pushl	(%esi)
	pushl	%eax
	call	__addvsi3@PLT
	popl	%ecx
	popl	%edx
	movl	%eax, (%esi)
	pushl	4(%esi)
	pushl	%edi
	movl	%eax, -28(%ebp)
	call	__addvsi3@PLT
	addl	$16, %esp
	cmpl	$15, %eax
	movl	%eax, 4(%esi)
	ja	.L28
	movl	-28(%ebp), %edx
	cmpl	$15, %edx
	jbe	.L19
.L28:
	leal	_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$36
	pushl	%eax
	leal	.LC8@GOTOFF(%ebx), %eax
.L31:
	pushl	%eax
	call	__assert_fail@PLT
.L19:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4900:
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
.LFB5477:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	movl	(%eax), %eax
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	movl	(%eax), %edx
	pushl	%eax
	movl	%edx, (%esi)
	call	_ZdlPv@PLT
	movl	(%esi), %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5477:
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
.LFB4897:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	movl	8(%ebp), %esi
	movl	12(%ebp), %ecx
	testl	%esi, %esi
	jne	.L35
	leal	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC11@GOTOFF(%ebx), %eax
	pushl	$96
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	jmp	.L39
.L35:
	cmpw	$15, %cx
	jbe	.L36
	leal	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC11@GOTOFF(%ebx), %eax
	pushl	$97
	pushl	%eax
	leal	.LC13@GOTOFF(%ebx), %eax
.L39:
	pushl	%eax
	call	__assert_fail@PLT
.L36:
	movw	(%esi), %ax
	movl	$100, %edi
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%di
	imull	$100, %eax, %eax
	addl	%ecx, %eax
	cmpw	$1515, %ax
	movw	%ax, (%esi)
	jbe	.L34
	leal	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC11@GOTOFF(%ebx), %eax
	pushl	$99
	pushl	%eax
	leal	.LC14@GOTOFF(%ebx), %eax
	jmp	.L39
.L34:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4897:
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
.LFB4898:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	movl	8(%ebp), %esi
	movl	12(%ebp), %ecx
	testl	%esi, %esi
	jne	.L41
	leal	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC11@GOTOFF(%ebx), %eax
	pushl	$106
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	jmp	.L45
.L41:
	cmpw	$15, %cx
	jbe	.L42
	leal	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC11@GOTOFF(%ebx), %eax
	pushl	$107
	pushl	%eax
	leal	.LC16@GOTOFF(%ebx), %eax
.L45:
	pushl	%eax
	call	__assert_fail@PLT
.L42:
	movw	(%esi), %ax
	movl	$100, %edi
	imull	$100, %ecx, %ecx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%di
	addl	%ecx, %edx
	cmpw	$1515, %dx
	movw	%dx, (%esi)
	jbe	.L40
	leal	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC11@GOTOFF(%ebx), %eax
	pushl	$109
	pushl	%eax
	leal	.LC14@GOTOFF(%ebx), %eax
	jmp	.L45
.L40:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4898:
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
.LFB4902:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	cmpl	$0, 20(%ebp)
	movl	12(%ebp), %edi
	movl	16(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	24(%ebp), %esi
	movw	%di, -32(%ebp)
	movl	%eax, -28(%ebp)
	je	.L59
	testl	%esi, %esi
	jne	.L47
.L59:
	leal	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$60
	pushl	%eax
	leal	.LC18@GOTOFF(%ebx), %eax
	jmp	.L62
.L47:
	cmpb	$25, %cl
	jbe	.L49
	leal	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$61
	pushl	%eax
	leal	.LC19@GOTOFF(%ebx), %eax
.L62:
	pushl	%eax
	call	__assert_fail@PLT
.L49:
	testb	%cl, %cl
	je	.L50
	leal	15(%edi), %eax
	cmpw	$30, %ax
	jbe	.L50
	leal	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$62
	pushl	%eax
	leal	.LC20@GOTOFF(%ebx), %eax
	jmp	.L62
.L50:
	movsbl	-28(%ebp), %eax
	pushl	%edx
	pushl	%edx
	pushl	$1
	movl	%ecx, -36(%ebp)
	pushl	%eax
	call	__addvsi3@PLT
	addl	$16, %esp
	testb	$-3, %al
	movl	-36(%ebp), %ecx
	je	.L51
	leal	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$63
	pushl	%eax
	leal	.LC21@GOTOFF(%ebx), %eax
	jmp	.L62
.L51:
	testb	%cl, %cl
	jne	.L52
	cmpb	$1, -28(%ebp)
	jne	.L53
	movw	%di, (%esi)
	jmp	.L54
.L53:
	movl	-32(%ebp), %eax
	movl	$100, %edi
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%di
	cmpw	$15, %ax
	movzwl	%dx, %edi
	jg	.L60
	cmpw	$15, %di
	jle	.L55
.L60:
	leal	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$75
	pushl	%eax
	leal	.LC22@GOTOFF(%ebx), %eax
	jmp	.L62
.L55:
	movzwl	%ax, %eax
	movw	$0, (%esi)
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	%esi
	movl	%ecx, -32(%ebp)
	call	_Z13set_lower_barPst@PLT
	popl	%ecx
	popl	%eax
	pushl	%edi
	pushl	%esi
	call	_Z14set_higher_barPst@PLT
	addl	$16, %esp
	movl	-32(%ebp), %ecx
	jmp	.L54
.L52:
	movsbw	-28(%ebp), %ax
	imull	%edi, %eax
	movw	%ax, (%esi)
.L54:
	testb	%cl, %cl
	sete	%dl
	cmpb	$25, %cl
	sete	%al
	orb	%al, %dl
	jne	.L57
	cmpb	$-1, -28(%ebp)
	je	.L57
	movb	$25, %al
	subl	%ecx, %eax
	movb	%al, %cl
.L57:
	movl	20(%ebp), %eax
	movb	%cl, (%eax)
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4902:
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
.LFB4903:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$16, %esp
	movsbl	16(%ebp), %eax
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	%eax
	movswl	12(%ebp), %eax
	pushl	%eax
	movzbl	8(%ebp), %eax
	pushl	%eax
	call	_Z11to_internalhsaPhPs@PLT
	addl	$32, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4903:
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
.LFB4912:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	movl	8(%ebp), %esi
	testl	%eax, %eax
	movl	%esi, -44(%ebp)
	jne	.L66
	leal	_ZZN12_GLOBAL__N_110check_fromEPK10game_statetbE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$229
	pushl	%eax
	leal	.LC25@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L66:
	movl	%edx, %ecx
	movb	(%eax), %dl
	leal	6(%eax), %edi
	cmpw	$24, %cx
	movb	%dl, -47(%ebp)
	jbe	.L67
	leal	.LC26@GOTOFF(%ebx), %eax
	pushl	%ecx
	pushl	%ecx
	jmp	.L74
.L67:
	movzwl	%cx, %esi
	movw	(%edi,%esi,2), %di
	testw	%di, %di
	movw	%di, -46(%ebp)
	jne	.L69
	leal	-26(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	leal	-27(%ebp), %eax
	pushl	%eax
	movsbl	-47(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	%esi
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	-27(%ebp), %eax
	addl	$28, %esp
	pushl	%eax
	leal	.LC27@GOTOFF(%ebx), %eax
	jmp	.L75
.L69:
	movw	6(%eax), %ax
	movl	$100, %edi
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%di
	movl	%edx, %edi
	orw	%cx, %di
	jne	.L70
	movzwl	%ax, %eax
	pushl	%edx
	pushl	%eax
	leal	.LC28@GOTOFF(%ebx), %eax
	jmp	.L74
.L70:
	testw	%dx, %dx
	setne	%dl
	testw	%cx, %cx
	setne	%al
	andb	%al, %dl
	movl	%edx, %edi
	je	.L71
	pushl	%eax
	pushl	%eax
	leal	.LC29@GOTOFF(%ebx), %eax
.L74:
	pushl	%eax
	movzbl	-44(%ebp), %eax
	xorl	%edi, %edi
	pushl	%eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
	jmp	.L68
.L71:
	cmpw	$0, -46(%ebp)
	jns	.L72
	leal	-26(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	leal	-27(%ebp), %eax
	pushl	%eax
	movsbl	-47(%ebp), %eax
	pushl	%eax
	movswl	-46(%ebp), %eax
	pushl	%eax
	pushl	%esi
	call	_Z13from_internalhsaPhPs@PLT
	movswl	-26(%ebp), %eax
	addl	$24, %esp
	cltd
	xorl	%edx, %eax
	pushl	%edx
	pushl	%eax
	call	__subvsi3@PLT
	addl	$16, %esp
	pushl	%eax
	movzbl	-27(%ebp), %eax
	pushl	%eax
	leal	.LC30@GOTOFF(%ebx), %eax
.L75:
	pushl	%eax
	movzbl	-44(%ebp), %eax
	pushl	%eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
	jmp	.L68
.L72:
	movl	$1, %edi
.L68:
	leal	-12(%ebp), %esp
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4912:
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
.LFB4904:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	testl	%esi, %esi
	je	.L81
	testl	%edi, %edi
	jne	.L77
.L81:
	leal	_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$107
	pushl	%eax
	leal	.LC32@GOTOFF(%ebx), %eax
	jmp	.L84
.L77:
	cmpl	%edi, %esi
	jne	.L79
	leal	_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$108
	pushl	%eax
	leal	.LC33@GOTOFF(%ebx), %eax
.L84:
	pushl	%eax
	call	__assert_fail@PLT
.L79:
	movb	(%esi), %al
	leal	-26(%ebp), %ecx
	movb	%al, (%edi)
	movw	2(%esi), %ax
	movw	%ax, 2(%edi)
	movw	4(%esi), %ax
	movw	%ax, 4(%edi)
	xorl	%eax, %eax
.L80:
	leal	-27(%ebp), %edx
	subl	$12, %esp
	movl	%ecx, -48(%ebp)
	pushl	%ecx
	movl	%eax, -44(%ebp)
	pushl	%edx
	movsbl	(%esi), %edx
	pushl	%edx
	movswl	6(%esi,%eax,2), %edx
	pushl	%edx
	pushl	%eax
	call	_Z11to_internalhsaPhPs@PLT
	movzbl	-27(%ebp), %edx
	movw	-26(%ebp), %ax
	addl	$32, %esp
	movl	-48(%ebp), %ecx
	movw	%ax, 6(%edi,%edx,2)
	movl	-44(%ebp), %eax
	incl	%eax
	cmpl	$26, %eax
	jne	.L80
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4904:
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
.LFB4905:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	_Z11to_internalPK10game_statePS_@PLT
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4905:
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
.LFB4906:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	movl	8(%ebp), %edi
	movl	12(%ebp), %eax
	movl	16(%ebp), %esi
	testl	%edi, %edi
	movl	%eax, -28(%ebp)
	je	.L93
	testl	%esi, %esi
	jne	.L88
.L93:
	leal	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$136
	pushl	%eax
	leal	.LC36@GOTOFF(%ebx), %eax
	jmp	.L95
.L88:
	cmpl	%esi, %edi
	jne	.L90
	leal	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$137
	pushl	%eax
	leal	.LC37@GOTOFF(%ebx), %eax
.L95:
	pushl	%eax
	call	__assert_fail@PLT
.L90:
	movsbl	-28(%ebp), %eax
	pushl	%edx
	pushl	%edx
	pushl	$1
	pushl	%eax
	call	__addvsi3@PLT
	addl	$16, %esp
	testb	$-3, %al
	je	.L91
	leal	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$138
	pushl	%eax
	leal	.LC21@GOTOFF(%ebx), %eax
	jmp	.L95
.L91:
	movw	(%edi), %cx
	cmpw	$25, %cx
	sete	%dl
	testw	%cx, %cx
	sete	%al
	orb	%al, %dl
	jne	.L92
	cmpb	$-1, -28(%ebp)
	je	.L92
	movl	$25, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
.L92:
	movw	2(%edi), %ax
	movw	%cx, (%esi)
	movw	%ax, 2(%esi)
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4906:
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
.LFB4907:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	movsbl	12(%ebp), %eax
	pushl	16(%ebp)
	pushl	%eax
	pushl	8(%ebp)
	call	_Z11to_internalPK9game_moveaPS_@PLT
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4907:
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
.LFB4908:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$28, %esp
	movl	8(%ebp), %edi
	movl	16(%ebp), %esi
	movsbl	12(%ebp), %eax
	testl	%edi, %edi
	je	.L104
	testl	%esi, %esi
	jne	.L99
.L104:
	leal	_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$163
	pushl	%eax
	leal	.LC40@GOTOFF(%ebx), %eax
	jmp	.L106
.L99:
	cmpl	%esi, %edi
	jne	.L101
	leal	_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$164
	pushl	%eax
	leal	.LC41@GOTOFF(%ebx), %eax
.L106:
	pushl	%eax
	call	__assert_fail@PLT
.L101:
	movb	(%edi), %dl
	addl	$2, %esi
	movl	$0, -28(%ebp)
	movb	%dl, -2(%esi)
	leal	2(%edi), %edx
.L102:
	movzbl	(%edi), %ecx
	cmpl	%ecx, -28(%ebp)
	jnb	.L107
	pushl	%ecx
	pushl	%esi
	addl	$4, %esi
	pushl	%eax
	pushl	%edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	call	_Z11to_internalPK9game_moveaPS_@PLT
	movl	-32(%ebp), %edx
	incl	-28(%ebp)
	addl	$16, %esp
	movl	-36(%ebp), %eax
	addl	$4, %edx
	jmp	.L102
.L107:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4908:
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
.LFB4909:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$8, %esp
	movsbl	12(%ebp), %eax
	pushl	16(%ebp)
	pushl	%eax
	pushl	8(%ebp)
	call	_Z11to_internalPK10multi_moveaPS_@PLT
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4909:
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
.LFB4910:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$20, %esp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jne	.L111
	leal	_ZZ14is_final_statePK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$186
	pushl	%eax
	leal	.LC7@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L111:
	leal	-16(%ebp), %edx
	call	_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi
	cmpl	$0, -16(%ebp)
	movb	$1, %al
	je	.L112
	cmpl	$0, -12(%ebp)
	sete	%al
.L112:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4910:
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
	.globl	__mulvsi3
	.section	.text.unlikely
.LCOLDB47:
	.text
.LHOTB47:
	.globl	_Z6winnerPK10game_state
	.type	_Z6winnerPK10game_state, @function
_Z6winnerPK10game_state:
.LFB4911:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	cmpl	$0, 8(%ebp)
	jne	.L116
	leal	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$197
	pushl	%eax
	leal	.LC7@GOTOFF(%ebx), %eax
	jmp	.L138
.L116:
	movl	8(%ebp), %eax
	leal	-32(%ebp), %edx
	call	_ZN12_GLOBAL__N_114count_checkersEPK10game_statePi
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	jne	.L117
	orl	$-1, %edx
	cmpl	$0, -28(%ebp)
	jg	.L118
.L117:
	cmpl	$0, -28(%ebp)
	jne	.L131
	testl	%eax, %eax
	movl	$1, %edx
	jg	.L118
.L131:
	leal	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$203
	pushl	%eax
	leal	.LC45@GOTOFF(%ebx), %eax
.L138:
	pushl	%eax
	call	__assert_fail@PLT
.L118:
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L120
	leal	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$206
	pushl	%eax
	leal	.LC46@GOTOFF(%ebx), %eax
	jmp	.L138
.L120:
	cmpl	$-1, %edx
	movl	$0, -44(%ebp)
	sete	%al
	movzbl	%al, %edi
	movzbl	%al, %esi
	decl	%edi
	decl	%esi
	andl	$-18, %edi
	andl	$-18, %esi
	addl	$19, %edi
	addl	$24, %esi
.L122:
	cmpl	%esi, %edi
	ja	.L139
	movl	8(%ebp), %eax
	movl	%edx, -48(%ebp)
	movswl	6(%eax,%edi,2), %eax
	pushl	%edx
	incl	%edi
	pushl	%edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	pushl	%ecx
	pushl	%eax
	call	__subvsi3@PLT
	popl	%ecx
	popl	%edx
	pushl	%eax
	pushl	-44(%ebp)
	call	__addvsi3@PLT
	addl	$16, %esp
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %edx
	jmp	.L122
.L139:
	xorl	%ecx, %ecx
	cmpl	$-1, %edx
	movl	$1, %eax
	sete	%cl
	cmpl	$14, -32(%ebp,%ecx,4)
	jle	.L124
	cmpl	$0, -44(%ebp)
	jne	.L132
	movl	8(%ebp), %esi
	movb	$2, %al
	cmpw	$0, 6(%esi)
	je	.L124
.L132:
	movl	$3, %eax
.L124:
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	%edx
	call	__mulvsi3@PLT
	addl	$16, %esp
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4911:
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
.LFB4914:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	movl	8(%ebp), %ecx
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	testl	%ecx, %ecx
	sete	%dl
	testl	%esi, %esi
	sete	%al
	orb	%al, %dl
	movb	%dl, -43(%ebp)
	je	.L141
	leal	_ZZ10check_movePK10game_statePK9game_movebE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$313
	pushl	%eax
	leal	.LC48@GOTOFF(%ebx), %eax
	jmp	.L163
.L141:
	movw	(%esi), %ax
	movzwl	2(%esi), %esi
	movl	%edi, %edx
	movzbl	%dl, %edi
	movw	%ax, -42(%ebp)
	movzwl	2(%ecx), %eax
	cmpw	%ax, %si
	je	.L142
	movzwl	4(%ecx), %edx
	cmpw	%dx, %si
	je	.L142
	subl	$12, %esp
	pushl	%edx
	pushl	%eax
	leal	.LC49@GOTOFF(%ebx), %eax
	pushl	%esi
	pushl	%eax
	pushl	%edi
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	addl	$32, %esp
	jmp	.L143
.L142:
	movzwl	-42(%ebp), %edx
	subl	$12, %esp
	movl	%ecx, %eax
	pushl	%edi
	movl	%ecx, -52(%ebp)
	call	_ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	addl	$16, %esp
	testb	%al, %al
	movb	%al, -48(%ebp)
	movl	-52(%ebp), %ecx
	je	.L143
	movl	%esi, %eax
	addw	-42(%ebp), %ax
	jne	.L145
	leal	_ZZN12_GLOBAL__N_18check_toEPK10game_statetbE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$279
	pushl	%eax
	leal	.LC50@GOTOFF(%ebx), %eax
.L163:
	pushl	%eax
	call	__assert_fail@PLT
.L145:
	cmpw	$24, %ax
	ja	.L154
	movzwl	%ax, %esi
	movswl	6(%ecx,%esi,2), %edx
	cmpw	$-1, %dx
	jge	.L147
	leal	-26(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	leal	-27(%ebp), %eax
	pushl	%eax
	movsbl	(%ecx), %eax
	pushl	%eax
	pushl	%edx
	pushl	%esi
	call	_Z13from_internalhsaPhPs@PLT
	movswl	-26(%ebp), %eax
	addl	$24, %esp
	cltd
	xorl	%edx, %eax
	pushl	%edx
	pushl	%eax
	call	__subvsi3@PLT
	addl	$16, %esp
	pushl	%eax
	movzbl	-27(%ebp), %eax
	pushl	%eax
	leal	.LC51@GOTOFF(%ebx), %eax
	jmp	.L162
.L154:
	movl	$1, %edx
.L146:
	cmpw	$0, 6(%ecx,%edx,2)
	jle	.L148
	leal	-26(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	leal	-27(%ebp), %eax
	pushl	%eax
	movsbl	(%ecx), %eax
	pushl	%eax
	pushl	$0
	pushl	%edx
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	-27(%ebp), %eax
	addl	$28, %esp
	pushl	%eax
	leal	.LC52@GOTOFF(%ebx), %eax
.L162:
	pushl	%eax
	pushl	%edi
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	addl	$16, %esp
	jmp	.L143
.L148:
	incl	%edx
	cmpl	$19, %edx
	jne	.L146
.L147:
	cmpb	$0, -48(%ebp)
	je	.L143
	movzwl	-42(%ebp), %edx
	cmpw	$25, %ax
	movl	$19, %esi
	movl	%edx, -52(%ebp)
	ja	.L160
.L153:
	movb	-48(%ebp), %al
	movb	%al, -43(%ebp)
	jmp	.L143
.L151:
	incl	%esi
.L160:
	cmpl	-52(%ebp), %esi
	jnb	.L153
	subl	$12, %esp
	movl	%ecx, %eax
	movl	%esi, %edx
	pushl	$0
	movl	%ecx, -56(%ebp)
	call	_ZN12_GLOBAL__N_110check_fromEPK10game_statetb
	addl	$16, %esp
	testb	%al, %al
	movl	-56(%ebp), %ecx
	je	.L151
	leal	-26(%ebp), %eax
	leal	-28(%ebp), %edx
	subl	$12, %esp
	movl	%ecx, -48(%ebp)
	pushl	%eax
	pushl	%edx
	movsbl	(%ecx), %edx
	movl	%eax, -52(%ebp)
	pushl	%edx
	movzbl	-42(%ebp), %edx
	pushl	$0
	pushl	%edx
	call	_Z13from_internalhsaPhPs@PLT
	movl	-52(%ebp), %eax
	addl	$20, %esp
	movl	-48(%ebp), %ecx
	pushl	%eax
	leal	-27(%ebp), %eax
	pushl	%eax
	movsbl	(%ecx), %eax
	pushl	%eax
	movl	%esi, %eax
	pushl	$0
	movzbl	%al, %esi
	pushl	%esi
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	-27(%ebp), %eax
	addl	$32, %esp
	pushl	%eax
	movzbl	-28(%ebp), %eax
	pushl	%eax
	leal	.LC53@GOTOFF(%ebx), %eax
	jmp	.L162
.L143:
	movb	-43(%ebp), %al
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4914:
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
.LFB4915:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$44, %esp
	movl	8(%ebp), %esi
	movl	16(%ebp), %eax
	movl	12(%ebp), %edx
	testl	%esi, %esi
	movl	%eax, -48(%ebp)
	je	.L176
	testl	%edx, %edx
	jne	.L165
.L176:
	leal	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$358
	pushl	%eax
	leal	.LC48@GOTOFF(%ebx), %eax
	jmp	.L179
.L165:
	leal	6(%esi), %eax
	movl	%eax, -44(%ebp)
	movzwl	(%edx), %eax
	movl	%eax, %edi
	addw	2(%edx), %di
	cmpw	$24, %ax
	jbe	.L167
	leal	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$368
	pushl	%eax
	leal	.LC55@GOTOFF(%ebx), %eax
.L179:
	pushl	%eax
	call	__assert_fail@PLT
.L167:
	movzwl	%ax, %ecx
	movl	%ecx, -52(%ebp)
	movl	-44(%ebp), %ecx
	movl	-52(%ebp), %edx
	cmpw	$0, (%ecx,%edx,2)
	jg	.L168
	leal	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$369
	pushl	%eax
	leal	.LC56@GOTOFF(%ebx), %eax
	jmp	.L179
.L168:
	leal	-1(%edi), %edx
	cmpw	$29, %dx
	jbe	.L169
	leal	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$370
	pushl	%eax
	leal	.LC57@GOTOFF(%ebx), %eax
	jmp	.L179
.L169:
	cmpw	$24, %di
	ja	.L170
	movl	-44(%ebp), %ecx
	movzwl	%di, %edx
	cmpw	$-1, (%ecx,%edx,2)
	jge	.L170
	leal	_ZZ10apply_moveP10game_statePK9game_movebE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$371
	pushl	%eax
	leal	.LC58@GOTOFF(%ebx), %eax
	jmp	.L179
.L170:
	testw	%ax, %ax
	jne	.L171
	pushl	%ecx
	pushl	%ecx
	movl	$100, %ecx
	movw	6(%esi), %ax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	decl	%edx
	movzwl	%dx, %edx
	pushl	%edx
	pushl	-44(%ebp)
	call	_Z13set_lower_barPst@PLT
	addl	$16, %esp
	jmp	.L172
.L171:
	decw	6(%esi,%eax,2)
.L172:
	cmpw	$24, %di
	ja	.L173
	movl	-44(%ebp), %eax
	movzwl	%di, %edi
	cmpw	$-1, (%eax,%edi,2)
	jne	.L174
	movw	6(%esi), %ax
	movl	$100, %ecx
	subl	$12, %esp
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movw	%ax, -52(%ebp)
	leal	-26(%ebp), %eax
	pushl	%eax
	leal	-27(%ebp), %eax
	pushl	%eax
	movsbl	(%esi), %eax
	pushl	%eax
	pushl	$0
	pushl	%edi
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	-27(%ebp), %eax
	addl	$28, %esp
	pushl	%eax
	leal	.LC59@GOTOFF(%ebx), %eax
	pushl	%eax
	movzbl	-48(%ebp), %eax
	pushl	%eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	popl	%eax
	movl	-52(%ebp), %eax
	popl	%edx
	incl	%eax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	-44(%ebp)
	call	_Z14set_higher_barPst@PLT
	movw	$1, 6(%esi,%edi,2)
	jmp	.L178
.L173:
	leal	-26(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	leal	-27(%ebp), %eax
	pushl	%eax
	movsbl	(%esi), %eax
	pushl	%eax
	pushl	$0
	pushl	-52(%ebp)
	call	_Z13from_internalhsaPhPs@PLT
	movzbl	-27(%ebp), %eax
	addl	$28, %esp
	pushl	%eax
	leal	.LC60@GOTOFF(%ebx), %eax
	pushl	%eax
	movzbl	-48(%ebp), %eax
	pushl	%eax
	call	_ZN12_GLOBAL__N_14hintEbPKcz
	incw	56(%esi)
.L178:
	addl	$16, %esp
	jmp	.L164
.L174:
	addl	%edi, %edi
	incw	6(%esi,%edi)
.L164:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4915:
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
.LFB5030:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$40, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %esi
	pushl	$24
	movl	%edx, -28(%ebp)
	call	_Znwj@PLT
	movl	-28(%ebp), %edx
	movl	$0, (%eax)
	leal	4(%eax), %edi
	movl	$18, %ecx
	addl	$16, %esp
	rep movsb
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, (%edx)
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5030:
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
.LFB5138:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	movl	8(%ebp), %eax
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	(%eax), %eax
.L183:
	testl	%eax, %eax
	je	.L186
	movl	(%eax), %esi
	subl	$12, %esp
	pushl	%eax
	call	_ZdlPv@PLT
	addl	$16, %esp
	movl	%esi, %eax
	jmp	.L183
.L186:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5138:
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
.LFB5166:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	movl	8(%ebp), %eax
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	(%eax), %eax
.L188:
	testl	%eax, %eax
	je	.L191
	movl	(%eax), %esi
	subl	$12, %esp
	pushl	%eax
	call	_ZdlPv@PLT
	addl	$16, %esp
	movl	%esi, %eax
	jmp	.L188
.L191:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5166:
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
.LFB4920:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4920
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-102(%ebp), %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$168, %esp
	movl	8(%ebp), %eax
	movl	$0, -124(%ebp)
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	$0, (%eax)
	movl	12(%ebp), %eax
	movw	4(%eax), %cx
	cmpw	%cx, 2(%eax)
	pushl	%esi
	sete	-153(%ebp)
	cmpb	$1, -153(%ebp)
	sbbl	%eax, %eax
	movl	%eax, -144(%ebp)
	andl	$-2, -144(%ebp)
	addl	$4, -144(%ebp)
.LEHB0:
	.cfi_escape 0x2e,0x10
	call	_Z21initialize_multi_moveP10multi_move@PLT
	popl	%eax
	leal	-120(%ebp), %eax
	popl	%edx
	pushl	%esi
	pushl	%eax
	call	_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_@PLT
	addl	$16, %esp
	movl	$0, -140(%ebp)
	movl	%esi, -148(%ebp)
.L213:
	cmpl	$0, -116(%ebp)
	je	.L287
	leal	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$489
	pushl	%eax
	leal	.LC65@GOTOFF(%ebx), %eax
	jmp	.L296
.L302:
	movl	-112(%ebp), %esi
	incb	-102(%ebp)
	leal	-84(%ebp), %edi
	movl	%esi, -124(%ebp)
.L208:
	testl	%esi, %esi
	jne	.L211
.L287:
	movl	-120(%ebp), %esi
	testl	%esi, %esi
	je	.L298
	leal	-120(%ebp), %eax
	addl	$4, %esi
	movl	-148(%ebp), %edi
	movl	$18, %ecx
	rep movsb
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38
	movzbl	-102(%ebp), %eax
	cmpl	-140(%ebp), %eax
	je	.L195
	leal	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$496
	pushl	%eax
	leal	.LC66@GOTOFF(%ebx), %eax
.L296:
	pushl	%eax
	call	__assert_fail@PLT
.L195:
	pushl	%eax
	pushl	%eax
	pushl	-148(%ebp)
	pushl	8(%ebp)
	call	_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_@PLT
	leal	-84(%ebp), %edi
	movl	$58, %ecx
	movl	12(%ebp), %esi
	rep movsb
	leal	-100(%ebp), %esi
	leal	-84(%ebp), %edi
	addl	$16, %esp
	movl	$0, -152(%ebp)
.L196:
	movzbl	-102(%ebp), %eax
	cmpl	%eax, -152(%ebp)
	jnb	.L299
	pushl	%eax
	pushl	$0
	pushl	%esi
	pushl	%edi
	call	_Z10check_movePK10game_statePK9game_moveb@PLT
	addl	$16, %esp
	testb	%al, %al
	jne	.L197
	leal	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$505
	pushl	%eax
	leal	.LC67@GOTOFF(%ebx), %eax
	jmp	.L296
.L197:
	pushl	%eax
	pushl	$0
	pushl	%esi
	pushl	%edi
	call	_Z10apply_moveP10game_statePK9game_moveb@PLT
.LEHE0:
	addl	$16, %esp
	incl	-152(%ebp)
	addl	$4, %esi
	jmp	.L196
.L299:
	movl	-80(%ebp), %eax
	cmpw	%ax, -82(%ebp)
	movl	$0, -112(%ebp)
	movw	$0, -106(%ebp)
	setne	%al
	incl	%eax
	movzbl	%al, %esi
.L200:
	cmpw	$24, -106(%ebp)
	ja	.L300
	xorl	%edi, %edi
.L203:
	cmpl	%esi, %edi
	jnb	.L301
	movw	-82(%ebp,%edi,2), %dx
	leal	-84(%ebp), %eax
	pushl	%ecx
	pushl	$0
	movw	%dx, -104(%ebp)
	leal	-106(%ebp), %edx
	pushl	%edx
	pushl	%eax
.LEHB1:
	call	_Z10check_movePK10game_statePK9game_moveb@PLT
	addl	$16, %esp
	testb	%al, %al
	je	.L201
	subl	$12, %esp
	pushl	$8
	call	_Znwj@PLT
.LEHE1:
	movl	-106(%ebp), %edx
	movl	$0, (%eax)
	addl	$16, %esp
	movl	%edx, 4(%eax)
	movl	-112(%ebp), %edx
	movl	%edx, (%eax)
	movl	%eax, -112(%ebp)
.L201:
	incl	%edi
	jmp	.L203
.L301:
	incw	-106(%ebp)
	jmp	.L200
.L300:
	movl	-124(%ebp), %eax
	jmp	.L204
.L266:
	movl	%eax, %esi
.L205:
	leal	-112(%ebp), %edx
	subl	$12, %esp
	pushl	%edx
	call	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev@PLT
	jmp	.L295
.L204:
	testl	%eax, %eax
	je	.L302
	movl	(%eax), %esi
	subl	$12, %esp
	pushl	%eax
	call	_ZdlPv@PLT
	addl	$16, %esp
	movl	%esi, %eax
	jmp	.L204
.L211:
	cmpb	$4, -102(%ebp)
	leal	4(%esi), %eax
	jbe	.L209
	leal	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$515
	pushl	%eax
	leal	.LC68@GOTOFF(%ebx), %eax
	jmp	.L296
.L209:
	pushl	%edx
	pushl	$0
	pushl	%eax
	pushl	%edi
.LEHB2:
	call	_Z10check_movePK10game_statePK9game_moveb@PLT
	addl	$16, %esp
	testb	%al, %al
	jne	.L210
	leal	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$516
	pushl	%eax
	leal	.LC69@GOTOFF(%ebx), %eax
	jmp	.L296
.L210:
	movl	4(%esi), %eax
	movl	-148(%ebp), %ecx
	movl	-140(%ebp), %edx
	movl	%eax, 2(%ecx,%edx,4)
	pushl	%eax
	pushl	%eax
	leal	-116(%ebp), %eax
	pushl	%ecx
	pushl	%eax
	call	_ZNSt12forward_listI10multi_moveSaIS0_EE10push_frontERKS0_@PLT
.LEHE2:
	addl	$16, %esp
	movl	(%esi), %esi
	jmp	.L208
.L298:
	incl	-140(%ebp)
	movl	-116(%ebp), %eax
	movl	-140(%ebp), %edi
	cmpl	-144(%ebp), %edi
	movl	$0, -116(%ebp)
	movl	%eax, -120(%ebp)
	jne	.L213
	movl	%eax, -140(%ebp)
	movl	8(%ebp), %eax
	movl	$0, -84(%ebp)
	movl	%eax, -148(%ebp)
	leal	-84(%ebp), %eax
.L294:
	cmpl	$0, -140(%ebp)
	movl	%eax, -152(%ebp)
	je	.L303
	subl	$12, %esp
	pushl	$24
.LEHB3:
	call	_Znwj@PLT
.LEHE3:
	movl	-140(%ebp), %ecx
	movl	$0, (%eax)
	leal	4(%eax), %edi
	addl	$16, %esp
	leal	4(%ecx), %esi
	movl	$18, %ecx
	rep movsb
	movl	-152(%ebp), %edi
	movl	%eax, (%edi)
	movl	-140(%ebp), %edi
	movl	(%edi), %edi
	movl	%edi, -140(%ebp)
	jmp	.L294
.L267:
	movl	%eax, %esi
.L217:
	leal	-84(%ebp), %edx
	subl	$12, %esp
	pushl	%edx
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
.L295:
	addl	$16, %esp
	jmp	.L206
.L303:
	movl	-84(%ebp), %edx
	leal	-84(%ebp), %eax
	testl	%edx, %edx
	je	.L218
.L219:
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L304
	movl	%ecx, %eax
	jmp	.L219
.L304:
	leal	-84(%ebp), %ecx
	cmpl	%ecx, %eax
	je	.L218
	movl	8(%ebp), %ecx
	movl	$0, -84(%ebp)
	movl	(%ecx), %ecx
	movl	%ecx, (%eax)
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L218:
	leal	-84(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	movl	8(%ebp), %esi
	addl	$16, %esp
.L221:
	movl	(%esi), %edx
	testl	%edx, %edx
	je	.L222
	subl	$12, %esp
	movl	12(%ebp), %eax
	addl	$4, %edx
	pushl	$0
.LEHB4:
	call	_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
.LEHE4:
	addl	$16, %esp
	testb	%al, %al
	jne	.L223
	movl	%esi, %eax
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38
	jmp	.L221
.L223:
	movl	(%esi), %esi
	jmp	.L221
.L222:
	movl	8(%ebp), %eax
	movl	(%eax), %edi
	testl	%edi, %edi
	jne	.L225
	leal	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$536
	jmp	.L297
.L225:
	movl	(%edi), %edx
	movl	%edi, %eax
	testl	%edx, %edx
	je	.L226
	movb	4(%edi), %cl
	cmpb	%cl, 4(%edx)
	movl	%edx, %eax
	jb	.L254
	movl	%edi, %eax
	movl	%edx, %edi
.L254:
	movl	(%edx), %esi
.L228:
	testl	%esi, %esi
	je	.L226
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -140(%ebp)
	jne	.L229
	movb	4(%esi), %dl
	cmpb	4(%eax), %dl
	jb	.L261
	cmpb	4(%edi), %dl
	jb	.L226
	movl	%esi, %edi
.L226:
	movb	4(%edi), %cl
	cmpb	%cl, 4(%eax)
	je	.L236
	movl	8(%ebp), %esi
.L237:
	movl	(%esi), %eax
	testl	%eax, %eax
	je	.L236
	movb	4(%edi), %cl
	cmpb	%cl, 4(%eax)
	jb	.L305
	movl	%eax, %esi
	jmp	.L237
.L305:
	movl	%esi, %eax
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38
	jmp	.L237
.L236:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L239
	leal	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$548
	jmp	.L297
.L239:
	cmpb	$0, -153(%ebp)
	jne	.L240
	movl	12(%ebp), %ecx
	movw	2(%ecx), %dx
	movw	4(%ecx), %si
	movzbl	4(%edi), %ecx
	cmpl	-144(%ebp), %ecx
	jnb	.L240
	cmpw	%dx, %si
	jnb	.L243
	movl	%edx, %esi
	jmp	.L243
.L246:
	cmpw	%si, 8(%eax,%edx,4)
	je	.L244
	incl	%edx
.L245:
	cmpl	%ecx, %edx
	jb	.L246
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L240
.L243:
	movzbl	4(%eax), %ecx
	xorl	%edx, %edx
	jmp	.L245
.L244:
	testl	%eax, %eax
	je	.L240
.L250:
	movl	-148(%ebp), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L240
	movzbl	4(%edx), %ecx
	xorl	%eax, %eax
.L249:
	cmpl	%ecx, %eax
	jnb	.L306
	cmpw	%si, 8(%edx,%eax,4)
	jne	.L307
	movl	%edx, -148(%ebp)
	jmp	.L250
.L307:
	incl	%eax
	jmp	.L249
.L306:
	movl	-148(%ebp), %eax
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EE14_M_erase_afterEPSt19_Fwd_list_node_base.isra.38
	jmp	.L250
.L240:
	movl	8(%ebp), %eax
	cmpl	$0, (%eax)
	jne	.L253
	leal	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$572
.L297:
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC70@GOTOFF(%ebx), %eax
	jmp	.L296
.L265:
	movl	%eax, %esi
.L206:
	subl	$12, %esp
	pushl	8(%ebp)
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	leal	-116(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	leal	-120(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	leal	-124(%ebp), %edx
	movl	%edx, (%esp)
	call	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev@PLT
	movl	%esi, (%esp)
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L229:
	movl	-140(%ebp), %ecx
	movb	4(%esi), %dl
	movb	4(%ecx), %cl
	cmpb	%dl, %cl
	jnb	.L231
	cmpb	4(%eax), %cl
	jnb	.L232
	movl	-140(%ebp), %eax
.L232:
	cmpb	4(%edi), %dl
	jb	.L233
	movl	%esi, %edi
	jmp	.L233
.L231:
	cmpb	4(%eax), %dl
	jnb	.L234
	movl	%esi, %eax
.L234:
	cmpb	4(%edi), %cl
	jb	.L233
	movl	-140(%ebp), %edi
.L233:
	movl	-140(%ebp), %ecx
	movl	(%ecx), %esi
	jmp	.L228
.L261:
	movl	%esi, %eax
	jmp	.L226
.L253:
	leal	-116(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	leal	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt14_Fwd_list_baseI9game_moveSaIS0_EED2Ev@PLT
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE4920:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4920:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4920-.LLSDACSB4920
.LLSDACSB4920:
	.uleb128 .LEHB0-.LFB4920
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L265-.LFB4920
	.uleb128 0
	.uleb128 .LEHB1-.LFB4920
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L266-.LFB4920
	.uleb128 0
	.uleb128 .LEHB2-.LFB4920
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L265-.LFB4920
	.uleb128 0
	.uleb128 .LEHB3-.LFB4920
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L267-.LFB4920
	.uleb128 0
	.uleb128 .LEHB4-.LFB4920
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L265-.LFB4920
	.uleb128 0
	.uleb128 .LEHB5-.LFB4920
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE4920:
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
.LFB4933:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4933
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$428, %esp
	cmpl	$0, 8(%ebp)
	je	.L348
	cmpl	$0, 12(%ebp)
	jne	.L309
.L348:
	leal	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$579
	pushl	%eax
	leal	.LC72@GOTOFF(%ebx), %eax
	jmp	.L367
.L309:
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	pushl	%esi
	pushl	%esi
	pushl	$1
	pushl	%eax
	call	__addvsi3@PLT
	addl	$16, %esp
	testb	$-3, %al
	je	.L311
	leal	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$580
	pushl	%eax
	leal	.LC73@GOTOFF(%ebx), %eax
.L367:
	pushl	%eax
	call	__assert_fail@PLT
.L311:
	movl	8(%ebp), %eax
	movw	2(%eax), %dx
	testw	%dx, %dx
	je	.L312
	movw	4(%eax), %ax
	movw	%ax, -412(%ebp)
	decl	%eax
	cmpw	$5, %ax
	seta	%cl
	cmpw	$6, %dx
	seta	%al
	orb	%al, %cl
	je	.L313
.L312:
	leal	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$582
	pushl	%eax
	leal	.LC74@GOTOFF(%ebx), %eax
	jmp	.L367
.L313:
	subl	$12, %esp
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	pushl	$1
.LEHB6:
	call	_ZN12_GLOBAL__N_111check_rollsERK10game_stateRK10multi_moveb
	addl	$16, %esp
	testb	%al, %al
	movb	%al, -412(%ebp)
	je	.L354
	movl	8(%ebp), %eax
	leal	-338(%ebp), %esi
	leal	-390(%ebp), %edi
	movw	2(%eax), %ax
	movw	%ax, -428(%ebp)
	movl	8(%ebp), %eax
	movw	4(%eax), %ax
	movw	%ax, -420(%ebp)
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	8(%ebp)
	call	_Z11to_internalPK10game_statePS_@PLT
	leal	-392(%ebp), %eax
	addl	$12, %esp
	pushl	%eax
	movl	8(%ebp), %eax
	movsbl	(%eax), %eax
	pushl	%eax
	pushl	12(%ebp)
	call	_Z11to_internalPK10multi_moveaPS_@PLT
	popl	%edx
	leal	-396(%ebp), %eax
	popl	%ecx
	pushl	%esi
	pushl	%eax
	call	_Z12valid_mmovesRK10game_state@PLT
.LEHE6:
	movl	$0, -416(%ebp)
	addl	$12, %esp
.L315:
	movzbl	-392(%ebp), %eax
	cmpl	%eax, -416(%ebp)
	movb	%al, -417(%ebp)
	movl	%eax, -424(%ebp)
	jnb	.L370
	pushl	%eax
	pushl	$1
	pushl	%edi
	pushl	%esi
.LEHB7:
	.cfi_escape 0x2e,0x10
	call	_Z10check_movePK10game_statePK9game_moveb@PLT
	addl	$16, %esp
	testb	%al, %al
	je	.L345
	pushl	%ecx
	pushl	$1
	pushl	%edi
	pushl	%esi
	call	_Z10apply_moveP10game_statePK9game_moveb@PLT
	addl	$16, %esp
	incl	-416(%ebp)
	addl	$4, %edi
	jmp	.L315
.L370:
	movl	-420(%ebp), %edi
	cmpw	%di, -428(%ebp)
	movl	12(%ebp), %eax
	sete	-416(%ebp)
	cmpb	$1, -416(%ebp)
	movzbl	(%eax), %edx
	sbbl	%eax, %eax
	andl	$-2, %eax
	movl	%edx, %ecx
	addl	$4, %eax
	cmpl	%eax, %edx
	je	.L319
	movl	-396(%ebp), %eax
	movl	%eax, %esi
.L320:
	testl	%esi, %esi
	je	.L321
	cmpb	%cl, 4(%esi)
	ja	.L322
	movl	(%esi), %esi
	jmp	.L320
.L321:
	testb	%cl, %cl
	movl	-336(%ebp), %esi
	movw	-334(%ebp), %dx
	setne	%cl
	cmpb	%cl, -416(%ebp)
	jnb	.L319
	cmpw	%si, %dx
	jnb	.L327
	movl	%esi, %edx
.L327:
	movl	12(%ebp), %edi
	cmpw	%dx, 4(%edi)
	jne	.L329
.L319:
	movl	-424(%ebp), %edi
	movl	-396(%ebp), %eax
	sall	$2, %edi
	movl	%edi, -416(%ebp)
.L335:
	testl	%eax, %eax
	je	.L349
	movb	-417(%ebp), %dl
	cmpb	%dl, 4(%eax)
	je	.L371
.L337:
	movl	(%eax), %eax
	jmp	.L335
.L371:
	movl	-416(%ebp), %edi
	leal	-392(%ebp), %ecx
	movl	%eax, %edx
	addl	%eax, %edi
	movl	%edi, -424(%ebp)
.L338:
	cmpl	-424(%ebp), %edx
	je	.L372
	movw	2(%ecx), %si
	cmpw	%si, 6(%edx)
	movl	%edx, %edi
	movl	%ecx, -428(%ebp)
	jne	.L337
	movl	-428(%ebp), %esi
	addl	$4, %edx
	addl	$4, %ecx
	movw	4(%esi), %si
	cmpw	%si, 8(%edi)
	je	.L338
	jmp	.L337
.L372:
	testl	%eax, %eax
	jne	.L340
.L349:
	leal	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$689
	pushl	%eax
	leal	.LC79@GOTOFF(%ebx), %eax
	jmp	.L367
.L340:
	leal	-338(%ebp), %eax
	pushl	%ecx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	%eax
	call	_Z13from_internalPK10game_statePS_@PLT
	addl	$16, %esp
	jmp	.L316
.L373:
	pushl	%ecx
	pushl	%eax
	leal	.LC76@GOTOFF(%ebx), %eax
.L369:
	pushl	%eax
	pushl	$1
	call	_ZN12_GLOBAL__N_14hintEbPKcz
.LEHE7:
	addl	$16, %esp
.L345:
	movb	$0, -412(%ebp)
.L316:
	leal	-396(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	addl	$16, %esp
	jmp	.L354
.L347:
	movl	%eax, %esi
.L341:
	leal	-396(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	_ZNSt14_Fwd_list_baseI10multi_moveSaIS0_EED2Ev@PLT
	movl	%esi, (%esp)
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L322:
	movl	8(%ebp), %eax
	leal	-356(%ebp), %edi
	addl	$4, %esi
	movl	$18, %ecx
	rep movsb
	leal	-374(%ebp), %esi
	pushl	%edx
	pushl	%esi
	movsbl	(%eax), %eax
	pushl	%eax
	leal	-356(%ebp), %eax
	pushl	%eax
.LEHB9:
	call	_Z13from_internalPK10multi_moveaPS_@PLT
	leal	.LC75@GOTOFF(%ebx), %eax
	addl	$16, %esp
	xorl	%edx, %edx
	xorl	%edi, %edi
	movl	%eax, -412(%ebp)
.L324:
	movzbl	-374(%ebp), %eax
	addl	$4, %esi
	cmpl	%eax, %edx
	leal	-280(%ebp), %eax
	jnb	.L373
	movzwl	(%esi), %ecx
	subl	$12, %esp
	addl	%edi, %eax
	movl	%edx, -416(%ebp)
	pushl	%ecx
	movzwl	-2(%esi), %ecx
	pushl	%ecx
	movl	$256, %ecx
	pushl	-412(%ebp)
	subl	%edi, %ecx
	pushl	%ecx
	pushl	%eax
	call	snprintf@PLT
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	%edi
	call	__addvsi3@PLT
	movl	-416(%ebp), %edx
	movl	%eax, %edi
	addl	$48, %esp
	incl	%edx
	jmp	.L324
.L330:
	cmpw	%dx, 8(%eax)
	je	.L331
	movl	(%eax), %eax
.L329:
	testl	%eax, %eax
	je	.L319
	cmpb	$1, 4(%eax)
	je	.L330
	leal	_ZZZ16apply_multi_moveP10game_statePK10multi_moveENKUlRS2_E0_clES4_E19__PRETTY_FUNCTION__@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	$652
	pushl	%eax
	leal	.LC77@GOTOFF(%ebx), %eax
	jmp	.L367
.L331:
	leal	4(%eax), %esi
	leal	-356(%ebp), %edi
	movl	$18, %ecx
	rep movsb
	pushl	%eax
	movl	8(%ebp), %eax
	leal	-374(%ebp), %esi
	pushl	%esi
	movsbl	(%eax), %eax
	pushl	%eax
	leal	-356(%ebp), %eax
	pushl	%eax
	call	_Z13from_internalPK10multi_moveaPS_@PLT
.LEHE9:
	leal	.LC75@GOTOFF(%ebx), %eax
	addl	$16, %esp
	xorl	%edx, %edx
	xorl	%edi, %edi
	movl	%eax, -412(%ebp)
.L333:
	movzbl	-374(%ebp), %eax
	addl	$4, %esi
	cmpl	%eax, %edx
	leal	-280(%ebp), %eax
	jnb	.L374
	movzwl	(%esi), %ecx
	subl	$12, %esp
	addl	%edi, %eax
	movl	%edx, -416(%ebp)
	pushl	%ecx
	movzwl	-2(%esi), %ecx
	pushl	%ecx
	movl	$256, %ecx
	pushl	-412(%ebp)
	subl	%edi, %ecx
	pushl	%ecx
	pushl	%eax
	call	snprintf@PLT
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	%edi
	call	__addvsi3@PLT
	movl	-416(%ebp), %edx
	movl	%eax, %edi
	addl	$48, %esp
	incl	%edx
	jmp	.L333
.L374:
	pushl	%esi
	pushl	%eax
	leal	.LC78@GOTOFF(%ebx), %eax
	jmp	.L369
.L354:
	movb	-412(%ebp), %al
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4933:
	.section	.gcc_except_table
.LLSDA4933:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4933-.LLSDACSB4933
.LLSDACSB4933:
	.uleb128 .LEHB6-.LFB4933
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB4933
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L347-.LFB4933
	.uleb128 0
	.uleb128 .LEHB8-.LFB4933
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB4933
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L347-.LFB4933
	.uleb128 0
.LLSDACSE4933:
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
	.align 4
	.type	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__, @object
	.size	_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__, 54
_ZZ16apply_multi_moveP10game_statePK10multi_moveE19__PRETTY_FUNCTION__:
	.string	"bool apply_multi_move(game_state*, const multi_move*)"
	.align 4
	.type	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__, @object
	.size	_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__, 62
_ZZ12valid_mmovesRK10game_stateE19__PRETTY_FUNCTION__:
	.string	"std::forward_list<multi_move> valid_mmoves(const game_state&)"
	.align 4
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
	.align 4
	.type	_ZZ10check_movePK10game_statePK9game_movebE19__PRETTY_FUNCTION__, @object
	.size	_ZZ10check_movePK10game_statePK9game_movebE19__PRETTY_FUNCTION__, 59
_ZZ10check_movePK10game_statePK9game_movebE19__PRETTY_FUNCTION__:
	.string	"bool check_move(const game_state*, const game_move*, bool)"
	.align 4
	.type	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__, @object
	.size	_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__, 30
_ZZ6winnerPK10game_stateE19__PRETTY_FUNCTION__:
	.string	"int winner(const game_state*)"
	.align 4
	.type	_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__, @object
	.size	_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__, 58
_ZZN12_GLOBAL__N_114count_checkersEPK10game_statePiE19__PRETTY_FUNCTION__:
	.string	"void {anonymous}::count_checkers(const game_state*, int*)"
	.align 4
	.type	_ZZ14is_final_statePK10game_stateE19__PRETTY_FUNCTION__, @object
	.size	_ZZ14is_final_statePK10game_stateE19__PRETTY_FUNCTION__, 39
_ZZ14is_final_statePK10game_stateE19__PRETTY_FUNCTION__:
	.string	"bool is_final_state(const game_state*)"
	.align 4
	.type	_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__, @object
	.size	_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__, 62
_ZZ11to_internalPK10multi_moveaPS_E19__PRETTY_FUNCTION__:
	.string	"void to_internal(const multi_move*, signed char, multi_move*)"
	.align 4
	.type	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__, @object
	.size	_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__, 60
_ZZ11to_internalPK9game_moveaPS_E19__PRETTY_FUNCTION__:
	.string	"void to_internal(const game_move*, signed char, game_move*)"
	.align 4
	.type	_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__, @object
	.size	_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__, 49
_ZZ11to_internalPK10game_statePS_E19__PRETTY_FUNCTION__:
	.string	"void to_internal(const game_state*, game_state*)"
	.align 4
	.type	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__, @object
	.size	_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__, 52
_ZZ14set_higher_barPstE19__PRETTY_FUNCTION__:
	.string	"void set_higher_bar(short int*, short unsigned int)"
	.align 4
	.type	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__, @object
	.size	_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__, 51
_ZZ13set_lower_barPstE19__PRETTY_FUNCTION__:
	.string	"void set_lower_bar(short int*, short unsigned int)"
	.align 64
	.type	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__, @object
	.size	_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__, 84
_ZZ11to_internalhsaPhPsE19__PRETTY_FUNCTION__:
	.string	"void to_internal(unsigned char, short int, signed char, unsigned char*, short int*)"
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB5511:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE5511:
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 4
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 4
DW.ref.__gxx_personality_v0:
	.long	__gxx_personality_v0
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
