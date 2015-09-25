#include <stdio.h>
#include <inttypes.h>

int main(int argc, char* argv[]){
	int32_t t1 = 0;
	int32_t t2 = 0;
	if(argc == 3){
		t1 = atoi(argv[1]);
		t2 = atoi(argv[2]);
	}
	printf("first\nt1: 0x%x\nt2: 0x%x\n", t1, t2);
	t2 = ((t1 << 8) & 0xFF000000) | (~(t1 >> 8) & 0xFF0000) | ((t1 << 8) & 0xFF00) | ((t1 >> 8) & 0xFF);
	printf("t2: 0x%x\n", t2);
}