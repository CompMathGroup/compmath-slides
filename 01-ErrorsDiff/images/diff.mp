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
put_text( btex -14 etex, 116.2a, 117.1b, 0, 3);
draw (133.9a,198.2b)--(150.5a,198.2b);
draw (1146.8a,198.2b)--(1130.2a,198.2b);
put_text( btex -12 etex, 116.2a, 198.2b, 0, 3);
draw (133.9a,279.2b)--(150.5a,279.2b);
draw (1146.8a,279.2b)--(1130.2a,279.2b);
put_text( btex -10 etex, 116.2a, 279.2b, 0, 3);
draw (133.9a,360.3b)--(150.5a,360.3b);
draw (1146.8a,360.3b)--(1130.2a,360.3b);
put_text( btex -8 etex, 116.2a, 360.3b, 0, 3);
draw (133.9a,441.3b)--(150.5a,441.3b);
draw (1146.8a,441.3b)--(1130.2a,441.3b);
put_text( btex -6 etex, 116.2a, 441.3b, 0, 3);
draw (133.9a,522.4b)--(150.5a,522.4b);
draw (1146.8a,522.4b)--(1130.2a,522.4b);
put_text( btex -4 etex, 116.2a, 522.4b, 0, 3);
draw (133.9a,603.4b)--(150.5a,603.4b);
draw (1146.8a,603.4b)--(1130.2a,603.4b);
put_text( btex -2 etex, 116.2a, 603.4b, 0, 3);
draw (133.9a,684.5b)--(150.5a,684.5b);
draw (1146.8a,684.5b)--(1130.2a,684.5b);
put_text( btex  0 etex, 116.2a, 684.5b, 0, 3);
draw (133.9a,117.1b)--(133.9a,133.7b);
draw (133.9a,684.5b)--(133.9a,667.9b);
put_text( btex -25 etex, 133.9a, 80.5b, 0, 2);
draw (336.5a,117.1b)--(336.5a,133.7b);
draw (336.5a,684.5b)--(336.5a,667.9b);
put_text( btex -20 etex, 336.5a, 80.5b, 0, 2);
draw (539.1a,117.1b)--(539.1a,133.7b);
draw (539.1a,684.5b)--(539.1a,667.9b);
put_text( btex -15 etex, 539.1a, 80.5b, 0, 2);
draw (741.6a,117.1b)--(741.6a,133.7b);
draw (741.6a,684.5b)--(741.6a,667.9b);
put_text( btex -10 etex, 741.6a, 80.5b, 0, 2);
draw (944.2a,117.1b)--(944.2a,133.7b);
draw (944.2a,684.5b)--(944.2a,667.9b);
put_text( btex -5 etex, 944.2a, 80.5b, 0, 2);
draw (1146.8a,117.1b)--(1146.8a,133.7b);
draw (1146.8a,684.5b)--(1146.8a,667.9b);
put_text( btex  0 etex, 1146.8a, 80.5b, 0, 2);
draw (133.9a,684.5b)--(133.9a,117.1b)--(1146.8a,117.1b)--(1146.8a,684.5b)--(133.9a,684.5b);
put_text( btex $\lg(\text{ошибка})$ etex, 27.1a, 400.8b, -270, 2);
linetype -2;
put_text( btex $\lg(\text{h})$ etex, 640.3a, 25.6b, 0, 2);
linetype -2;
linetype 0;
put_text( btex $\text{Односторонняя разность}$ etex, 700.3a, 188.6b, 0, 3);
linetype 0;
draw (718.0a,188.6b)--(805.4a,188.6b);
draw (1146.8a,671.3b)--(1134.6a,658.5b)--(1122.4a,645.7b)--(1110.2a,633.1b)--(1098.0a,620.7b)
--(1085.8a,608.4b)--(1073.6a,596.1b)--(1061.4a,583.9b)--(1049.2a,571.7b)--(1037.0a,559.5b)
--(1024.8a,547.3b)--(1012.6a,535.1b)--(1000.4a,522.9b)--(988.2a,510.7b)--(976.0a,498.5b)
--(963.9a,486.3b)--(951.7a,474.1b)--(939.5a,461.9b)--(927.3a,449.7b)--(915.1a,437.5b)
--(902.9a,425.3b)--(890.7a,413.1b)--(878.5a,400.9b)--(866.3a,388.5b)--(854.1a,376.8b)
--(841.9a,361.3b)--(829.7a,353.8b)--(817.5a,309.1b)--(805.3a,309.1b)--(793.1a,379.2b)
--(780.9a,379.2b)--(768.7a,379.2b)--(756.5a,379.2b)--(744.3a,379.2b)--(732.1a,379.2b)
--(719.9a,379.2b)--(707.7a,464.8b)--(695.5a,465.0b)--(683.3a,484.2b)--(671.1a,493.2b)
--(658.9a,493.2b)--(646.7a,493.2b)--(634.5a,536.7b)--(622.3a,539.4b)--(610.2a,557.0b)
--(598.0a,566.7b)--(585.8a,566.7b)--(573.6a,596.1b)--(561.4a,601.7b)--(549.2a,617.5b)
--(537.0a,628.0b)--(524.8a,628.0b)--(512.6a,628.0b)--(500.4a,673.7b)--(488.2a,673.7b)
--(476.0a,673.7b)--(463.8a,673.7b)--(451.6a,673.7b)--(439.4a,673.7b)--(427.2a,673.7b)
--(415.0a,673.7b)--(402.8a,673.7b)--(390.6a,673.7b)--(378.4a,673.7b)--(366.2a,673.7b)
--(354.0a,673.7b)--(341.8a,673.7b)--(329.6a,673.7b)--(317.4a,673.7b)--(305.2a,673.7b)
--(293.0a,673.7b)--(280.8a,673.7b)--(268.6a,673.7b)--(256.5a,673.7b)--(244.3a,673.7b)
--(232.1a,673.7b)--(219.9a,673.7b)--(207.7a,673.7b)--(195.5a,673.7b)--(183.3a,673.7b);
gpdraw(0,1146.8a,671.3b);
gpdraw(0,1134.6a,658.5b);
gpdraw(0,1122.4a,645.7b);
gpdraw(0,1110.2a,633.1b);
gpdraw(0,1098.0a,620.7b);
gpdraw(0,1085.8a,608.4b);
gpdraw(0,1073.6a,596.1b);
gpdraw(0,1061.4a,583.9b);
gpdraw(0,1049.2a,571.7b);
gpdraw(0,1037.0a,559.5b);
gpdraw(0,1024.8a,547.3b);
gpdraw(0,1012.6a,535.1b);
gpdraw(0,1000.4a,522.9b);
gpdraw(0,988.2a,510.7b);
gpdraw(0,976.0a,498.5b);
gpdraw(0,963.9a,486.3b);
gpdraw(0,951.7a,474.1b);
gpdraw(0,939.5a,461.9b);
gpdraw(0,927.3a,449.7b);
gpdraw(0,915.1a,437.5b);
gpdraw(0,902.9a,425.3b);
gpdraw(0,890.7a,413.1b);
gpdraw(0,878.5a,400.9b);
gpdraw(0,866.3a,388.5b);
gpdraw(0,854.1a,376.8b);
gpdraw(0,841.9a,361.3b);
gpdraw(0,829.7a,353.8b);
gpdraw(0,817.5a,309.1b);
gpdraw(0,805.3a,309.1b);
gpdraw(0,793.1a,379.2b);
gpdraw(0,780.9a,379.2b);
gpdraw(0,768.7a,379.2b);
gpdraw(0,756.5a,379.2b);
gpdraw(0,744.3a,379.2b);
gpdraw(0,732.1a,379.2b);
gpdraw(0,719.9a,379.2b);
gpdraw(0,707.7a,464.8b);
gpdraw(0,695.5a,465.0b);
gpdraw(0,683.3a,484.2b);
gpdraw(0,671.1a,493.2b);
gpdraw(0,658.9a,493.2b);
gpdraw(0,646.7a,493.2b);
gpdraw(0,634.5a,536.7b);
gpdraw(0,622.3a,539.4b);
gpdraw(0,610.2a,557.0b);
gpdraw(0,598.0a,566.7b);
gpdraw(0,585.8a,566.7b);
gpdraw(0,573.6a,596.1b);
gpdraw(0,561.4a,601.7b);
gpdraw(0,549.2a,617.5b);
gpdraw(0,537.0a,628.0b);
gpdraw(0,524.8a,628.0b);
gpdraw(0,512.6a,628.0b);
gpdraw(0,500.4a,673.7b);
gpdraw(0,488.2a,673.7b);
gpdraw(0,476.0a,673.7b);
gpdraw(0,463.8a,673.7b);
gpdraw(0,451.6a,673.7b);
gpdraw(0,439.4a,673.7b);
gpdraw(0,427.2a,673.7b);
gpdraw(0,415.0a,673.7b);
gpdraw(0,402.8a,673.7b);
gpdraw(0,390.6a,673.7b);
gpdraw(0,378.4a,673.7b);
gpdraw(0,366.2a,673.7b);
gpdraw(0,354.0a,673.7b);
gpdraw(0,341.8a,673.7b);
gpdraw(0,329.6a,673.7b);
gpdraw(0,317.4a,673.7b);
gpdraw(0,305.2a,673.7b);
gpdraw(0,293.0a,673.7b);
gpdraw(0,280.8a,673.7b);
gpdraw(0,268.6a,673.7b);
gpdraw(0,256.5a,673.7b);
gpdraw(0,244.3a,673.7b);
gpdraw(0,232.1a,673.7b);
gpdraw(0,219.9a,673.7b);
gpdraw(0,207.7a,673.7b);
gpdraw(0,195.5a,673.7b);
gpdraw(0,183.3a,673.7b);
gpdraw(0,761.7a,188.6b);
linetype 1;
put_text( btex $\text{Центральная разность}$ etex, 700.3a, 152.0b, 0, 3);
linetype 1;
draw (718.0a,152.0b)--(805.4a,152.0b);
draw (1146.8a,641.2b)--(1134.6a,617.5b)--(1122.4a,593.3b)--(1110.2a,568.9b)--(1098.0a,544.5b)
--(1085.8a,520.1b)--(1073.6a,495.7b)--(1061.4a,471.3b)--(1049.2a,446.9b)--(1037.0a,422.5b)
--(1024.8a,398.1b)--(1012.6a,373.7b)--(1000.4a,349.3b)--(988.2a,324.9b)--(976.0a,300.5b)
--(963.9a,276.1b)--(951.7a,252.6b)--(939.5a,168.6b)--(927.3a,232.6b)--(915.1a,233.5b)
--(902.9a,252.3b)--(890.7a,261.5b)--(878.5a,286.7b)--(866.3a,275.3b)--(854.1a,303.0b)
--(841.9a,309.1b)--(829.7a,309.1b)--(817.5a,309.1b)--(805.3a,309.1b)--(793.1a,379.2b)
--(780.9a,379.2b)--(768.7a,379.2b)--(756.5a,379.2b)--(744.3a,379.2b)--(732.1a,379.2b)
--(719.9a,379.2b)--(707.7a,379.2b)--(695.5a,465.0b)--(683.3a,484.2b)--(671.1a,493.2b)
--(658.9a,493.2b)--(646.7a,493.2b)--(634.5a,536.7b)--(622.3a,539.4b)--(610.2a,557.0b)
--(598.0a,566.7b)--(585.8a,566.7b)--(573.6a,596.1b)--(561.4a,601.7b)--(549.2a,617.5b)
--(537.0a,628.0b)--(524.8a,628.0b)--(512.6a,628.0b)--(500.4a,628.0b)--(488.2a,673.7b)
--(476.0a,673.7b)--(463.8a,673.7b)--(451.6a,673.7b)--(439.4a,673.7b)--(427.2a,673.7b)
--(415.0a,673.7b)--(402.8a,673.7b)--(390.6a,673.7b)--(378.4a,673.7b)--(366.2a,673.7b)
--(354.0a,673.7b)--(341.8a,673.7b)--(329.6a,673.7b)--(317.4a,673.7b)--(305.2a,673.7b)
--(293.0a,673.7b)--(280.8a,673.7b)--(268.6a,673.7b)--(256.5a,673.7b)--(244.3a,673.7b)
--(232.1a,673.7b)--(219.9a,673.7b)--(207.7a,673.7b)--(195.5a,673.7b)--(183.3a,673.7b);
gpdraw(1,1146.8a,641.2b);
gpdraw(1,1134.6a,617.5b);
gpdraw(1,1122.4a,593.3b);
gpdraw(1,1110.2a,568.9b);
gpdraw(1,1098.0a,544.5b);
gpdraw(1,1085.8a,520.1b);
gpdraw(1,1073.6a,495.7b);
gpdraw(1,1061.4a,471.3b);
gpdraw(1,1049.2a,446.9b);
gpdraw(1,1037.0a,422.5b);
gpdraw(1,1024.8a,398.1b);
gpdraw(1,1012.6a,373.7b);
gpdraw(1,1000.4a,349.3b);
gpdraw(1,988.2a,324.9b);
gpdraw(1,976.0a,300.5b);
gpdraw(1,963.9a,276.1b);
gpdraw(1,951.7a,252.6b);
gpdraw(1,939.5a,168.6b);
gpdraw(1,927.3a,232.6b);
gpdraw(1,915.1a,233.5b);
gpdraw(1,902.9a,252.3b);
gpdraw(1,890.7a,261.5b);
gpdraw(1,878.5a,286.7b);
gpdraw(1,866.3a,275.3b);
gpdraw(1,854.1a,303.0b);
gpdraw(1,841.9a,309.1b);
gpdraw(1,829.7a,309.1b);
gpdraw(1,817.5a,309.1b);
gpdraw(1,805.3a,309.1b);
gpdraw(1,793.1a,379.2b);
gpdraw(1,780.9a,379.2b);
gpdraw(1,768.7a,379.2b);
gpdraw(1,756.5a,379.2b);
gpdraw(1,744.3a,379.2b);
gpdraw(1,732.1a,379.2b);
gpdraw(1,719.9a,379.2b);
gpdraw(1,707.7a,379.2b);
gpdraw(1,695.5a,465.0b);
gpdraw(1,683.3a,484.2b);
gpdraw(1,671.1a,493.2b);
gpdraw(1,658.9a,493.2b);
gpdraw(1,646.7a,493.2b);
gpdraw(1,634.5a,536.7b);
gpdraw(1,622.3a,539.4b);
gpdraw(1,610.2a,557.0b);
gpdraw(1,598.0a,566.7b);
gpdraw(1,585.8a,566.7b);
gpdraw(1,573.6a,596.1b);
gpdraw(1,561.4a,601.7b);
gpdraw(1,549.2a,617.5b);
gpdraw(1,537.0a,628.0b);
gpdraw(1,524.8a,628.0b);
gpdraw(1,512.6a,628.0b);
gpdraw(1,500.4a,628.0b);
gpdraw(1,488.2a,673.7b);
gpdraw(1,476.0a,673.7b);
gpdraw(1,463.8a,673.7b);
gpdraw(1,451.6a,673.7b);
gpdraw(1,439.4a,673.7b);
gpdraw(1,427.2a,673.7b);
gpdraw(1,415.0a,673.7b);
gpdraw(1,402.8a,673.7b);
gpdraw(1,390.6a,673.7b);
gpdraw(1,378.4a,673.7b);
gpdraw(1,366.2a,673.7b);
gpdraw(1,354.0a,673.7b);
gpdraw(1,341.8a,673.7b);
gpdraw(1,329.6a,673.7b);
gpdraw(1,317.4a,673.7b);
gpdraw(1,305.2a,673.7b);
gpdraw(1,293.0a,673.7b);
gpdraw(1,280.8a,673.7b);
gpdraw(1,268.6a,673.7b);
gpdraw(1,256.5a,673.7b);
gpdraw(1,244.3a,673.7b);
gpdraw(1,232.1a,673.7b);
gpdraw(1,219.9a,673.7b);
gpdraw(1,207.7a,673.7b);
gpdraw(1,195.5a,673.7b);
gpdraw(1,183.3a,673.7b);
gpdraw(1,761.7a,152.0b);
linetype -2;
draw (133.9a,684.5b)--(133.9a,117.1b)--(1146.8a,117.1b)--(1146.8a,684.5b)--(133.9a,684.5b);
endfig;
end.
