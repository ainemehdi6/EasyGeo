//fonction sans derivée
settings.outformat="png";
import graph;usepackage("mathrsfs");
size(500);Label f; f.p=fontsize(6); 
xaxis(Ticks(f, 1.0)); yaxis(Ticks(f, 1.0)); 
real f(real x) { return 
exp(x+1);} 
real minf,maxf;
for(real i=0;i>-9;i=i-0.1){if(f(i)<8 && f(i)>-8) maxf=i;}
for(real j=0;j<9;j=j+0.1){if(f(j)<8 && f(j)>-8) minf=j;}
label("$f(x)=
exp(x+1)$",(minf+1,f(minf)),E,green);
// la courbe
draw(graph(f,minf,maxf),green+linewidth(1));label("$\mathscr{C}_f$",(maxf-1,f(maxf)-1),green);

