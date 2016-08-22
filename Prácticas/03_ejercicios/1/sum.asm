global sum

section .data
%define offset_int 4
section .text
	sum:	
	;mov r13, [RSP + 4]
	
	mov r10d, [rsp + 8]
	xor r11, r11
	mov r11d, [rsp + 16]
	push rbp
	mov rbp, rsp

	; a0 viene por rdi
	xor rax, rax
	mov eax, edi ; meto a0 en resultado

	; a1 viene por rsi
	sub eax, esi ; le resto a1

	; a2 viene por rdx
	add eax, edx ; le sumo a2

	; a3 viene por rcx
	sub eax, ecx ; le resto a3

	; a4 viene por r8
	add eax, r8d ; le sumo a4

	; a5 viene por r9
	sub eax, r9d


	
	;a6 viene por pila (el primero que popeo)
	add eax, r10d
	
	;a7 viene por pila
	sub eax, r11d
	
	pop rbp

	ret