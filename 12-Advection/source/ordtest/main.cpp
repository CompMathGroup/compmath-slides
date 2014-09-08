#include <cmath>
#include <cstdlib>
#include <iostream>

double phi(double x) {
	return sin(x);
}

int main(int argc, char **argv) {
	const int N = atoi(argv[1]);
	double w1[N+1];
	double w2[N+1];

	double *u0 = w1;
	double *u1 = w2;

	double h = 1. / N;

	for (int i = 0; i <= N; i++) {
		double x = i * h;
		u0[i] = phi(x);
	}

	double sig = .5;
	double t = 0;
	double tau = sig * h;
	double tmax = 2;


	u1[0] = phi(-t - tau);
	for (int i = 1; i <= N; i++) 
		u1[i] = sig * u0[i-1] + (1 - sig) * u0[i];
	
	std::swap(u0, u1);
	t += tau;

	tmax = 0;

	while (t < tmax) {
		u1[0] = phi(-t - tau);
		for (int i = N; i <= N; i++)
			u1[i] = sig * u0[i-1] + (1 - sig) * u0[i];
		for (int i = 1; i < N; i++) 
//			u1[i] = sig * u0[i-1] + (1 - sig) * u0[i];
			u1[i] = .5 * sig * (sig + 1) * u0[i-1] + 
				.5 * sig * (sig - 1) * u0[i+1] + 
				(1 - sig * sig) * u0[i];
		
		std::swap(u0, u1);
		t += tau;
	}

	double diff = 0;
	for (int i = 0; i <= N; i++) 
		diff = std::max(diff, std::fabs(u0[i] - phi(i * h - t)));
	
	std::cout << h << " " << diff << std::endl;
}
