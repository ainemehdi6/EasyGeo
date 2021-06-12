//fonction avec derivée
settings.outformat="png";
import graph;usepackage("mathrsfs");
size(500);Label f; f.p=fontsize(6); 
xaxis(Ticks(f, 1.0)); yaxis(Ticks(f, 1.0)); 
real f(real x) { return 
2*x^2+3*x+4
;} 
//derivée
real g(real x) {return 
4*x + 3;}
//limits
real minf,maxf,ming,maxg;
for(real i=0;i>-9;i=i-0.1){if(f(i)<8 && f(i)>-8) maxf=i;if(g(i)<8 && g(i)>-8) maxg=i;}
for(real j=0;j<9;j=j+0.1){if(f(j)<8 && f(j)>-8) minf=j;if(g(j)<8 && g(j)>-8) ming=j;}
label("$f'(x)=
4*x + 3$",(minf+1,f(minf)-1),E,red);
label("$f(x)=
2*x^2+3*x+4
$",(minf+1,f(minf)),E,green);
// les courbes
draw(graph(f,minf,maxf),green+linewidth(1));label("$\mathscr{C}_f$",(maxf-1,f(maxf)-1),green);
draw(graph(g,ming,maxg),red+linewidth(1));label("$\mathscr{C'}_f$",(maxg-1,g(maxg)+1),red);
