#include <stdio.h>

void end(void)
{
	printf("2");
}

int main()
{
	if(fork() == 0)
		atexit(end);
	if(fork() == 0)
		printf("0");
	else
		printf("1");
	exit(0);
}


// pid_t Fork(void)
// {
// 	pid_t pid;

// 	if((pid = fork()) < 0)
// 		unix_error("Fork Error");
// 	return pid;
// }

// void unix_error(char *msg)
// {
// 	fprintf(stderr, "%s: %s\n", msg, strerror(errno));
// 	exit(0);
// }