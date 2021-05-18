
//cube-2D
settings.outformat="png";
import three;
unitsize(1cm);
size(200);
currentprojection=perspective(1/3,-1,1/2);
real a=5;
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
5$",(a/2,0,0),S);
label("$y=
5$",(a,a,a/2),E);
label("$z=
5$",(a,a/2,0),SE);
label("$c$",(a/2,a/2,a/2),N);

