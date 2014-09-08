%GNUPLOT Metapost output: Mon Sep  3 19:59:45 2012

prologues:=3;

warningcheck:=0;
defaultmpt:=mpt:=4;
th:=.6;
%% Have nice sharp joins on our lines
linecap:=butt;
linejoin:=mitered;

def scalepen expr n = pickup pencircle scaled (n*th) enddef;
def ptsize expr n = mpt:=n*defaultmpt enddef;


textmag:= 1.000;
vardef makepic(expr str) =
  if picture str : str scaled textmag
  % otherwise a string
  else: str infont defaultfont scaled (defaultscale*textmag)
  fi
enddef;

def infontsize(expr str, size) =
  infont str scaled (size / fontsize str)
enddef;

%font changes
verbatimtex
\def\setfont#1#2{%.
  \font\gpfont=#1 at #2pt
\gpfont}
\setfont{cmr10}{10.00}
etex

color currentcolor; currentcolor:=black;
color fillcolor;
boolean colorlines,dashedlines;
colorlines:=true;
dashedlines:=true;

def _wc = withpen currentpen withcolor currentcolor enddef;
def _ac = addto currentpicture enddef;
def _sms = scaled mpt shifted enddef;
% drawing point-types
def gpdraw (expr n, x, y) =
  if n<0: _ac contour fullcircle _sms (x,y)
  elseif (n=1) or (n=3):
    _ac doublepath ptpath[n] _sms (x,y) _wc;
    _ac doublepath ptpath[n] rotated 90 _sms (x,y) _wc
  elseif n<6: _ac doublepath ptpath[n] _sms (x,y) _wc
  else: _ac contour ptpath[n] _sms (x,y) _wc
  fi
enddef;

% the point shapes
path ptpath[];
%diamond
ptpath0 = ptpath6 = (-1/2,0)--(0,-1/2)--(1/2,0)--(0,1/2)--cycle;
% plus sign
ptpath1 = (-1/2,0)--(1/2,0);
% square
ptpath2 = ptpath7 = (-1/2,-1/2)--(1/2,-1/2)--(1/2,1/2)--(-1/2,1/2)--cycle;
% cross
ptpath3 := (-1/2,-1/2)--(1/2,1/2);
% circle:
ptpath4 = ptpath8:= fullcircle;
% triangle
ptpath5 = ptpath9 := (0,1/2)--(-1/2,-1/2)--(1/2,-1/2)--cycle;

def linetype expr n =
  currentcolor:= if colorlines : col[n] else: black fi;
  if n = -1 :
      drawoptions(withcolor currentcolor withpen (currentpen scaled .5));
  elseif n < 1 :
    drawoptions(_wc);
  else :
    drawoptions( if dashedlines: dashed lt[n] fi _wc);
  fi
enddef;

% dash patterns
picture lt[];
lt1=dashpattern(on 2 off 2); % dashes
lt2=dashpattern(on 2 off 2 on 0.2 off 2); %dash-dot
lt3=lt1 scaled 1.414;
lt4=lt2 scaled 1.414;
lt5=lt1 scaled 2;
lt6:=lt2 scaled 2;
lt7=dashpattern(on 0.2 off 2); %dots

color col[],cyan, magenta, yellow;
cyan=blue+green; magenta=red+blue;yellow=green+red;
col[-2]:=col[-1]:=col0:=black;
col1:=red;
col2:=(.2,.2,1); %blue
col3:=(1,.66,0); %orange
col4:=.85*green;
col5:=.9*magenta;
col6:=0.85*cyan;
col7:=.85*yellow;

%placing text
picture GPtext;
def put_text(expr pic, x, y, r, j) =
  GPtext:=makepic(pic);
  GPtext:=GPtext shifted
    if j = 1: (-(ulcorner GPtext + llcorner GPtext)/2)
    elseif j = 2: (-center GPtext)
    else: (-(urcorner GPtext + lrcorner GPtext)/2)
    fi
    rotated r;
  addto currentpicture also GPtext shifted (x,y)
enddef;

