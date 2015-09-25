#include <stdio.h>
#define LENGTH 4

int main(){
	int arr [LENGTH] = {2,5,7,9};
	int v = 12;
	
	printf("\narr: [%p: %d, %p: %d, %p: %d, %p: %d]\n", &arr[0], arr[0], &arr[1], arr[1], &arr[2], arr[2], &arr[3], arr[3]);
	printf("v: %p: %d\n\n", &v, v);
	
	int i;
	for (i = -1; i <= LENGTH+1; i++)
	{
		arr[i] = arr[i+1];
	}
	
	printf("new v: %p: %d\n", &v, v);
	printf("new arr: [%p: %d, %p: %d, %p: %d, %p: %d]\n", &arr[0], arr[0], &arr[1], arr[1], &arr[2], arr[2], &arr[3], arr[3]);
	return 0;
}

/*OUTPUT: 
arr: [0x7fff9d865fe0: 2, 0x7fff9d865fe4: 5, 0x7fff9d865fe8: 7, 0x7fff9d865fec: 9]
v: 0x7fff9d865fdc: 12

new v: 0x7fff9d865fdc: 2
new arr: [0x7fff9d865fe0: 5, 0x7fff9d865fe4: 7, 0x7fff9d865fe8: 9, 0x7fff9d865fec: 0]
*/