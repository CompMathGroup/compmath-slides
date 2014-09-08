#set term png
#set output "lnxmxp2.png"
set xrange [0:4]
set yrange [-2:2]
set zeroaxis
plot 0 ls 0 notitle ,log(x)-x+2 title "f(x)" 
