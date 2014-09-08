/* Enables definition of M_PI in math.h for MSVC compiler */
#ifdef _MSC_VER
 #define _USE_MATH_DEFINES
#endif
#include <math.h>
#include <stdio.h>

int main()
{
	int n;
	double sum = 0;
	double x = M_PI / 2;
	double xx = x * x;
	double z = x;
	double eps = 1;

	FILE *f = fopen("sine_pi_2.dat", "w");

	printf("x = %12.10f\n", x);
	for (n = 1; n < 50; n++ ) {
		sum += z;
		eps = eps * xx / (2*n-1) / (2*n);
		z = -z * xx / (2*n) / (2*n+1);
		printf("S_%-3d = % 12.10e, |S_%-3d - 1| = %.6e, eps = %.6e\n", 
				n, sum, n, fabs(sum - 1), eps);
		fprintf(f, "%d %e %e\n", n, log10(fabs(sum - 1)), log10(eps));
	}
	fclose(f);

	x = M_PI / 2 + 8 * M_PI;
	xx = x * x;
	z = x;
	sum = 0;
	eps = 1;
	f = fopen("sine_17pi_2.dat", "w");

	printf("x = %12.10f\n", x);
	for (n = 1; n < 50; n++ ) {
		sum += z;
		eps = eps * xx / (2*n-1) / (2*n);
		z = -z * xx / (2*n) / (2*n+1);
		printf("S_%-3d = % 12.10e, |S_%-3d - 1| = %.6e, eps = %.6e\n", 
				n, sum, n, fabs(sum - 1), eps);
		fprintf(f, "%d %e %e\n", n, log10(fabs(sum - 1)), log10(eps));
	}
	fclose(f);
	return 0;
}
