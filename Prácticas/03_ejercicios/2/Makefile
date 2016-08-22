all:

	nasm -f elf64 -g -o diagonal.o diagonal.asm
	gcc -o diagonal -m64 -g diagonal.c diagonal.o

	nasm -f elf64 -g -o vector.o vector.asm
	gcc -o vector -m64 -g vector.c vector.o

	nasm -f elf64 -g -o matriz.o matriz.asm
	gcc -o matriz -m64 -g matriz.c matriz.o