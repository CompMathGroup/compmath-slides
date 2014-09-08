prologues := 3;
ahangle := 15;
ahlength := 5;
outputtemplate := "%j-%c.eps";

beginfig(0);

a = 70;
b = .1a;

l1 = 3;
l2 = 20;
l3 = 25;
qopt = (l3 - l1) / (l1 + l3);

pair p[],q[];

z0 = (0,0);
z1 = z0 + (0,a);
z2 = 1.3[z0,z1];
z1 + z3 = 2 * z0;
z4 + z2 = 2 * z0;

z5 = z0 + (b * l3, 0);
z6 = 1.3[z0,z5];

z7 = qopt[z0,z1];
z7 + z8 = 2 * z0;


p1 = b*(l1, 0);
p2 = b*(l2, 0);
p3 = b*(l3, 0);

drawarrow z0 -- z6;
drawarrow z4 -- z2;

ticklen = .03a;

path xtick;
xtick = (0,-ticklen) -- (0,ticklen);

draw xtick shifted p1;
draw xtick shifted p2;
draw xtick shifted p3;

label.urt(btex $\lambda_1$ etex, p1 + (0,ticklen));
label.urt(btex $\lambda_2$ etex, p2 + (0,ticklen));
label.urt(btex $\lambda_3$ etex, p3 + (0,ticklen));

path ytick;
ytick = (-ticklen,0) -- (ticklen,0);

draw ytick shifted z1;
draw ytick shifted z3;
draw ytick shifted z7;
draw ytick shifted z8;

label.lft(btex $1$ etex, z1 + (-ticklen,0));
label.lft(btex $-1$ etex, z3 + (-ticklen,0));
label.lft(btex $q_{opt}$ etex, z7 + (-ticklen,0));
label.lft(btex $-q_{opt}$ etex, z8 + (-ticklen,0));

label.urt(btex $\lambda(B)$ etex, z2);
label.urt(btex $\lambda(A)$ etex, z6);

q1 = p1 + (0, qopt*a);
q2 = p2 - (0, qopt*a);
q3 = p3 - (0, qopt*a);
q4 = p3 - (0, a);
q5 = 2[z1,.5[p1,p2]];

draw z1 -- 1.2[z1,q3];
draw z1 -- 1.1[z1,q2];
draw z1 -- 1.1[z1,q5];

draw z7 -- q1 -- p1 dashed evenly scaled .5;
draw z8 -- q2 -- p2 dashed evenly scaled .5;
draw z8 -- q3 -- p3 dashed evenly scaled .5;
draw q3 -- q4 dashed evenly scaled .5;

draw (z1 -- (z1 + z6 - z0)) dashed evenly;
draw (z3 -- (z3 + z6 - z0)) dashed evenly;


draw (z1 -- 1.1[z1,q4]) dashed evenly scaled 2;

z10 = .5[z1,q3];
z11 = .7[z1,q2];
z12 = z10 + a * (.2, .3);
z13 = z11 - a * (.2, .3);

drawarrow z12{dir 200} ... z10{dir 260};
drawarrow z13{dir 30} ... z11{dir 70};

label.urt(btex $|q_2| < |q_1| = q_{opt}$ etex, z12);
label.llft(btex $|q_1| < |q_2| = q_{opt}$ etex, z13);

z14 = .95[z1,q4];
z15 = z14 + a*(.5,.6);

drawarrow z15{dir 260} ... z14{dir 200};
label.urt(btex $\tau = {2 \over \lambda_{max}}$ etex, z15);

z16 = 1.05[z1,q5];
z17 = z16 - a*(.2,.05);

drawarrow z17{dir 20} ... z16{dir 40};
label.lft(btex $|q_1| = |q_2| = \tilde{q}_{opt}$ etex, z17);

endfig;

beginfig(1);

z0 = (0,0);
z1 = z0 + (0,a);
z2 = 1.3[z0,z1];
z1 + z3 = 2 * z0;
z4 + z2 = 2 * z0;

z5 = z0 + (b * l3, 0);
z6 = 1.3[z0,z5];

z7 = qopt[z0,z1];
z7 + z8 = 2 * z0;

drawarrow z0 -- z6;
drawarrow z4 -- z2;

draw xtick shifted p1;
draw xtick shifted p2;
draw xtick shifted p3;

label.urt(btex $\lambda_1$ etex, p1 + (0,ticklen));
label.urt(btex $\lambda_2$ etex, p2 + (0,ticklen));
label.urt(btex $\lambda_3$ etex, p3 + (0,ticklen));

draw ytick shifted z1;
draw ytick shifted z3;
draw ytick shifted z7;
draw ytick shifted z8;

label.lft(btex $1$ etex, z1 + (-ticklen,0));
label.lft(btex $-1$ etex, z3 + (-ticklen,0));
label.lft(btex $q_{opt}$ etex, z7 + (-ticklen,0));
label.lft(btex $-q_{opt}$ etex, z8 + (-ticklen,0));

label.urt(btex $\lambda(B)$ etex, z2);
label.urt(btex $\lambda(A)$ etex, z6);

q2 := p2 + (0, qopt*a);
q5 := 1.2[z1,.5[p3,p2]];

draw z1 -- 1.2[z1,q3];
draw z1 -- 1.3[z1,q2];
draw z1 -- 1.1[z1,q5];

draw z7 -- q1 -- p1 dashed evenly scaled .5;
draw q1 -- q2 -- p2 dashed evenly scaled .5;
draw z8 -- q3 -- p3 dashed evenly scaled .5;

z10 = .75[z1,q3];
z11 = z10 - (.3,.2)*a;

drawarrow z11{dir 20} ... z10{dir 45};
label.llft(btex $|q_2| < |q_3| = q_{opt}$ etex, z11);

z12 = .75[z1,q2];
z13 = z12 + (.3,.2)*a;

drawarrow z13{dir 200} ... z12{dir 225};
label.rt(btex $|q_3| < |q_2| = q_{opt}$ etex, z13);

z14 = 1.05[z1,q5];
z15 = z14 + (.2,.1)*a;

drawarrow z15{dir 200} ... z14{dir 225};
label.rt(btex $|q_3| = |q_2| = \tilde{q}_{opt}$ etex, z15);

endfig;

end
