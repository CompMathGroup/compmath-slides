#include <malloc.h>
#include <stdio.h>

double runge(double x)
{
	return 1.0/(1+25*x*x);
}

int main()
{
	int i, j, n;
	int ns[] = {5, 10, 15, 20, 25, 0};
	int *pn = ns;
	double a = -1.0, b = 1.0;
	double *x;
	double **f;

	printf("set term png\n");
	printf("set xrange [-1:1]\nset yrange [-1:2]\n");

	for (n = *pn++; n > 0; n = *pn++) {
		printf("set output \"../images/runge%d.png\"\n", n);
		printf("plot \\\n");
		printf("1.0/(1.0+25.0*x*x) title \"Runge\" lw 2,\\\n");
		x = malloc(sizeof(*x)*n);
		f = malloc(sizeof(*f)*n);
		for (i=0; i<n; i++)
			f[i] = malloc(sizeof(**f)*n);

		for (i=0; i<n; i++) {
			x[i] = a + (b-a)*i/(n-1);
			f[0][i] = runge(x[i]);
		}

		for (i=1; i<n; i++) 
			for (j=0; j<n-i; j++)
				f[i][j] = (f[i-1][j+1] - f[i-1][j])/(x[j+i]-x[j]);

		for (i=0; i<n; i++) {
			printf("+(%e)", f[i][0]);
			for (j=0; j<i; j++)
			{
				printf("*(x-(%e))", x[j]);
				if ((j % 5) == 4)
					printf("\\\n");
			}
			printf("\\\n");
		}
		printf("title \"n = %d\" lw 2\n", n);

		for (i=0; i<n; i++)
			free(f[i]);
		free(f);
		free(x);
	}
}
