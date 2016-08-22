#include <stdio.h>

extern short suma(short * vector, short n);

int main(){
	short v[5];
	v[0] = 1;
	v[1] = 2;
	v[2] = 3;
	v[3] = 4; 
	v[4] = 10;
	//short *p_v = v;
	short *p_v = &v[0];
	short s = suma(p_v, 5);
	printf("%d\n", s);


	return 0;

}

