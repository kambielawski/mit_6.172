	.text
	.file	"func.c"
	.globl	setEqualToThree         # -- Begin function setEqualToThree
	.p2align	4, 0x90
	.type	setEqualToThree,@function
setEqualToThree:                        # @setEqualToThree
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, (%rax) # return value of functions are stored in rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	setEqualToThree, .Lfunc_end0-setEqualToThree
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rdi # %rdi, %rsi, %rdx, %rcx, %r8, are used for the first 6 integer or pointer parameters of a function call
                        # more params or params larger than 64 bits are pushed to the top of the stack with the 1st arg at the top
	callq	setEqualToThree
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setEqualToThree
