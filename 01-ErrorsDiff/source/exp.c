#include <math.h>
#include <stdio.h>

int main()
{
	long long n;
	int i, j;
	double x;
	for (i = 0; i < 60; i++)
	{
		n = 1LL << i;
		x = 1.0 + 1.0/n;
		for (j = 0; j < i; j++)
			x *= x;
		printf("%-20lld: %e %e\n", n, x, fabs(M_E - x));
	}
}
