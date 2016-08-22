#include "stdio.h"

extern int suma(short a, short b);

int main() {
	int res = suma(5,3);
	printf("La suma da: %d\n", res);

	return 0;


}