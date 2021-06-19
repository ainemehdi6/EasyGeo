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

