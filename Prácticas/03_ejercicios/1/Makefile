all:
	nasm -f elf64 -g -o prueba.o prueba.asm
	ld prueba.o -o prueba
	gcc -o prueba -m64 -g prueba.c  prueba.o

	nasm -f elf64 -g -o imp.o imp.asm
	gcc -o imp -m64 -g imp.c imp.o

	nasm -f elf64 -g -o sum.o sum.asm
	gcc -o sum -m64 -g sum.c sum.o

	nasm -f elf64 -g -o neg.o neg.asm
	gcc -o neg -m64 -g neg.c neg.o

mac:
	nasm -f macho64 -g ejercicio.asm -o ejercicio.o
	gcc -c main.c -o main.o
	ld -macosx_version_min 10.10 -lSystem -o ejercicio ejercicio.o main.o

clean:
	rm -f *~ prueba *.o