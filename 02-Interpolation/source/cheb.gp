set term pngcairo enhanced
set output "../images/cheb.png"
set xrange [-1:1]
plot (-7*x)/64. + (7*x**3)/8. - (7*x**5)/4. + x**7 title "T_7(x)" lw 2,\
"cheb.dat" title "x_k" ls 4
