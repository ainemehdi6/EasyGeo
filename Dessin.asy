//cube-3D
settings.outformat="png";
import three;
size(250);
currentprojection=perspective(1/3,-1,1/2);
real a=2;
draw((0,0,0)--(a,0,0)--(a,a,0)--(0,a,0)--cycle,red);
draw((0,0,0)--(0,0,a),red);
draw((0,a,0)--(0,a,a),red);
draw((a,a,0)--(a,a,a),red);
draw((a,0,0)--(a,0,a),red);
draw((0,0,a)--(a,0,a)--(a,a,a)--(0,a,a)--cycle,red);
draw((0,0,0)--(a,a,a),blue);
label("$o$",(0,0,0),NW);
label("$x=
2$",(a/2,0,0),S);
label("$y=
2$",(a,a,a/2),E);
label("$z=
2$",(a,a/2,0),SE);
label("$c$",(a/2,a/2,a/2),N);

