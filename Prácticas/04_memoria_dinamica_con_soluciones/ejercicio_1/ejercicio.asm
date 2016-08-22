%define NULL 0
; Completar!
%define offset_comision 0
; Completar!
%define offset_nombre 8
; Completar!
%define offset_edad 16

; En mac, las funciones llevan un _ adelante
; En caso de mac, _printf
extern printf

; En caso de mac, global _mostrarAlumno
global mostrarAlumno

section .data
	texto: db "Nombre: %s, comision: %d, edad: %d", 0x0a, 0x00

section .text

; En caso de mac, _mostrarAlumno
; Me llega por RDI el PUNTERO a la estructura
mostrarAlumno:
	push rbp
	mov rbp, rsp
	; Pila alineada
	; Recordar pushear RBX, R12, R13, R14 y R15 si se utilizan

	xor rdx, rdx

	mov rsi, [rdi+offset_nombre] ; Pongo en rsi el puntero al nombre (string 8 bytes)
	mov dx, [rdi+offset_comision]
	mov ecx, [rdi+offset_edad]
	mov rdi, texto

	call printf



	; Desencolo
	pop rbp
	ret
