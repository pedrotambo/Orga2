#include <stdio.h>

extern int sum(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7);

int main(){
	int s = sum(1,2,3,4,5,6,7,8);
	printf("%d\n", s);
}