#include <stdio.h>

int main(){

	int x = 0;
	int y = 1;
	int z = 2;

	printf("a: %d\n",x + y * z);
    printf("b: %d\n",x == 0 && y != 4);
    printf("c: %d\n",y < x < z);
    printf("d: %d\n",y+-z);
    printf("e: %d\n",!z||y);
    printf("f: %d\n",y ? x : z);
    printf("g: %d\n",x - y < z);
    printf("h: %d x: %d\n",x = 0 || z <= y, x);   //(Give value of expression and final value of x)
    printf("i: %d\n",z & 3 == 2);

	return 0;
}
