set term png
set xrange [0:5]
set yrange [0:4]
set output "../images/p0.png"
plot 1 lw 2 title "P(x) = 1", 3-2*(1-log(x)/log(2))**2 lw 2 title "f(x)", "pts3.dat" using 1:2 lw 2 ps 2 title "Точки"
set output "../images/p1.png"
plot 1+2*(x-1) lw 2 title "P(x) = 1+2(x-1)", 3-2*(1-log(x)/log(2))**2 lw 2 title "f(x)", "pts3.dat" using 1:2 lw 2 ps 2 title "Точки"
set output "../images/p2.png"
plot 1+2*(x-1)-(x-1)*(x-2) lw 2 title "P(x) = 1+2(x-1)-(x-1)(x-2)", 3-2*(1-log(x)/log(2))**2 lw 2 title "f(x)", "pts3.dat" using 1:2 lw 2 ps 2 title "Точки"
