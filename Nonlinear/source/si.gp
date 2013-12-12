set term postscript color solid
set output "si.ps"

set size square

set yrange [2.8:4]
set xrange [2.8:4]

plot \
	"si.dat" with vectors ls 1 notitle, \
	"si2.dat" with vectors ls 2 notitle, \
	x title "x" ls 0, log(x)+2 title "phi(x)" ls 3
