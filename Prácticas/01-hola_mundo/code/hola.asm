extern printf

section .data
   msg:  DB 'Hola Pedro', 10, 0
   largo EQU $ - msg
   mensaje: DB "Hola nene", 10, 0

global _start
section .text
   _start:
   mov rax, 4 ; sys write
   mov rbx, 1 ; donde? 1 = stdout
   mov rcx, msg ; direccion de memoria del mensaje
   mov rdx, largo
   int 0x80

   mov rax, 1
   mov rbx, 0
   int 0x80
