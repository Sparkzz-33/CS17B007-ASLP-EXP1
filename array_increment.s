	.file	"array_increment.c"
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
	sub	rsp, 64; rsp <- rsp - 64;
	mov	DWORD PTR -52[rbp], edi; -52[rbp] <- edi; -52[rbp] <- 1;
	mov	QWORD PTR -64[rbp], rsi; -64[rbp] <- rsi; -64[rbp] <- 140737488347096
	mov	rax, QWORD PTR fs:40; rax <- fs:40;
	mov	QWORD PTR -8[rbp], rax; -8[rbp] <- rax;
	xor	eax, eax; eax <- eax ^ eax; eax <- 0;
	mov	DWORD PTR -32[rbp], 2; -32[rbp] <- 2;
	mov	DWORD PTR -28[rbp], 3; -28[rbp] <- 3;
	mov	DWORD PTR -24[rbp], 4; -24[rbp] <- 4;
	mov	DWORD PTR -20[rbp], 6; -20[rbp] <- 6;
	mov	DWORD PTR -16[rbp], 1; -16[rbp] <- 1;
	mov	DWORD PTR -36[rbp], 0; -36[rbp] <- 0;
	jmp	.L2; jump to .L2;
.L3:
	mov	eax, DWORD PTR -36[rbp]; eax <- -36[rbp];
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]; eax <- -32[rbp + rax*4]; eax <- 2;
	lea	edx, 2[rax]; edx <- 2[rax]; edx <- 4;
	mov	eax, DWORD PTR -36[rbp]; eax <- -36[rbp];
	cdqe
	mov	DWORD PTR -32[rbp+rax*4], edx; -32[rbp + rax*4] <- edx;
	add	DWORD PTR -36[rbp], 1; -36[rbp] <- 1;
.L2:
	cmp	DWORD PTR -36[rbp], 4; -36[rbp] <- 4;
	jle	.L3; if condition is true, jump to .L2(loop);
	mov	eax, 0; eax <- 0;
	mov	rcx, QWORD PTR -8[rbp]; rcx <- -8[rbp]; rcx <- 0;
	xor	rcx, QWORD PTR fs:40; rcx <- fs:40;
	je	.L5; go to .L5;
	call	__stack_chk_fail@PLT
.L5:
	leave; exit statement
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
