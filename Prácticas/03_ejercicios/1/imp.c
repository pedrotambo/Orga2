#include <stdio.h>

extern void imp(int i, char * s, double d);

int main(){
	char* s = "Hola";
	imp(10, s, 5.33);
	return 0;

}