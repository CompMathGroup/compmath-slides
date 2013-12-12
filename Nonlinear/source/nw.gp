set term postscript color solid

set xzeroaxis 

set size square

set yrange [-1:0.5]
set xrange [-0:2.5]

set output "nw.ps"
plot \
	"nw.dat" with vectors ls 2 notitle, \
	atan(x) - 3.14159265358/4 title "f(x)" ls 3

set xrange [-10:10]
set yrange [-3:1]

set output "nw2.ps"
plot \
	"nw2.dat" with vectors ls 1 notitle, \
	atan(x) - 3.14159265358/4 title "f(x)" ls 3
