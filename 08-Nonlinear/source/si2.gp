set term postscript color solid
set output "si2.ps"

set size square

set yrange [0.1:0.2]
set xrange [0.1:0.2]

plot \
	"si3.dat" with vectors ls 1 notitle, \
	"si4.dat" with vectors ls 2 notitle, \
	x title "x" ls 0, log(x)+2 title "phi(x)" ls 3
