	.file	"recursion.c"
	.intel_syntax noprefix
	.text
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
.LFB0:
	.cfi_startproc
	push	rbp; stack[top-0] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp; rbp <- rsp;
	.cfi_def_cfa_register 6
	push	rbx; stack[top-1] <- rbx;
	sub	rsp, 24; rsp <- rsp - 24;
	.cfi_offset 3, -24
	mov	DWORD PTR -20[rbp], edi; -20[rbp] <- edi; -20[rbp] <- 10;
	cmp	DWORD PTR -20[rbp], 1; compare -20[rbp] and 1;
	je	.L2; if above command returns expected output, jump to .L2
	cmp	DWORD PTR -20[rbp], 2; Compare -20[rbp] and 2;
	jne	.L3; if abovee command returns expected output, jump to .L3;
.L2:
	mov	eax, 1; eax <- 1;
	jmp	.L4;unconditional jump to .L4 
.L3:
	mov	eax, DWORD PTR -20[rbp]; eax <- -20[rbp]; eax <- 10;
	sub	eax, 1; eax <- eax - 1;
	mov	edi, eax; edi <- eax; edi <- 9;
	call	fibonacci; call and jump to fibonacci function;
	mov	ebx, eax; ebx <- eax; ebx <- 2;
	mov	eax, DWORD PTR -20[rbp]; eax <- 4;
	sub	eax, 2; eax <- eax - 2; eax <- 2;
	mov	edi, eax; edi <- eax; edi <- 2;
	call	fibonacci; call and jump to fibonacci function;
	add	eax, ebx; eax <- eax + ebx; eax <- 3;
.L4:
	add	rsp, 24; rsp <- 24;
	pop	rbx; rbx <- stack[top-1];
	pop	rbp; rbp <- stack[top-0];
	.cfi_def_cfa 7, 8
	ret; return to .L3
	.cfi_endproc
.LFE0:
	.size	fibonacci, .-fibonacci
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp; stack[top-0] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp; rbp <- rsp;
	.cfi_def_cfa_register 6
	sub	rsp, 16; rsp <- rsp -16;
	mov	DWORD PTR -8[rbp], 10; -8[rbp] <- 10;
	mov	eax, DWORD PTR -8[rbp]; eax <- -8[rbp];
	mov	edi, eax; edi <- eax;
	call	fibonacci; call and jump to fibonacci function;
	mov	DWORD PTR -4[rbp], eax; -4[rbp] <- eax;
	mov	eax, 0; eax <- 0;
	leave ; exit statement
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
