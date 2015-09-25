#include <stdio.h>

char* test(int a, int b){
	if (a != b)
		if (a < b)
				return ("a is less than b\n");
		else
				return ("a is not less than b\n");
	return "a is equal to b\n";
}

int main(){
	printf("test(1,2): %s", test(1,2));
	printf("test(3,2): %s", test(3,2));
	printf("test(2,2): %s", test(2,2));
	return 0;
}