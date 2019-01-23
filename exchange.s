	.file	"exchange.c"
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
	sub	rsp, 96; rsp <- rsp - 96;
	mov	DWORD PTR -84[rbp], edi; -84[rbp] <- edi; -84[rbp] <- 1;
	mov	QWORD PTR -96[rbp], rsi; -96[rbp] <- rsi;
	mov	rax, QWORD PTR fs:40; rax <- fs:40;
	mov	QWORD PTR -8[rbp], rax; -8[rbp] <- rax;
	xor	eax, eax; eax <- eax ^ eax; eax <- 0;
	mov	DWORD PTR -64[rbp], 1; -64[rbp] <- 1;
	mov	DWORD PTR -60[rbp], 2; -60[rbp] <- 2;
	mov	DWORD PTR -56[rbp], 3; -56[rbp] <- 3;
	mov	DWORD PTR -52[rbp], 4; -52[rbp] <- 4;
	mov	DWORD PTR -48[rbp], 5; -48[rbp] <- 5;
	mov	DWORD PTR -32[rbp], 5; -32[rbp] <- 5;
	mov	DWORD PTR -28[rbp], 6; -28[rbp] <- 6;
	mov	DWORD PTR -24[rbp], 7; -24[rbp] <- 7;
	mov	DWORD PTR -20[rbp], 8; -20[rbp] <- 8;
	mov	DWORD PTR -16[rbp], 9; -16[rbp] <- 9;
	mov	DWORD PTR -72[rbp], 0; -72[rbp] <- 0;
	jmp	.L2; Jump to .L2;(loop starts);
.L3:
	mov	eax, DWORD PTR -72[rbp]; eax <- -72[rbp];eax <- 0;
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]; eax <- -64[rbp + rax*4];eax <- 1;
	mov	DWORD PTR -68[rbp], eax; -68[rbp] <- eax; -68[rbp] <- 1;
	mov	eax, DWORD PTR -72[rbp]; eax <- -72[rbp];eax <- 0;
	cdqe
	mov	edx, DWORD PTR -32[rbp+rax*4]; edx <- -32[rbp+rax*32];edx <- 5;
	mov	eax, DWORD PTR -72[rbp]; eax <- -72[rbp]; eax <- 0;
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], edx; -64[rbp+rax*4] <- edx; -64[rbp+rax*4] <- 5;
	mov	eax, DWORD PTR -72[rbp]; eax <- -72[rbp]; eax <- 0;
	cdqe
	mov	edx, DWORD PTR -68[rbp]; edx <- -68[rbp]; edx <- 1;
	mov	DWORD PTR -32[rbp+rax*4], edx; -32[rbp+rax*4] <- edx; -32[rbp+rax*4] <- 1;
	add	DWORD PTR -72[rbp], 1; -72[rbp] <- -72[rbp] + 1;
.L2:
	cmp	DWORD PTR -72[rbp], 4; -72[rbp] <- 4;
	jle	.L3; if condition satisfies, jump to .L3(loop starts again);
	mov	eax, 0; eax <- 0;
	mov	rcx, QWORD PTR -8[rbp]; rcx <- -8[rbp];
	xor	rcx, QWORD PTR fs:40; rcx <- fs:40 ^ rcx; rcx <- 0;
	je	.L5; jump to .L5;
	call	__stack_chk_fail@PLT
.L5:
	leave ; exit statement;
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
