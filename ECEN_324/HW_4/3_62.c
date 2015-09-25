
#include <stdio.h>
#define M 4
typedef int Marray_t[M][M];

void print_matrix(Marray_t A) {
	int i,j;
	for (i = 0; i < M; i++) {
		for (j = 0; j < M; j++) {
			printf("%8d   ", A[i][j]);
		}
		printf("\n");
	}	
}

void transpose(Marray_t A) {
	int i, j;
	for(i = 0; i < M; i++) {
		for (j = 0; j < i; j++) {
			int t = A[i][j];
			A[i][j] = A[j][i];
			A[j][i] = t;
		}	
	}
}

void transpose_optimized(Marray_t A) {
	// fill your code in here
	int i, j;
	for(i = 1; i < M; i++) {
		for (j = 0; j < i; j++) {
			int *t = A+(j*M+i);
			*((int)(A+(j*M+i))) = *((int)(A+(i*M+j)));
			*((int)(A+(i*M+j))) = *t;
		}	
	}
}

int main() {
	int i, j;
	Marray_t A = {{1,2,3,4},{1,2,3,4},{1,2,3,4},{1,2,3,4}};
	print_matrix(A);
	printf("\n");
	transpose(A);
	transpose_optimized(A);
	print_matrix(A);
}
