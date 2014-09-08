#include <cmath>
#include <fstream>

int main() {
    const double pi = 4 * std::atan(1);
    const double x = 17. / 2 * pi;

    double a = x;
    const int N = 30;

    std::fstream f("terms.dat", std::ios::out);
    for (int k = 0; k < N; k++) {
        f << k << " " << a << std::endl;
        a *= -x * x / (2 * k + 3) / (2 * k + 2);
    }
    f.close();
    return 0;
}
