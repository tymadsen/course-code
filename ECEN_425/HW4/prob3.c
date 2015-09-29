#define max(A,B) ((A) > (B) ? (A) : (B))
#define square(x) (x) * (x)
#include <stdio.h>

int main(){
	printf("max (3, 5): %d\n", max(3,5));
	printf("max (4, 2): %d\n", max(4,2));
	printf("max (5, 5): %d\n", max(5,5));
	int i, j, y;
	for(i = 0, j = 0; i < 5; i++){
		printf("i: %d, j: %d\n", i, j);
		printf("max (i++, j++): %d\n", max(i,j++));
		printf("i: %d, j: %d\n", i, j);
	}
	y = 2;
	printf("square (y+1): %d\n", square(y++));
	// y = 5;
	printf("square (y+1): %d\n", square(y+1));
	return 0;
}