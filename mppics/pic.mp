input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{article}
\usepackage{../paper}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(1) 
save u,n;
u:=1.4cm;
n:=7;

z.a=(0,0)*u;
z.b=(4,0)*u;
z.v=(0,.5)*u;

draw ddline(z.a,z.b)(.3,.6);

for i=0 step 1 until n:
drawarrow (i/n)[z.a,z.b]--(i/n)[z.a,z.b]+z.v;
endfor

for i=0 step 1 until n-1:
draw (i/n)[z.a,z.b]+z.v--((i+2)/n)[z.a,z.b];
endfor

for i=0 step 1 until n+1:
dOt (i/n)[z.a,z.b];
endfor

label.bot(btex $\gamma(a)$ etex, z.a);
label.bot(btex $\gamma(b)$ etex, z.b);
label.lrt(btex $\gamma(t_{k+1})$ etex, (-2,0)+((n+1)/n)[z.a,z.b]);
label.top(btex $\vec v_0$ etex, z.a+z.v);
label.top(btex $\vec v_1$ etex, (1/n)[z.a,z.b]+z.v);
label.top(btex $\dots$ etex, (4/n)[z.a,z.b]+z.v);
label.top(btex $\vec v_k$ etex, z.b+z.v);
endfig;


end
