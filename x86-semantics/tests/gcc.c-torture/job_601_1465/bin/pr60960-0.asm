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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	%al
	movl	%eax, %ecx
	movzbl	-3(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	-2(%rbp), %eax
	shrb	%al
	movl	%eax, %edi
	movzbl	-1(%rbp), %eax
	shrb	%al
	movl	%eax, %esi
	movl	$0, %eax
	movb	%cl, %al
	movb	%dl, %ah
	movzbl	%dil, %edx
	sall	$16, %edx
	andl	$-16711681, %eax
	orl	%edx, %eax
	movzbl	%sil, %edx
	sall	$24, %edx
	andl	$16777215, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	%al
	movl	%eax, %ecx
	movzbl	-3(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	-2(%rbp), %eax
	shrb	%al
	movl	%eax, %edi
	movzbl	-1(%rbp), %eax
	shrb	%al
	movl	%eax, %esi
	movl	$0, %eax
	movb	%cl, %al
	movb	%dl, %ah
	movzbl	%dil, %edx
	sall	$16, %edx
	andl	$-16711681, %eax
	orl	%edx, %eax
	movzbl	%sil, %edx
	sall	$24, %edx
	andl	$16777215, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movzbl	-4(%rbp), %eax
	movzbl	-8(%rbp), %edx
	movzbl	%al, %eax
	divb	%dl
	movl	%eax, %ecx
	movzbl	-3(%rbp), %eax
	movzbl	-7(%rbp), %edx
	movzbl	%al, %eax
	divb	%dl
	movl	%eax, %edx
	movzbl	-2(%rbp), %eax
	movzbl	-6(%rbp), %esi
	movzbl	%al, %eax
	divb	%sil
	movl	%eax, %edi
	movzbl	-1(%rbp), %eax
	movzbl	-5(%rbp), %esi
	movzbl	%al, %eax
	divb	%sil
	movl	%eax, %esi
	movl	$0, %eax
	movb	%cl, %al
	movb	%dl, %ah
	movzbl	%dil, %edx
	sall	$16, %edx
	andl	$-16711681, %eax
	orl	%edx, %eax
	movzbl	%sil, %edx
	sall	$24, %edx
	andl	$16777215, %eax
	orl	%edx, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$84215045, -4(%rbp)
	movl	$33686018, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	f1
	movl	%eax, -12(%rbp)
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L36
	call	abort
L36:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	f2
	movl	%eax, -12(%rbp)
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L37
	call	abort
L37:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	f3
	movl	%eax, -12(%rbp)
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L38
	call	abort
L38:
	movl	$0, %eax
	leave
	ret