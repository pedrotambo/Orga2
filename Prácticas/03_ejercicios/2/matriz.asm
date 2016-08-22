global diagonal

%define tam_short 2
section .data

section .text
	diagonal:
	; RDI puntero a la matriz
	; SI n
	; RDX puntero al vector donde devolverlo
	; asumimos que n > 0 y la matriz tiene al menos un elemento
	push rbp
	mov rbp, rsp
	push r12

	xor r12, r12
	xor rcx, rcx
	xor r8, r8

	mov cx, si ; contador para el ciclo
	xor rsi, rsi
	mov si, cx ; hago eso para limpiar la parte alta de rsi
	;tambien se puede limpiar así:
		;    shl rsi, 48
    	;	 shr rsi, 48

	lea r8, [rsi*tam_short + tam_short] ;incremento fijo para acceder a la diagonal r8 = n*2 + 2

	.ciclo:
		mov ax, [rdi]	;uso ax como auxiliar para pasar el dato
		mov [rdx], ax

		add rdx, tam_short ; avanzo el puntero al siguiente elemento del vector a devolver
		add rdi, r8 ; paso al siguiente elementeo de la diagonal

		loop .ciclo

		;otra manera de lupear 
		; mov cx, 0 antes de entrar al ciclo
		; adentro:
		;		inc cx
		;		cmp cx, si
		; 		jne .ciclo

	.fin:
		pop r12
		pop rbp
		ret