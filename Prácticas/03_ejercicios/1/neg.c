#include "stdio.h"

extern short negar(short a);

int main() {
	short res = negar(5);
	printf("Neg da: %d\n", res);

	return 0;


}