strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
code:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$-1, -4(%rbp)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, %edi
	call	foo
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	l.2261(,%rax,8), %rax
	jmp	L11
L12:
	movl	$0, %edi
	call	foo
	addq	$4, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	l.2261(,%rax,8), %rax
	nop
L11:
	jmp	*%rax
L13:
	nop
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$code, %edi
	call	bar
	movl	$0, %eax
	popq	%rbp
	ret
l.2261:
	.quad	L12
	.quad	L13
