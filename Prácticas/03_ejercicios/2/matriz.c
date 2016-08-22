#include <stdio.h>

extern void diagonal(short* matriz, short n, short* vector);

int main(){
	short m[5][5];
	int i = 0;
	short acum = 2;
	while (i < 5){
		int j = 0;
		while (j < 5){
			m[i][j] = acum;
			j++;
			acum = acum + 2;	
		}
		i++;
	}

	printf("Una matriz:\n");
    int k, l;
    for (k = 0; k < 5; k++) {
        for (l = 0; l < 5; l++) {
            printf("%d ", m[k][l]);
        }
        printf("\n");
    }

	short* p_m = &m[0][0];
	short v[5];
	short* p_v = &v[0];
	diagonal(p_m, 5, p_v);

	printf("Su diagonal:\n");
    for (i = 0; i < 5; i++) {
        printf("%d ", v[i]);
    }
    printf("\n");

}