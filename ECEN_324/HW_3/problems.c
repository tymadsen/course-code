#include <stdio.h>


int main(){
	int r = decode2(1,2,5);
	printf("Result: %i\nHex: %x\n", r, r);
}

int decode2(int x, int y, int z)
{
	z = y -= z;
	y = (y << 31) >> 31;
	x *= z;
	return y ^ x;
}
