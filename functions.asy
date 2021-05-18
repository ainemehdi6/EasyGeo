//fonction
settings.outformat="png";
import graph;usepackage("mathrsfs");
unitsize(6mm);
real f(real x) {return 
x*cos(x)-sin(x)
;}
path p=graph(f,-2*pi-.5,2*pi+.5,operator ..);
// les axes
transform ec=scale(.8); 
xaxis(ec*"$x$", Ticks(ec*Label(), NoZero), Arrow(2mm));
yaxis(ec*"$y$", Ticks(ec*Label(), NoZero), Arrow(2mm));
//Segment
//pair pA=(-pi,pi);dot(pA,heavygreen);
//draw(pA-(.8,0)--pA+(.8,0),
//blue,Arrows(SimpleHead));
//draw((pA.x,0)--pA,dashed+heavygreen);
//labels
//label("A",pA,N);
label("$y=
x\cos(x)-\sin(x)
$",(2,-5),E);
label("$\mathscr{C}_f$",(3,2),red);
// la courbe
draw(p,red);

//fonction non definit
settings.outformat="png";
import graph;
import contour;
usepackage("mathrsfs");
unitsize(x=1cm,y=1cm);
transform ec=scale(.8);
xaxis(ec*"$x$", Ticks(ec*Label(), NoZero), Arrow(2mm));
yaxis(ec*"$y$", Ticks(ec*Label(), NoZero), Arrow(2mm));
labelx(ec*"$O$",0,SW);
real F(real x, real y) {return 

}
pair a=(-2.8,-2.9), b=(6.8,2.9);
draw(contour(F,a,b,new real[] {-1}),bp+deepcyan);
label("$\mathscr{C}_f$",(3,1.5),deepcyan);

//Sphere-2D
settings.outformat="png";
import graph;
size(7cm);
pair A=(0,0);
path c=unitcircle;
path c1=slant(1.5)*c;
draw("$\mathcal{C}$",c,NW);
draw("$\mathcal{C’}$",c1,SE,bp+purple);
dot("$A$",A,SW);


//sphere2-3D
settings.outformat="png";
settings.render=8;
import three;
size(2.5cm, 0);
draw(unitsphere,
surfacepen=material(diffusepen=red,
emissivepen=black, specularpen=black));



//cube-3D
settings.outformat="png";
settings.render=8;
import three;
size(2.5cm, 0);
draw(unitcube,
surfacepen=material(diffusepen=red,
emissivepen=black, specularpen=black));


//cube-2D
settings.outformat="png";
import three;
unitsize(1cm);
size(200);
currentprojection=perspective(1/3,-1,1/2);
real a=1;
draw((0,0,0)--(a,0,0)--(a,a,0)--(0,a,0)--cycle,red);
draw((0,0,0)--(0,0,a),red);
draw((0,a,0)--(0,a,a),red);
draw((a,a,0)--(a,a,a),red);
draw((a,0,0)--(a,0,a),red);
draw((0,0,a)--(a,0,a)--(a,a,a)--(0,a,a)--cycle,red);
draw((0,0,0)--(a,a,a),blue);
label("$o$",(0,0,0),NW);
label("$x=
1
$",(a/2,0,0),S);
label("$y=
1
$",(a,a,a/2),E);
label("$z=
1
$",(a,a/2,0),SE);
label("$c$",(a/2,a/2,a/2),N);

