set term png
set xrange [0:5]
set yrange [-1:2]
set output "../images/l.png"
set key center top
plot 1.0/3*(x-2)*(x-4) lw 2 title "L1(x)",\
	-1.0/2*(x-1)*(x-4) lw 2 title "L2(x)",\
	1.0/6*(x-1)*(x-2) lw 2 title "L3(x)",\
	"pts4.dat" using 1:2 ps 2 lw 2 title "Узлы"
set output "../images/lp.png"
set key right top
set yrange [-1:4]
plot \
	1.0/3*(x-2)*(x-4) lw 2 title "L1(x)",\
	-3.0/2*(x-1)*(x-4) lw 2 title "3 L2(x)",\
	1.0/6*(x-1)*(x-2) lw 2 title "L3(x)",\
	1.0/3*(x-2)*(x-4) -3.0/2*(x-1)*(x-4) + 1.0/6*(x-1)*(x-2) \
	title "P(x)" lt -1 lw 3,\
	"pts3.dat" using 1:2 title "Точки" lt 4 ps 2 lw 2
