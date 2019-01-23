	.file	"pointers.c"
	.intel_syntax noprefix
	.text
	.globl	swap
	.type	swap, @function
swap:
.LFB0:
	.cfi_startproc
	push	rbp; stack[top-0] <- rbp;
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi; -24[rbp] <- rdi;
	mov	QWORD PTR -32[rbp], rsi; -32[rbp] <- rsi;
	mov	rax, QWORD PTR -24[rbp]; rax <- -24[rbp];
	mov	eax, DWORD PTR [rax]; eax <- [rax]; eax <- 15;
	mov	DWORD PTR -4[rbp], eax; -4[rbp] <- eax; -4[rbp] <- 15;
	mov	rax, QWORD PTR -32[rbp]; rax <- -32[rbp]; 
	mov	edx, DWORD PTR [rax]; edx <- 10;
	mov	rax, QWORD PTR -24[rbp]; rax <- -24[rbp]; 
	mov	DWORD PTR [rax], edx; [rax] <- edx; [rax] <- 10;
	mov	rax, QWORD PTR -32[rbp]; rax <- -32[rbp];
	mov	edx, DWORD PTR -4[rbp]; edx <- -4[rbp]; edx <- 15;
	mov	DWORD PTR [rax], edx; [rax] <- edx;[rax] <- 15;
	nop
	pop	rbp; rbp <- stack[top-0];
	.cfi_def_cfa 7, 8
	ret ; return to main function;
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32; rsp <- rsp - 32;
	mov	DWORD PTR -20[rbp], edi; -20[rbp] <- edi;
	mov	QWORD PTR -32[rbp], rsi; -32[rbp] <- rsi;
	mov	rax, QWORD PTR fs:40; rax <- fs:40;
	mov	QWORD PTR -8[rbp], rax; -8[rbp] <- rax;
	xor	eax, eax; eax <- eax ^ eax; eax <- 0;
	mov	DWORD PTR -16[rbp], 15; -16[rbp] <- 15;
	mov	DWORD PTR -12[rbp], 10; -12[rbp] <- 10;
	lea	rdx, -12[rbp]; rdx <- -12[rbp];
	lea	rax, -16[rbp]; rax<--16[rbp];
	mov	rsi, rdx; rsi <- rdx;
	mov	rdi, rax; rdi <- rax;
	call	swap; Go to function swap;
	mov	eax, 0; eax <- 0;
	mov	rcx, QWORD PTR -8[rbp]; rcx <- -8[rbp];
	xor	rcx, QWORD PTR fs:40; rcx <- rcx ^ fs:40; rcx <- 0;
	je	.L4;jump to .L4
	call	__stack_chk_fail@PLT
.L4:
	leave // exit statement
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
