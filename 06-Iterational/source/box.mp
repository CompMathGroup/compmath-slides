prologues := 3;
ahangle := 15;
ahlength := 5;
outputtemplate := "%j-%c.eps";

beginfig(0);
pair c;
pair p[];
R = 50;
r = 2.5R;
theta = 20;
c = (2R, 2R);

path a;
a = fullcircle scaled 2R shifted c;
draw a;
p1 = c + (r, 0);
p2 = c + (1.5r, 0);
draw c -- p2 dashed evenly scaled 1.5;
transform t;
t = identity shifted -p1 rotated theta shifted p1;
p3 = c transformed t;
p4 = (-.5)[p3,p1];
p5 = 1.4[p3,p1];
path b;
draw p4 -- p1;
drawarrow p1 -- p5 withpen pencircle scaled 1.4;
label.top(btex $\Omega$ etex, p5);
p6 = a intersectionpoint (p4 -- p3);
p7 = a intersectionpoint (p3 -- p1);

vardef dot primary x = filldraw fullcircle scaled 2 shifted x enddef;

dot c;
dot p1;
dot p6;
dot p7;

path ang;
ang = fullcircle scaled 50 shifted p1;
(q, whatever) = ang intersectiontimes (p1 -- p5);
draw subpath (0, q) of ang;
label.rt(btex $\theta$ etex, point .6q of ang);

pair sh;
sh = 0.1(c - (0.5[p6,p7]));

drawdblarrow (p6 + sh) -- (p7 + sh);
label.top(btex $\Delta_1$ etex rotated theta, sh + .5[p6,p7]);
z1 = p7 - p6;
show x1 ++ y1;
show 2 (R +-+ (r*sind(theta)));

drawdblarrow (p7 - sh) -- (p1 - sh);
label.bot(btex $\Delta_2$ etex rotated theta, .5[p1,p7] - sh);
z2 = p7 - p1;
show x2 ++ y2;
show r*cosd(theta) - (R +-+ (r*sind(theta)));

drawdblarrow c -- (c + R*(cosd(120),sind(120)));
label.rt(btex $R$ etex, 
		c + 0.5R*(cosd(120),sind(120)));

drawdblarrow (c + (0,5)) -- (p1 + (0,5));
label.top(btex $r$ etex, .5[c,p1] + (0,5));

endfig;

beginfig(1);
draw a;
theta := 40;
r := 0.5R;

p1 := c + (r, 0);
p2 := c + (1.5R, 0);
draw c -- p2 dashed evenly scaled 1.5;
t := identity shifted -p1 rotated theta shifted p1;
p3 := c transformed t;
p4 := (-2)[p3,p1];
p5 := 2[p3,p1];
draw p4 -- p1;
drawarrow p1 -- p5 withpen pencircle scaled 1.4;
label.ulft(btex $\Omega$ etex, p5);

p6 := a intersectionpoint (p4 -- p3);

p7 := (p1 - p6) rotated 90;
p8 = whatever[p1,p6] = c + whatever * p7;

sh := 0.3 * (c - p8);
drawdblarrow (p6 - sh) -- (p1 - sh);
label.bot(btex $\Delta_3$ etex rotated theta, 0.5[p1,p6] - sh);
z3 = p6 - p1;
show x3 ++ y3;
show r*cosd(theta) + (R +-+ (r*sind(theta)));

drawdblarrow c -- (c + R*(cosd(120),sind(120)));
label.rt(btex $R$ etex, 
		c + 0.5R*(cosd(120),sind(120)));

drawdblarrow (c + (0, 5)) -- (c + (r, 5));
label.top(btex $r$ etex, c + (0.5r, 5));

ang := fullcircle scaled 30 shifted p1;
numeric q;
(q, whatever) = ang intersectiontimes (p1 -- p5);
draw subpath (0, q) of ang;
label.rt(btex $\theta$ etex, point .6q of ang);

endfig;

end
