#include <math.h>

double f(double x) {
	return tan(0.25*x)-1;
}

int main() {
	double a = 3, b = 4, c, fa, fb, fc;
	int i;
	fa = f(a);
	fb = f(b);
	i = 0;
	printf("[a_{%d},b_{%d}] &= [%2.10f, %2.10f]\\\\\n", i, i, a, b);
	for (i = 1; i < 21; i++) {
		fc = f(c = 0.5*(a+b));
		if (fa * fc < 0) {
				fb = fc;
				b = c;
			} else {
				fa = fc;
				a = c;
			}
		printf("[a_{%d},b_{%d}] &= [%2.10f, %2.10f]\\\\\n", i, i, a, b);
	}
}
