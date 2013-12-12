#include <math.h>

double f(double x) {
	return atan(x) - M_PI/4;
}

double fs(double x) {
	return 1.0/(1.0 + x*x);
}

int main()
{
	double x, y;
	double px, py;
	int i;
	x = 2.95;
	y = f(x);
	px = x;
	py = y;
	for (i=0; i<10; i++) {
		x -= y/fs(x);
		y = f(x);
		printf("%e %e %e %e\n", px, py, x-px, -py);
		px = x;
		py = 0;
		printf("%e %e %e %e\n", px, py, x-px, y-py);
		px = x;
		py = y;
	}
}
