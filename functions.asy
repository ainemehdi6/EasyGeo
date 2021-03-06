//fonction avec derivée
settings.outformat="png";
import graph;usepackage("mathrsfs");
size(500);Label f; f.p=fontsize(6); 
xaxis(Ticks(f, 1.0)); yaxis(Ticks(f, 1.0)); 
real f(real x) { return 

;} 
//derivée
real g(real x) {return 

;}
//limits
real minf,maxf,ming,maxg;
for(real i=0;i>-9;i=i-0.1){if(f(i)<8 && f(i)>-8) maxf=i;if(g(i)<8 && g(i)>-8) maxg=i;}
for(real j=0;j<9;j=j+0.1){if(f(j)<8 && f(j)>-8) minf=j;if(g(j)<8 && g(j)>-8) ming=j;}
label("$f'(x)=

$",(minf+1,f(minf)-1),E,red);
label("$f(x)=

$",(minf+1,f(minf)),E,green);
// les courbes
draw(graph(f,minf,maxf),green+linewidth(1));label("$\mathscr{C}_f$",(maxf-1,f(maxf)-1),green);
draw(graph(g,ming,maxg),red+linewidth(1));label("$\mathscr{C'}_f$",(maxg-1,g(maxg)+1),red);

//fonction non definit
settings.outformat="png";
import graph;
import contour;
usepackage("mathrsfs");
size(500);
transform ec=scale(.8);
xaxis(ec*"$x$", Ticks(ec*Label(), NoZero), Arrow(2mm));
yaxis(ec*"$y$", Ticks(ec*Label(), NoZero), Arrow(2mm));
labelx(ec*"$O$",0,SW);
real F(real x, real y) {return 

}
pair a=(-2.8,-2.9), b=(6.8,2.9);
draw(contour(F,a,b,new real[] {-1}),bp+deepcyan);
label("$\mathscr{C}_f$",(3,1.5),deepcyan);

//Sphere-with-Axis
settings.outformat="png";
import graph3;import three;
size(500);
draw((-2,-2,0)--(2,-2,0)--(2,2,0)--(-2,2,0)--cycle);
draw(arc(1.52Z,0.2,90,60,90,25),ArcArrow3);
xaxis3(Label("$x$"),red,Arrow3);
yaxis3(Label("$y$"),red,Arrow3);
zaxis3(XYZero(extend=true),red,Arrow3);
draw(unitsphere,surfacepen=material(diffusepen=lightgray,
emissivepen=black, specularpen=black));

//sphere-with-no-Axis
settings.outformat="png";
settings.render=8;
import three;
size(500);
draw(unitsphere,
surfacepen=material(diffusepen=lightgray,
emissivepen=black, specularpen=black));

//cube-3D
settings.outformat="png";
import three;
size(250);
currentprojection=perspective(1/3,-1,1/2);

draw((0,0,0)--(a,0,0)--(a,a,0)--(0,a,0)--cycle,red);
draw((0,0,0)--(0,0,a),red);
draw((0,a,0)--(0,a,a),red);
draw((a,a,0)--(a,a,a),red);
draw((a,0,0)--(a,0,a),red);
draw((0,0,a)--(a,0,a)--(a,a,a)--(0,a,a)--cycle,red);
draw((0,0,0)--(a,a,a),blue);
label("$o$",(0,0,0),NW);
label("$x=

$",(a/2,0,0),S);
label("$y=

$",(a,a,a/2),E);
label("$z=

$",(a,a/2,0),SE);
dot("$c$",(a/2,a/2,a/2),N);

//vecteurs
//Parallélogramme3D
settings.outformat="png";
import three ;
size(300);
draw("$\overrightarrow{u}$",(0,0,0)--(2,0,0),green,ArcArrow3);
draw((1,1,0)--(3,1,0),lightblue+dashed,ArcArrow3);
draw((2,0,0)--(3,1,0),lightblue+dashed,ArcArrow3);
draw("$\overrightarrow{v}$",(0,0,0)--(1,1,0),green,ArcArrow3);
draw("$\overrightarrow{w}$",(0,0,0)--(3,1,0),red,ArcArrow3);
dot("$A$",(1,1,0),NW);
dot("$B$",(3,1,0),NE);
dot("$C$",(2,0,0),SE);
dot("$D$",(0,0,0),SW);

//Parallélogramme-2D
settings.outformat="png";
import graph ;
size(650);
draw("$\overrightarrow{u}$",(0,0)--(2,0),green,Arrow);
draw((1,1)--(3,1),lightblue+dashed,Arrow);
draw((2,0)--(3,1),lightblue+dashed,Arrow);
draw("$\overrightarrow{v}$",(0,0)--(1,1),green,Arrow);
draw("$\overrightarrow{w}$",(0,0)--(3,1),red,Arrow);
dot("$A$",(1,1),NW);
dot("$B$",(3,1),NE);
dot("$C$",(2,0),SE);
dot("$D$",(0,0),SW);

//Triangle3D
settings.outformat="png";
import three ;
size(300);
draw("$\overrightarrow{BA}$",(3,1,0)--(0,1,0),lightblue,ArcArrow3);
draw("$\overrightarrow{AC}$",(0,1,0)--(0,0,0),lightblue,ArcArrow3);
draw("$\overrightarrow{BC}$",(3,1,0)--(0,0,0),red,ArcArrow3);
dot("$A$",(0,1,0),NW);
dot("$B$",(3,1,0),NE);
dot("$C$",(0,0,0),SW);

//Triangle-2D
settings.outformat="png";
import graph ;
size(650);
draw("$\overrightarrow{BA}$",(3,1)--(0,1),lightblue,Arrow);
draw("$\overrightarrow{AC}$",(0,1)--(0,0),lightblue,Arrow);
draw("$\overrightarrow{BC}$",(3,1)--(0,0),red,Arrow);
dot("$A$",(0,1),NW);
dot("$B$",(3,1),NE);
dot("$C$",(0,0),SW);

//multiplication-3D
settings.outformat="png";
import three ;
size(500);
int a=3;
label("$\overrightarrow{u}=
3
\times\overrightarrow{v}$",(2,1.5,0));
draw("$\overrightarrow{v}$",(0,1,0)--(1,1,0),blue,ArcArrow3);
draw("$\overrightarrow{u}$",(0,0,0)--(a,0,0),blue,ArcArrow3);
dot("$A$",(0,0,0),NW);
dot("$B$",(a,0,0),NE);
dot("$C$",(0,1,0),SW);
dot("$D$",(1,1,0),SE);
for(int i=1;i<a;++i)
{
    dot((i,0,0),4+purple);
}

//multiplication-2D
settings.outformat="png";
import graph ;import markers;
size(450);
int a=3;
label("$\overrightarrow{u}=
3
\times\overrightarrow{v}$",(a/2,1.5));
draw("$\overrightarrow{v}$",(0,1)--(1,1),blue,Arrow,
StickIntervalMarker(1,2,size=5mm,angle=-45,bp+.8green,dotframe(purple)));
draw("$\overrightarrow{u}$",(0,0)--(a,0),blue,Arrow,
StickIntervalMarker(a,2,size=5mm,angle=-45,bp+.8green,dotframe(purple)));
dot("$A$",(0,0),NW);
dot("$B$",(a,0),NE);
dot("$C$",(0,1),SW);
dot("$D$",(1,1),SE);


//fonction sans derivée
settings.outformat="png";
import graph;usepackage("mathrsfs");
size(500);Label f; f.p=fontsize(6); 
xaxis(Ticks(f, 1.0)); yaxis(Ticks(f, 1.0)); 
real f(real x) { return 
3*x^2-1
;} 
real minf,maxf;
for(real i=0;i>-9;i=i-0.1){if(f(i)<8 && f(i)>-8) maxf=i;}
for(real j=0;j<9;j=j+0.1){if(f(j)<8 && f(j)>-8) minf=j;}
label("$f(x)=
3*x^2-1
$",(minf+1,f(minf)),E,green);
// la courbe
draw(graph(f,minf,maxf),green+linewidth(1));label("$\mathscr{C}_f$",(maxf-1,f(maxf)-1),green);


//fonction avec tangent
settings.outformat="png";
import graph;usepackage("mathrsfs");
size(500);Label f; f.p=fontsize(6); 
xaxis(Ticks(f, 1.0)); yaxis(Ticks(f, 1.0)); 
real f(real x) { return 

;} 
//derivée
real g(real x) {return 

;}
//limits
real minf,maxf,ming,maxg;
for(real i=0;i>-9;i=i-0.1){if(f(i)<8 && f(i)>-8) maxf=i;if(g(i)<2 && g(i)>0) maxg=i;}
for(real j=0;j<9;j=j+0.1){if(f(j)<8 && f(j)>-8) minf=j;if(g(j)<2 && g(j)>2) ming=j;}
label("$f'(x)=

$",(minf+1,f(minf)-1),E,red);
label("$f(x)=

$",(minf+1,f(minf)),E,green);
// les courbes
draw(graph(f,minf,maxf),green+linewidth(1));label("$\mathscr{C}_f$",(maxf-1,f(maxf)-1),green);
draw(graph(g,ming,maxg),red+linewidth(1));label("$\mathscr{C'}_f$",(maxg-1,g(maxg)+1),red);


//fonction 
settings.outformat="png";
import graph;usepackage("mathrsfs");
size(250);
real f(real x) {return 
x*cos(x)-sin(x)
;}
path p=graph(f,-2*pi-.5,2*pi+.5,operator ..);
// les axes
transform ec=scale(.8); 
xaxis(ec*"$x$", Ticks(ec*Label(), NoZero), Arrow(2mm));
yaxis(ec*"$y$", Ticks(ec*Label(), NoZero), Arrow(2mm));
//tangente
real g(real x) {return 

;}
path p=graph(f,-2*pi-.5,2*pi+.5,operator ..);label("$y=

$",(2,-5),E);
label("$y=
x\cos(x)-\sin(x)
$",(2,-5),E);
label("$\mathscr{C}_f$",(3,2),red);
// la courbe
draw(p,red);