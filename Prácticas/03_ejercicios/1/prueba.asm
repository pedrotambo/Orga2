global suma

;%define tam_short 2
section .data
	v1: dq 1.1

section .text
	suma:
	push rbp
	mov rbp, rsp
	push rdx

	;movaps xmm0, [v1]
    ;xor rax, rax
	mov rax, 0xFFFFFFFF00010000 ;Ensucio
	mov eax, 0 ; Limpio




	;mov edx, edi
	;add edx, esi
	;mov eax, edx

	mov dx, di
	add dx, si
	;addpd rdx, rsi para sumar doubles
	mov ax, dx


	pop rdx
	pop rbp
	ret
