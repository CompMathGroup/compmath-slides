set term mp color prologues 3
set encoding utf8
set xlabel "$\\lg(\\text{h})$"
set ylabel "$\\lg(\\text{ошибка})$"
set output "../images/diff.mp"
set style data lp
set key left bottom
plot "diff_r.dat" using 1:2 title "$\\text{Односторонняя разность}$",\
	 "diff_c.dat" using 1:2 title "$\\text{Центральная разность}$";
