#include <stdio.h>

struct alumno{
	char* nombre;
	int dni;
	int edad;
	char inicial;

}; //__attribute__((packer));
/*	
USO en C:
struct alumno alu;
alu.nombre = "carlos";
alu.dni = alu.dni + 10;
alu.inicial = 'P';

en ASM:
%define offset_nombre 0
%define offset_dni 8
%define offset_edad 12
%define offset_inicial 16

mov rsi, ptr_struct
mov rbx, [rsi+offset_nombre]
mov eax, [rsi+offset_dni]
mov edx, [rsi+offset_edad]
mov cl, [rsi+offset_inicial]
*/


int main(){

}