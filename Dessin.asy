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

