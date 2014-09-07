#include <malloc.h>
#include <stdio.h>

#include <math.h>

double g(double x)
{
	return sin(x);
}

int main()
{
	int i, j, n;
	double a = 0, b = 2*M_PI;
	double *x;
	double **f;
	int s;
	FILE *w;
	char fn[1024];

	n = 20;

	x = malloc(sizeof(*x)*n);
	f = malloc(sizeof(*f)*n);
	for (i=0; i<n; i++)
		f[i] = malloc(sizeof(**f)*n);

	for (i=0; i<n; i++) {
		x[i] = a + (b-a)*i/(n-1);
		f[0][i] = g(x[i]);
	}

	printf("set term pngcairo\nset xrange[0:2*pi]\nset yrange [-1.5:1.5]\n");

	for (s = 0; s < 20; s++)
	{
		printf("set output \"../images/sense%d.png\"\n", s);
		sprintf(fn, "sense%d.dat", s);
		w = fopen(fn, "w");
		for (i = 0; i < n; i++)
			fprintf(w, "%e %e\n", x[i], f[0][i]);
		fclose(w);
		for (i=1; i<n; i++) 
			for (j=0; j<n-i; j++)
				f[i][j] = (f[i-1][j+1] - f[i-1][j])/(x[j+i]-x[j]);
		printf("plot ");
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
		printf("title \"P(x)\" lw 2, \"sense%d.dat\" using 1:2 ls 4 title \"Points\"\n", s);
		f[0][12] += 0.0005;
	}
	for (i=0; i<n; i++)
		free(f[i]);
	free(f);
	free(x);
}
