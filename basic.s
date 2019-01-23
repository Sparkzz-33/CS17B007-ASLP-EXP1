	.file	"basic.c"
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
	push	r12; stack[top-1]<-r12; stack[top-1]<-93824992232800;
	push	rbx; stack[top-2]<-rbx; stack[top-2]<-0;
	sub	rsp, 64; rsp <- rsp - 64;
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	DWORD PTR -68[rbp], edi; -68[rbp] <- edi; -68[rbp] <- 1;
	mov	QWORD PTR -80[rbp], rsi; -80[rbp] <- rsi;
	mov	rax, QWORD PTR fs:40; rax <- fs:40; 
	mov	QWORD PTR -24[rbp], rax; -24[rbp]<-rax;
	xor	eax, eax; eax <- [eax] ^ [eax];
	mov	ebx, 5; ebx <- 5;
	mov	r12d, 7; r12d <- 7;
	lea	eax, [rbx+r12]; eax <- [rbx+r12]; eax <- [5 + 7]; eax <- 12;
	mov	DWORD PTR -64[rbp], eax; -64[rbp] <- eax; -64[rbp] <- 12; 
	mov	eax, ebx; eax <- ebx; eax <- 5;
	sub	eax, r12d; eax <- eax <- r12d; eax <- 5 - 7; eax <- -2;
	mov	DWORD PTR -60[rbp], eax; -60[rbp] <- eax; -60[rbp] <- -2; 
	mov	eax, ebx; eax <- ebx; eax <- 5;
	imul	eax, r12d; eax <- eax * r12d;
	mov	DWORD PTR -56[rbp], eax; -56[rbp] <- eax; -56[rbp] <- 5;
	mov	eax, ebx;eax <- ebx; eax <- 5;
	cdq		
	idiv	r12d    integer division;
	mov	DWORD PTR -52[rbp], eax; -52[rbp] <- eax; -52[rbp] <- 5;
	mov	eax, ebx; eax <- ebx; eax <- 5;
	and	eax, r12d; eax <- eax && r12d; eax <- 5 && 7;
	mov	DWORD PTR -48[rbp], eax; -48[rbp] <- eax; -48[rbp] <- 5;
	mov	eax, ebx; eax <- ebx; eax <- 5;
	or	eax, r12d; eax <- eax || r12d; eax <- 5 || 7; eax <- 7;
	mov	DWORD PTR -44[rbp], eax; -44[rbp] <- eax;
	mov	eax, ebx; eax <- ebx; eax <- 5;
	xor	eax, r12d; eax <- eax ^ r12d; eax <- 5 ^ 7; eax <- 2;
	mov	DWORD PTR -40[rbp], eax; -40[rbp] <- eax; -40[rbp] <- 2;
	mov	eax, ebx; eax <- ebx; eax <- 5;
	cdq		
	idiv	r12d	; integer division
	mov	eax, edx; eax <- edx; eax <- 5;
	mov	DWORD PTR -36[rbp], eax; -36[rbp] <- eax; -36[rbp] <- 5;
	test	ebx, ebx	
	sete	al		
	movzx	eax, al		; eax <- al;
	mov	DWORD PTR -32[rbp], eax; -32[rbp] <- eax; -32[rbp] <- 5;
	mov	eax, 0; eax <- 0;
	mov	rcx, QWORD PTR -24[rbp]; rcx <- -24[rbp];
	xor	rcx, QWORD PTR fs:40; rcx <- fs:40;
	je	.L3	; conditional jump to .L3
	call	__stack_chk_fail@PLT		dont know
.L3:
	add	rsp, 64; rsp <- rsp + 64;
	pop	rbx; rbx <- stack[top-2] ; rbx <- 0;
	pop	r12; r12 <- stack[top-1] ; r12 <- -93824992232800;
	pop	rbp; rbp <- stack[top-0] ;
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
