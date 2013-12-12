#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
	int i,j;
	int ns[] = {5, 10, 20, 0};
	double yr[] = {2.0, 2.5, 3.0, 0};
	int *pn = ns;
	double *py = yr;
	int n;
	double z, y;
	double *x;
	double a = -1.0, b = 1.0;

	printf("set term png\nset xrange [-1.1:1.1]\nset samples 5000\n");

	for (n = *pn++, y = *py++; n>0; n = *pn++, y = *py++){
		x = malloc(sizeof(*x)*n);

		printf("set output \"../images/leb_ch%d.png\"\n", n);
		printf("set yrange [0:%e]\n", y);
		printf("plot ");
		for (i = 0; i < n; i++)
			x[i] = (a+b)/2 + (b-a)/2*cos(M_PI*(2*i+1)/(2*n));
		for (i = 0; i < n; i++) {
			z = 1.0;
			for (j = 0; j < n; j++) {
				if (i==j) continue;
				z /= (x[i]-x[j]);
			}
			printf("+abs((%e)", z);
			for (j = 0; j < n; j++) {
				if (i==j) continue;
				printf("*(x-(%e))", x[j]);
			}
			printf(")");
		}
		printf(" title \"n=%d\" lw 2\n", n);
		free(x);
	}
}
