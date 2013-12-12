int main() {
	double a = 0.5;
	double b = 3;
	int i, n = 5;
	double rect = 0;
	double trap = 0;
	double simp = 0;
	double ex = cos(a) - cos(b);
	double h = (b-a)/n;
	for (i = 0; i < n; i++) {
		rect += h * sin(a+h/2+i*h);
		trap += 0.5 * h * (sin(a+h+i*h) + sin(a+i*h));
		if (i != n-1)
			simp += h/12*(5*sin(a+i*h)+8*sin(a+h+i*h)-sin(a+h+h+i*h));
	}
	simp += h/12*(-sin(b-h-h)+8*sin(b-h)+5*sin(b));
	printf("rect = %e, diff = %e %%\n", rect, 100.0*fabs(rect-ex)/ex);
	printf("trap = %e, diff = %e %%\n", trap, 100.0*fabs(trap-ex)/ex);
	printf("simp = %e, diff = %e %%\n", simp, 100.0*fabs(simp-ex)/ex);
}
