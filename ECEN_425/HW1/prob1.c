#include <stdio.h>

int main(int argc, char* argv[]){
	
	int year = 0;
	if(argc == 2)
		year = atoi(argv[1]);
	if(IsLeapYear(year))
		printf("%d is a leap year\n", year);
	else
		printf("%d is not a leap year\n", year);
	return 0;
}

int IsLeapYear(int year){
	return (!(year%400) || (!(year%4) && year%100));
}