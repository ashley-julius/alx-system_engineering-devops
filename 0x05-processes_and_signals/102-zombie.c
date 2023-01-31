/* using the standard library */
#include <stdio.h>
#include <unistd.h>
/**
 * infinite_while - This process activates back the parent process
 * Return: zero
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - Entry program
 * Return: zero
 */
int main(void)
{
	/* declaring the loop variable and the process variable */
	int i;
	pid_t child_process;

	i = 0;
	while (i < 5)
	{
		/* duplicating the current process */
		child_process = fork();

		if (child_process == 0)
		{
			printf("Zombie process created, PID: %d\n", getpid());
			return (0);
		}
		i++;
	}
	infinite_while();
	return (0);
}
