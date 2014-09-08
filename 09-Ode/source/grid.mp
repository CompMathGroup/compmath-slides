prologues := 3;
ahangle := 15;
ahlength := 5;
outputtemplate := "%j-%c.eps";

beginfig(0);

a = 200;
b = 1;
c = .1a;

z0 = (0, 0);
z1 = (a, 0);

drawarrow z0 .. z1;
label.lrt(btex $t$ etex, z1);

path xtick;
xtick = (0, -b) .. (0, b);

for j=0 upto 8:
	draw xtick shifted ((j+.5)*c, 0);
endfor

z2 = (.5c, 0);
z3 = (8.5c, 0);
z4 = (1.5c, 0);

label.bot(btex $0$ etex, z2);
label.bot(btex $\tau$ etex, z4);
label.bot(btex $T$ etex, z3);

label.top(btex $t_0$ etex, z2);
label.top(btex $t_1$ etex, z4);
label.top(btex $t_N$ etex, z3);

endfig;

beginfig(1);

z0 = (0, 0);
z1 = (a, 0);

drawarrow z0 .. z1;
label.lrt(btex $t$ etex, z1);

draw xtick shifted (.5*c, 0);
draw xtick shifted (2*c, 0);
draw xtick shifted (3*c, 0);
draw xtick shifted (3.5*c, 0);
draw xtick shifted (4.5*c, 0);
draw xtick shifted (6*c, 0);
draw xtick shifted (7.5*c, 0);
draw xtick shifted (8.5*c, 0);

z2 = (.5c, 0);
z3 = (8.5c, 0);

label.bot(btex $0$ etex, z2);
label.bot(btex $T$ etex, z3);

label.top(btex $t_0$ etex, z2);
label.top(btex $t_N$ etex, z3);

endfig;

end
