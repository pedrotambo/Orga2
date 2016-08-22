section .data
   msg:  DB 'en 10 me voy ... 9', 10, "c"
   msg2: DB 'Puto', 10, 0
   largo EQU $ - msg
   largo2 EQU $ - msg2
global _start
section .text
   _start:
   mov esi, 10
   ciclo:

   	xor rcx, rcx
   	mov rax, 4 ; funcion 4
   	mov rbx, 1 ; stdout
   	mov ecx, msg+17 ; mensaje
   	mov rdx, 2; largo ; longitud
   	int 0x80
   	;inc byte [msg+largo-2]
   	;dec byte [msg+largo-2]
   	dec byte [msg+19-2]
   	;mov byte [msg+largo-2], 2
   	;dec esi
   	dec esi
   	cmp esi, 0
   jnz ciclo

   ;mov rax, 4 ; funcion 4
   ;mov rbx, 1 ; stdout
   mov rcx, msg2
   mov rdx, largo2
   int 0x80

   mov rax, 1
   mov rbx, 0
   int 0x80