beginfig(0);
w:=5.000in;h:=3.000in;
a:=w/1200.0;b:=h/720.0;
scalepen 1; ptsize 1.000;linetype -2;
draw (133.9a,117.1b)--(150.5a,117.1b);
draw (1146.8a,117.1b)--(1130.2a,117.1b);
put_text( btex -20 etex, 116.2a, 117.1b, 0, 3);
draw (133.9a,230.6b)--(150.5a,230.6b);
draw (1146.8a,230.6b)--(1130.2a,230.6b);
put_text( btex -15 etex, 116.2a, 230.6b, 0, 3);
draw (133.9a,344.1b)--(150.5a,344.1b);
draw (1146.8a,344.1b)--(1130.2a,344.1b);
put_text( btex -10 etex, 116.2a, 344.1b, 0, 3);
draw (133.9a,457.5b)--(150.5a,457.5b);
draw (1146.8a,457.5b)--(1130.2a,457.5b);
put_text( btex -5 etex, 116.2a, 457.5b, 0, 3);
draw (133.9a,571.0b)--(150.5a,571.0b);
draw (1146.8a,571.0b)--(1130.2a,571.0b);
put_text( btex  0 etex, 116.2a, 571.0b, 0, 3);
draw (133.9a,684.5b)--(150.5a,684.5b);
draw (1146.8a,684.5b)--(1130.2a,684.5b);
put_text( btex  5 etex, 116.2a, 684.5b, 0, 3);
draw (133.9a,117.1b)--(133.9a,133.7b);
draw (133.9a,684.5b)--(133.9a,667.9b);
put_text( btex  0 etex, 133.9a, 80.5b, 0, 2);
draw (235.2a,117.1b)--(235.2a,133.7b);
draw (235.2a,684.5b)--(235.2a,667.9b);
put_text( btex  5 etex, 235.2a, 80.5b, 0, 2);
draw (336.5a,117.1b)--(336.5a,133.7b);
draw (336.5a,684.5b)--(336.5a,667.9b);
put_text( btex  10 etex, 336.5a, 80.5b, 0, 2);
draw (437.8a,117.1b)--(437.8a,133.7b);
draw (437.8a,684.5b)--(437.8a,667.9b);
put_text( btex  15 etex, 437.8a, 80.5b, 0, 2);
draw (539.1a,117.1b)--(539.1a,133.7b);
draw (539.1a,684.5b)--(539.1a,667.9b);
put_text( btex  20 etex, 539.1a, 80.5b, 0, 2);
draw (640.4a,117.1b)--(640.4a,133.7b);
draw (640.4a,684.5b)--(640.4a,667.9b);
put_text( btex  25 etex, 640.4a, 80.5b, 0, 2);
draw (741.6a,117.1b)--(741.6a,133.7b);
draw (741.6a,684.5b)--(741.6a,667.9b);
put_text( btex  30 etex, 741.6a, 80.5b, 0, 2);
draw (842.9a,117.1b)--(842.9a,133.7b);
draw (842.9a,684.5b)--(842.9a,667.9b);
put_text( btex  35 etex, 842.9a, 80.5b, 0, 2);
draw (944.2a,117.1b)--(944.2a,133.7b);
draw (944.2a,684.5b)--(944.2a,667.9b);
put_text( btex  40 etex, 944.2a, 80.5b, 0, 2);
draw (1045.5a,117.1b)--(1045.5a,133.7b);
draw (1045.5a,684.5b)--(1045.5a,667.9b);
put_text( btex  45 etex, 1045.5a, 80.5b, 0, 2);
draw (1146.8a,117.1b)--(1146.8a,133.7b);
draw (1146.8a,684.5b)--(1146.8a,667.9b);
put_text( btex  50 etex, 1146.8a, 80.5b, 0, 2);
draw (133.9a,684.5b)--(133.9a,117.1b)--(1146.8a,117.1b)--(1146.8a,684.5b)--(133.9a,684.5b);
put_text( btex $\lg(\text{ошибка})$ etex, 27.1a, 400.8b, -270, 2);
linetype -2;
put_text( btex $n$ etex, 640.3a, 25.6b, 0, 2);
linetype -2;
linetype 0;
put_text( btex $\text{Фактическая ошибка}$ etex, 1006.3a, 649.6b, 0, 3);
linetype 0;
draw (1024.0a,649.6b)--(1111.4a,649.6b);
draw (154.2a,565.5b)--(174.4a,545.5b)--(194.7a,517.8b)--(214.9a,484.7b)--(235.2a,447.3b)
--(255.4a,406.5b)--(275.7a,362.7b)--(296.0a,316.4b)--(316.2a,267.8b)--(336.5a,195.3b)
--(356.7a,217.2b)--(377.0a,215.7b)--(397.3a,215.7b)--(417.5a,215.7b)--(437.8a,215.7b)
--(458.0a,215.7b)--(478.3a,215.7b)--(498.5a,215.7b)--(518.8a,215.7b)--(539.1a,215.7b)
--(559.3a,215.7b)--(579.6a,215.7b)--(599.8a,215.7b)--(620.1a,215.7b)--(640.4a,215.7b)
--(660.6a,215.7b)--(680.9a,215.7b)--(701.1a,215.7b)--(721.4a,215.7b)--(741.6a,215.7b)
--(761.9a,215.7b)--(782.2a,215.7b)--(802.4a,215.7b)--(822.7a,215.7b)--(842.9a,215.7b)
--(863.2a,215.7b)--(883.4a,215.7b)--(903.7a,215.7b)--(924.0a,215.7b)--(944.2a,215.7b)
--(964.5a,215.7b)--(984.7a,215.7b)--(1005.0a,215.7b)--(1025.3a,215.7b)--(1045.5a,215.7b)
--(1065.8a,215.7b)--(1086.0a,215.7b)--(1106.3a,215.7b)--(1126.5a,215.7b);
gpdraw(0,154.2a,565.5b);
gpdraw(0,174.4a,545.5b);
gpdraw(0,194.7a,517.8b);
gpdraw(0,214.9a,484.7b);
gpdraw(0,235.2a,447.3b);
gpdraw(0,255.4a,406.5b);
gpdraw(0,275.7a,362.7b);
gpdraw(0,296.0a,316.4b);
gpdraw(0,316.2a,267.8b);
gpdraw(0,336.5a,195.3b);
gpdraw(0,356.7a,217.2b);
gpdraw(0,377.0a,215.7b);
gpdraw(0,397.3a,215.7b);
gpdraw(0,417.5a,215.7b);
gpdraw(0,437.8a,215.7b);
gpdraw(0,458.0a,215.7b);
gpdraw(0,478.3a,215.7b);
gpdraw(0,498.5a,215.7b);
gpdraw(0,518.8a,215.7b);
gpdraw(0,539.1a,215.7b);
gpdraw(0,559.3a,215.7b);
gpdraw(0,579.6a,215.7b);
gpdraw(0,599.8a,215.7b);
gpdraw(0,620.1a,215.7b);
gpdraw(0,640.4a,215.7b);
gpdraw(0,660.6a,215.7b);
gpdraw(0,680.9a,215.7b);
gpdraw(0,701.1a,215.7b);
gpdraw(0,721.4a,215.7b);
gpdraw(0,741.6a,215.7b);
gpdraw(0,761.9a,215.7b);
gpdraw(0,782.2a,215.7b);
gpdraw(0,802.4a,215.7b);
gpdraw(0,822.7a,215.7b);
gpdraw(0,842.9a,215.7b);
gpdraw(0,863.2a,215.7b);
gpdraw(0,883.4a,215.7b);
gpdraw(0,903.7a,215.7b);
gpdraw(0,924.0a,215.7b);
gpdraw(0,944.2a,215.7b);
gpdraw(0,964.5a,215.7b);
gpdraw(0,984.7a,215.7b);
gpdraw(0,1005.0a,215.7b);
gpdraw(0,1025.3a,215.7b);
gpdraw(0,1045.5a,215.7b);
gpdraw(0,1065.8a,215.7b);
gpdraw(0,1086.0a,215.7b);
gpdraw(0,1106.3a,215.7b);
gpdraw(0,1126.5a,215.7b);
gpdraw(0,1067.7a,649.6b);
linetype 1;
put_text( btex $\text{Ошибка метода}$ etex, 1006.3a, 613.0b, 0, 3);
linetype 1;
draw (1024.0a,613.0b)--(1111.4a,613.0b);
draw (154.2a,573.1b)--(174.4a,557.5b)--(194.7a,532.9b)--(214.9a,502.1b)--(235.2a,466.7b)
--(255.4a,427.4b)--(275.7a,385.0b)--(296.0a,339.9b)--(316.2a,292.4b)--(336.5a,242.8b)
--(356.7a,191.2b)--(377.0a,137.8b)--(384.6a,117.1b);
gpdraw(1,154.2a,573.1b);
gpdraw(1,174.4a,557.5b);
gpdraw(1,194.7a,532.9b);
gpdraw(1,214.9a,502.1b);
gpdraw(1,235.2a,466.7b);
gpdraw(1,255.4a,427.4b);
gpdraw(1,275.7a,385.0b);
gpdraw(1,296.0a,339.9b);
gpdraw(1,316.2a,292.4b);
gpdraw(1,336.5a,242.8b);
gpdraw(1,356.7a,191.2b);
gpdraw(1,377.0a,137.8b);
gpdraw(1,1067.7a,613.0b);
linetype -2;
draw (133.9a,684.5b)--(133.9a,117.1b)--(1146.8a,117.1b)--(1146.8a,684.5b)--(133.9a,684.5b);
endfig;
end.
