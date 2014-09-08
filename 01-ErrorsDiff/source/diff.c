/* Enables definition of M_PI in math.h for MSVC compiler */
#ifdef _MSC_VER
 #define _USE_MATH_DEFINES
#endif
#include <math.h>
#include <stdio.h>

int main()
{
	int i;
	double x = 1;
	double fs = cos(x);
	double h = 1;
	double diff;
	FILE *f = fopen("diff_r.dat", "w");
	for (i = 0; i<80; i++) {
		diff = (sin(x+h) - sin(x)) / h;
		printf("h = %e, diff = %12.10f, eps = %e\n", h, diff, fabs(diff - fs));
		fprintf(f,"%e %e\n", log10(h), log10(fabs(diff - fs)));
		h /= 2;
	}
	fclose(f);
	h = 1;
	f = fopen("diff_c.dat", "w");
	for (i = 0; i<80; i++) {
		diff = (sin(x+h) - sin(x-h)) / 2 / h;
		printf("h = %e, diff = %12.10f, eps = %e\n", h, diff, fabs(diff - fs));
		fprintf(f,"%e %e\n", log10(h), log10(fabs(diff - fs)));
		h /= 2;
	}
	fclose(f);
	return 0;
}
