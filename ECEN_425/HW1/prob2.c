#include <stdio.h>

int main(){

	int x = 10;
	int y = 3;
	float result;

	result = x / y;
	printf("result: %.2f", result);
	return 0;
}

/*
It appears that the result should be 3.333 but after 
closer examination or running the code it ends up being 
3.00 because the division if two integers results in an 
integer value. Thus the float is assigned the value 3, 
and not 3.333.
*/