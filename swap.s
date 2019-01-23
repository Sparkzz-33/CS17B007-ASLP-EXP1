	.file	"swap.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp; stack[top-0] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp; rbp <- rsp;
	.cfi_def_cfa_register 6
	push	r12; r12 -> stack[top-1]; 4195296 -> stack[top-1]
	push	rbx; rbx -> stack[top-2]; 0 -> satck[top-2]
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	DWORD PTR [rbp-20], edi; [rbp-20] <- edi; [rbp-20] <- 1;
	mov	QWORD PTR [rbp-32], rsi; [rbp-32] <- rsi; [rbp-32] <- 140737488346776
	mov	ebx, 10; ebx <- 10
	mov	r12d, 20; r12d <- 20
	add	ebx, r12d; ebx <- r12d + ebx; ebx <- 20 + 10; ebx <- 30 
	mov	eax, ebx; eax <- ebx; eax <- 30;
	sub	eax, r12d; eax <- eax - r12d; eax <- 30 - 20; eax <- 10
	mov	r12d, eax; r12d <- eax; r12d <- 10
	sub	ebx, r12d; ebx <- ebx - r12d; ebx <- 30 - 10; ebx <- 20
	mov	eax, 0; eax <- 0
	pop	rbx; rbx <- stack[top-2]; rbx <- 0;
	pop	r12; r12 <- stack[top-1]; r12 <- 4195296; 10 <- 4195296
	pop	rbp;
	.cfi_def_cfa 7, 8 
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits 
