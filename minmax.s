	.file	"minmax.c"
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
	sub	rsp, 80; rsp <- rsp - 80; 
	mov	DWORD PTR -68[rbp], edi; -68[rbp] <- edi; -68[rbp] <- 1;
	mov	QWORD PTR -80[rbp], rsi; -80[rbp] <- rsi;
	mov	rax, QWORD PTR fs:40; rax <- fs:40;
	mov	QWORD PTR -8[rbp], rax; -8[rbp] <- rax; 
	xor	eax, eax; eax <- eax ^ eax; eax <- 0;
	mov	DWORD PTR -48[rbp], 1; -48[rbp] <- 1;
	mov	DWORD PTR -44[rbp], 2; -44[rbp] <- 2;
	mov	DWORD PTR -40[rbp], 3; -40[rbp] <- 3;
	mov	DWORD PTR -36[rbp], 4; -36[rbp] <- 4;
	mov	DWORD PTR -32[rbp], 5; -32[rbp] <- 5;
	mov	DWORD PTR -28[rbp], 6; -28[rbp] <- 6
	mov	DWORD PTR -24[rbp], 7; -24[rbp] <- 7;
	mov	eax, DWORD PTR -48[rbp]; eax <- -48[rbp]; eax <- 1;
	mov	DWORD PTR -60[rbp], eax; -60[rbp] <- eax;
	mov	eax, DWORD PTR -48[rbp]; eax <- -48[rbp]; eax <- 1; 
	mov	DWORD PTR -56[rbp], eax; -56[rbp] <- eax; -56[rbp] <- 1;
	mov	DWORD PTR -52[rbp], 0; -52[rbp] <- 0;
	jmp	.L2. Jump to .L2 (loop starts);
.L5:
	mov	eax, DWORD PTR -52[rbp]; eax <- -52[rbp];
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]; eax <- -48[rbp+rax*4]; eax <- 0;
	cmp	DWORD PTR -60[rbp], eax; compares value at -60[rbp] and eax; return 0 if both are equal;
	jle	.L3; if condition is satisfied, jump to .L3
	mov	eax, DWORD PTR -52[rbp]; eax <- -52[rbp];
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	mov	DWORD PTR -60[rbp], eax
.L3:
	mov	eax, DWORD PTR -52[rbp]; eax <- -52[rbp]; eax <- 0;
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]; eax <- -48[rbp+rax*4];
	cmp	DWORD PTR -56[rbp], eax; -56[rbp] <- eax;
	jge	.L4; if condition is satisfied, jump to .L4;
	mov	eax, DWORD PTR -52[rbp]; eax <- -52[rbp]; eax <- 1;
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]; eax <- -48[rbp + rax*4]; eax <- 2;
	mov	DWORD PTR -56[rbp], eax; -56[rbp] <- eax; -56[rbp] <- 2; shift to .L4
.L4:
	add	DWORD PTR -52[rbp], 1; -52[rbp] <- -52[rbp] + 1; shift to .L2n

.L2:
	cmp	DWORD PTR -52[rbp], 6; compares value at -52[rbp] and 6; return 0 if both are equal;
	jle	.L5; if condition satisfies, jump to .L5(loop starts);
	mov	eax, 0; eax <- 0;
	mov	rdx, QWORD PTR -8[rbp]; rdx <- -8[rbp];
	xor	rdx, QWORD PTR fs:40; rdx <- rdx ^ fs:40; rdx <- 0;
	je	.L7; shift to .L7;
	call	__stack_chk_fail@PLT
.L7:
	leave; exit statement;
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
