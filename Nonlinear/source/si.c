#include <math.h>

double f(double x) {
	return log(x) - x + 2;
}

int main() {
	double x = 3.9, g;
	int i;
	double px, py;
	px = x;
	py = 0;
	for (i = 0; i < 10; i++) {
		g = x + f(x);
		printf("%e %e %e %e\n", px, py, x-px, g-px);
		px = x;
		py = g;
		printf("%e %e %e %e\n", px, py, g-px, g-py);
		px = g;
		py = g;
		x = g;
	}
}
