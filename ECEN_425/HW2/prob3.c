//Problem 3a)
#include <stdio.h>

int subtract(int a, int b){
	return a-b;
}

int _3a(){
	// int a = 100;
	// int b = 27;
	// char *str = "Hello";
	// printf("subtract(%d,%d): %d", a, b, subtract(a,b));
	// printf("subtract(%d,%s): %d", a, str, subtract(a,str));
	// printf("subtract(%d,%d,%s): %d", a, b, str, subtract(a,b, str));
	return 0;
}

/*
Using GCC on RHEL 6.7 (Santiago) x86_64 GNOME 2.28.2
prob3.c: In function ‘main’:
prob3.c:12: warning: passing argument 2 of ‘subtract’ makes integer from pointer without a cast
prob3.c:3: note: expected ‘int’ but argument is of type ‘char *’
prob3.c:13: error: too many arguments to function ‘subtract’
*/

//Problem 3b
int _3b(){
	int i;
	scanf("%d", i);
	/* The '&' was "accidentally" left out before the i */
	// Causes: Segmentation fault (core dumped) at runtime (No compiler issues)
	
	int arr [4] = {1,2,3,4};
	printf("arr: [%d, %d, %d, %d, %d]", arr[0], arr[1], arr[2], arr[3]);
	/* printf expects a fifth input after the format string, only 4 are passed */
	// Causes: Segmentation fault (core dumped) at runtime (No compiler issues)

	int x = 64;
	printf("x: %s", x);
	/* the function is expecting a char * as the second parameter, but an integer is passed. */
	// Causes: Segmentation fault (core dumped) at runtime (No compiler issues)
}

int main()
{
	_3a();
	_3b();
	return 0;
}