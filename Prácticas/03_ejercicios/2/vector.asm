global suma

section .data

section .text
	suma:
	; RDI: puntero al vector
	; SI: n

	push rbp
	mov rbp, rsp
	push r12

	xor r12, r12
	xor rcx, rcx

	mov cx, si

	.ciclo:
		add r12w, [rdi]
		lea rdi, [rdi+2]
		loop .ciclo ; decrementa ecx y se fija si no es 0, vuelve a loopear

	mov rax, r12

	.fin:
		pop r12
		pop rbp
		ret
