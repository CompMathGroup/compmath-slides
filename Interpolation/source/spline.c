#include <math.h>
#include <stdio.h>

int main()
{
	int i, n = 6;
	double x[10], f[10];
	double f0, f1, f2, f3, f4, q, q2, qlast, a, b ,c, d, z;
	double x0, x1, x2;
	FILE *g = fopen("spline.dat", "w");
	for (i=0;i<n;i++) {
		x[i] = 2*M_PI*i/(n-1);
		f[i] = sin(x[i]);
		fprintf(g, "%e %e\n", x[i], f[i]);
	}
	fclose(g);
	printf("set term png\nset xrange[0:2*pi]\nset yrange[-1.1:1.1]\nset samples 1001\n");
	printf("set style data lp\n");
	printf("set output \"../images/spline1_1.png\"\n");
	printf("plot \"spline.dat\" using 1:2 lw 2 title \"Linear\"\n");
	printf("set output \"../images/spline2_2.png\"\n");
	printf("plot \\\n");
	for (i = 2; i < n; i++) {
		f2 = (f[i-1]-f[i-2])/(x[i-1]-x[i-2]);
		f3 = (f[i]-f[i-1])/(x[i]-x[i-1]);
		f4 = (f3-f2)/(x[i]-x[i-2]);
		printf("x < %e ? (%e)+(%e)*(x-(%e))+(%e)*(x-(%e))*(x-(%e)) : \\\n",
				x[i], f[i-2], f2, x[i-2], f4, x[i-2], x[i-1]);
	}
	printf("0 lw 2 title \"Square\",\\\n");
	printf("\"spline.dat\" using 1:2 with points ps 1 lw 2 pt 1 lt 1 notitle,\\\n");
	f[0] = 0.5;
	for (i = 2; i < n; i++) {
		f2 = (f[i-1]-f[i-2])/(x[i-1]-x[i-2]);
		f3 = (f[i]-f[i-1])/(x[i]-x[i-1]);
		f4 = (f3-f2)/(x[i]-x[i-2]);
		printf("x < %e ? (%e)+(%e)*(x-(%e))+(%e)*(x-(%e))*(x-(%e)) : \\\n",
				x[i], f[i-2], f2, x[i-2], f4, x[i-2], x[i-1]);
	}
	printf("0 lw 1.8 title \"Altered Square\"\n");
	printf("set output \"../images/spline2_1.png\"\n");
	printf("plot \\\n");
	f[0] = 0;
	f2 = (f[1]-f[0])/(x[1]-x[0]);
	f3 = (f[2]-f[1])/(x[2]-x[1]);
	f4 = (f3-f2)/(x[2]-x[0]);
	printf("x < %e ? (%e)+(%e)*(x-(%e))+(%e)*(x-(%e))*(x-(%e)) : \\\n",
			x[2], f[0], f2, x[0], f4, x[0], x[1]);
	q = f2 + 2 * f4 * x[2] - (x[0]+x[1])*f4;
	for (i = 3; i < n; i++) {
		z = 1.0/(x[i-1]-x[i]);
		z *= z;
		a = z*(-f[i-1]+f[i]+q*(x[i-1]-x[i]));
		b = z*(2*f[i-1]*x[i-1]-2*f[i]*x[i-1]+q*(-x[i-1]*x[i-1]+x[i]*x[i]));
		c = z*(f[i]*x[i-1]*x[i-1]+x[i]*(q*x[i-1]*(x[i-1]-x[i])+f[i-1]*(-2*x[i-1]+x[i])));
		q = 2*(f[i]-f[i-1])/(x[i]-x[i-1])-q;
		printf("x < %e ? (%e)*x*x+(%e)*x+(%e) : \\\n",
				x[i], a, b, c);
	}
	printf("0 lw 2 title \"Smooth-Square\",\\\n");
	printf("\"spline.dat\" using 1:2 with points ps 1 lw 2 pt 1 lt 1 notitle, \\\n");
	f[0] = 0.5;
	f2 = (f[1]-f[0])/(x[1]-x[0]);
	f3 = (f[2]-f[1])/(x[2]-x[1]);
	f4 = (f3-f2)/(x[2]-x[0]);
	printf("x < %e ? (%e)+(%e)*(x-(%e))+(%e)*(x-(%e))*(x-(%e)) : \\\n",
			x[2], f[0], f2, x[0], f4, x[0], x[1]);
	q = f2 + 2 * f4 * x[2] - (x[0]+x[1])*f4;
	for (i = 3; i < n; i++) {
		z = 1.0/(x[i-1]-x[i]);
		z *= z;
		a = z*(-f[i-1]+f[i]+q*(x[i-1]-x[i]));
		b = z*(2*f[i-1]*x[i-1]-2*f[i]*x[i-1]+q*(-x[i-1]*x[i-1]+x[i]*x[i]));
		c = z*(f[i]*x[i-1]*x[i-1]+x[i]*(q*x[i-1]*(x[i-1]-x[i])+f[i-1]*(-2*x[i-1]+x[i])));
		q = 2*(f[i]-f[i-1])/(x[i]-x[i-1])-q;
		printf("x < %e ? (%e)*x*x+(%e)*x+(%e) : \\\n",
				x[i], a, b, c);
	}
	printf("0 lw 2 title \"Altered Smooth-Square\"\n");
	printf("set output \"../images/spline3_1.png\"\n");
	printf("plot \\\n");
	f[0] = 0;
	q = (f[1]-f[0])/(x[1]-x[0]);
	qlast = (f[n-1]-f[n-2])/(x[n-1]-x[n-2]);
	for (i = 1; i < n; i++) {
		x0 = x[i-2];
		x1 = x[i-1];
		x2 = x[i];
		f0 = f[i-2];
		f1 = f[i-1];
		f2 = f[i];
		if (i == n - 1) {
			q2 = qlast;
/*		} else if (i == n - 2) {
			q2 = (f2 - f1) / (x2 - x1);*/
		} else {
			q2 = (f2 - f1) / (x2 - x1);
			double x3 = x[i+1];
			double f3 = f[i+1];
			q2 += (f3 - f2) / (x3 - x2);
			q2 /= 2;
		}
		a = (-2*f1 + 2*f2 + (q + q2)*(x1 - x2))/pow(x1 - x2,3);
		b = (3*f1*(x1 + x2) - 3*f2*(x1 + x2) - (x1 - x2)*(q*x1 + 2*q2*x1 + 2*q*x2 + q2*x2))/pow(x1 - x2,3);
		c = (q2*x1*(pow(x1,2) + x1*x2 - 2*pow(x2,2)) - x2*(6*f1*x1 - 6*f2*x1 + q*(-2*pow(x1,2) + x1*x2 + pow(x2,2))))/pow(x1 - x2,3);
		d = (f2*pow(x1,2)*(x1 - 3*x2) + x2*(q2*pow(x1,2)*(-x1 + x2) + x2*(f1*(3*x1 - x2) + q*x1*(-x1 + x2))))/pow(x1 - x2,3);
		printf("x < %e ? (%e)*x*x*x+(%e)*x*x+(%e)*x+(%e) : \\\n",
				x[i], a, b, c, d);
		q = q2;
	}
	printf("0 lw 2 title \"Local Smooth-Cube\",\\\n");
	printf("\"spline.dat\" using 1:2 with points ps 1 lw 2 pt 1 lt 1 notitle, \\\n");
	f[0] = 0.5;
	q = (f[1]-f[0])/(x[1]-x[0]);
	qlast = (f[n-1]-f[n-2])/(x[n-1]-x[n-2]);
	for (i = 1; i < n; i++) {
		x1 = x[i-1];
		x2 = x[i];
		f1 = f[i-1];
		f2 = f[i];
		if (i == n - 1) {
			q2 = qlast;
/*		} else if (i == n - 2) {
			q2 = (f2 - f1) / (x2 - x1);*/
		} else {
			q2 = (f2 - f1) / (x2 - x1);
			double x3 = x[i+1];
			double f3 = f[i+1];
			q2 += (f3 - f2) / (x3 - x2);
			q2 /= 2;
		}
		a = (-2*f1 + 2*f2 + (q + q2)*(x1 - x2))/pow(x1 - x2,3);
		b = (3*f1*(x1 + x2) - 3*f2*(x1 + x2) - (x1 - x2)*(q*x1 + 2*q2*x1 + 2*q*x2 + q2*x2))/pow(x1 - x2,3);
		c = (q2*x1*(pow(x1,2) + x1*x2 - 2*pow(x2,2)) - x2*(6*f1*x1 - 6*f2*x1 + q*(-2*pow(x1,2) + x1*x2 + pow(x2,2))))/pow(x1 - x2,3);
		d = (f2*pow(x1,2)*(x1 - 3*x2) + x2*(q2*pow(x1,2)*(-x1 + x2) + x2*(f1*(3*x1 - x2) + q*x1*(-x1 + x2))))/pow(x1 - x2,3);
		printf("x < %e ? (%e)*x*x*x+(%e)*x*x+(%e)*x+(%e) : \\\n",
				x[i], a, b, c, d);
		q = q2;
	}
	printf("0 lw 2 title \"Altered Local Smooth-Cube\"\n");
}
