	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"string 1"
.LC1:
	.string	"string 2"
	.text
	.globl	print_message
	.type	print_message, @function
print_message:
.LFB34:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	print_message, .-print_message
	.section	.rodata.str1.1
.LC2:
	.string	"Say your name: "
.LC3:
	.string	"%s, Says Hello to you!\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB35:
	.cfi_startproc
	endbr64
	subq	$1048, %rsp
	.cfi_def_cfa_offset 1056
	movq	%fs:40, %rax
	movq	%rax, 1032(%rsp)
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	%rsp, %rdi
	movq	stdin(%rip), %rdx
	movl	$1023, %esi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L4
	movq	%rsp, %rdx
	movq	$-1, %rcx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	notq	%rcx
	movb	$0, -2(%rsp,%rcx)
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	call	print_message
.L4:
	movq	1032(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L7
	movl	$0, %eax
	addq	$1048, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE35:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
