/*
Ty Madsen
ECEN 324
01-18-2014

Problem 2.72
Problem 2.86
Problem 2.92
Problem 324-1:
Consider the C code below.
     #include <stdio.h>

     main()
     {
	 float f,g;
	 f = 0.0;
	 g = f + 1.0;
	 while (f != g)
	 {
	     f = g;
	     g = f + 1.0;
	 }
	 printf("Does it ever get here?\n");
     }
     
A. Before compiling and running the code (or reading any further), decide what you think will happen when the code runs. Does the loop ever terminate?
B. Compile and run the code. Does it do what you expected?
C. Instrument the code by adding an int variable that is incremented each time through the loop. How many times does the loop execute? Can you explain why? (Hint: Think about powers of 2 and field sizes in the "float" representation.)
D. If variables f and g are of type "double" instead of float, how much longer would it take for the loop to complete, and why? (Feel free to experiment with the code, but you may conclude this is best considered a thought experiment.)
E. Why is the behavior of this code fundamentally different than if variables f and g are of some integer type (char, short, int, long)?
*/

//Problem 2.72

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#define LENGTH 6
typedef unsigned float_bits;

int x;
char y[LENGTH];

int main(){
	// main_2_72();
	// main_2_92();
    main_324_1();
}
/* Copy integer into buffer if space is available */
/* WARNING: the following code is buggy */

void copy_int(int val, void *buf, int maxbytes) 
{
		// printf("maxbytes : %d\nsizeof(val) : %lu\ndiff: %lu\n",maxbytes,sizeof(val), maxbytes-sizeof(val));
		// printf("maxbytes >= sizeof(val) : %x\n",maxbytes >= sizeof(val));
    if (maxbytes >= sizeof(val))
		memcpy(buf, (void *) &val, sizeof(val));
	printf("maxbytes >= sizeof(val) ==> %x\nmaxbytes - sizeof(val) >= 0 ==> %x\n", maxbytes >= sizeof(val), (maxbytes - sizeof(val)) >= 0);
}

int main_2_72(void)
{
    int i,j;
    /* set x to obvious byte pattern */
    x = 0x01234567;
    for (j = 0; j < LENGTH; j++)
    {
	/* reset all of y before test */
	for (i = 0; i < LENGTH; i++)
	    y[i] = 0x00;
	/* do test: call copy_int() */
	copy_int(x, &y[j], LENGTH-j);
	/* output all of y to see what happened */
	printf("iteration %d\ny: ",j);
	for (i = 0; i < LENGTH; i++)
	    printf("%.2x ", (int) y[i]);
	printf("\n\n");
    }
    return 0;
}

/* Convert a unsigned to a float Converts without changing the bit
 * representation. A normal cast from an unsigned to a float results
 * in the bit representation changing. The number 3 as an unsigned
 * doesn't have the same representation as the number 3 as a float.
 */

float u2f(unsigned u) {
    return *((float *) &u);
}

/* Convert a float to an unsigned without changing the bit representation.
 */

unsigned f2u(float f) {
    return *((unsigned *) &f);
}


float_bits float_absval(float_bits f) {
    // Fill in your code here
    unsigned sign = f >> 31;
    unsigned expo = f >> 23 & 0xFF;
    unsigned frac = f & 0x7FFFFF;
    if(expo == 0xFF){
        if(frac){
    		return f;
        }
    }
    if(sign == 0){
        return f;
    }
    else{
        return (~sign << 31) | (expo << 23) | frac;
    }
}


int main_2_92() {
    float_bits loop = 0;
    do {
	float f = u2f(loop);
	float my_abs = u2f(float_absval(loop));
  	// weird test because NaN != NaN
	if (((f == f) && my_abs != fabsf(f)) || (!(f == f) && (my_abs == my_abs))) {
	    printf("ERROR! Input %e, your abs value = %e and c library"
		   " gives %e\n", f, my_abs, fabs(f));
        exit(-1);
    }
    loop++;
    } while (loop);
    printf("All 2^32 values check out\n");

    // Show a few test cases that are interesting to turn in with your hw
    float f = -1;
    float f1 = -4294967295;
    float f2 = 0x02000001;
    
    printf("Input 0: %e\n\t My abs: %e\n\t C abs: %e\n", f, u2f(float_absval(f2u(f))), fabs(f));
    printf("Input 1: %e\n\t My abs: %e\n\t C abs: %e\n", f1, u2f(float_absval(f2u(f1))), fabs(f1));
    printf("Input 2: %e\n\t My abs: %e\n\t C abs: %e\n", f2, u2f(float_absval(f2u(f2))), fabs(f2));
    return 0;
}

int main_324_1(){
// Consider the C code below.
    int count = 0;
    double f,g;
    f = 0.0;
    g = f + 1.0;
    while (f != g)
    {
     f = g;
     g = f + 1.0;
     count++;
    }
    printf("value of g : %e\n", g);
    printf("loop was exectuted %i times.\n", count);
    printf("Does it ever get here?\n");
    return -1;
 }