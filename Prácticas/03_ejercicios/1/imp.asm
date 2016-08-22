global imp

extern printf

section .data
	msg: db "Int: %d - String: %s - Double: %f .", 0x0a, 0
section .text
	imp:
		; rdi -- int a - 4 bytes
		; rsi -- *char s - 8 bytes
		; xmm0 -- double f - 8 bytes (xmm0 de 16 bytes)

		; Por convención viene la pila alineada a 8 bytes

		push rbp ; Quedás alineado a 16 bytes
		mov rbp, rsp
		push r12
		push r13
		push r14
		push r15
		; Haciendo una cantidad impar de push y pop quedas alineado a 16 bytes
		;mov r12, rdi
		mov rdx, rsi
		mov rsi, rdi
		mov rdi, msg

		call printf

		pop r15
		pop r14
		pop r13
		pop r12
		pop rbp

		ret

