set term mp color prologues 3
set encoding utf8
set style data lp
set xlabel "$n$"
set ylabel "$\\lg(\\text{ошибка})$"
set output "../images/sine_pi_2.mp"
set yrange [-20:5]
plot "sine_pi_2.dat" using 1:2 title "$\\text{Фактическая ошибка}$", "sine_pi_2.dat" using 1:3 \
	title "$\\text{Ошибка метода}$";
set output "../images/sine_17pi_2.mp"
set key left bottom
plot "sine_17pi_2.dat" using 1:2 title "$\\text{Фактическая ошибка}$", "sine_17pi_2.dat" using 1:3 \
	title "$\\text{Ошибка метода}$";
