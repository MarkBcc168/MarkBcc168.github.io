size(4cm,0);
import olympiad;
defaultpen(fontsize(10pt));
pair B = (0,0);
pair C = (55,0);
pair P = intersectionpoints(circle(B,25*sqrt(6)), circle(C,30*sqrt(6)))[1];
pair X = 0.7*B+0.3*P;
pair Y = 0.7*C+0.3*P;
path l = (3*X-2*Y) -- (3*Y-2*X);
pair A = intersectionpoints(l,circumcircle(P,B,C))[0];
pair D = intersectionpoints(l,circumcircle(P,B,C))[1];



fill(P--A--B--C--D--cycle, mediumgray);
pen p = linewidth(0.8);
draw(P--B--C--cycle, p);
draw(B--A--P--D--C, p);
draw(A--D, p);



draw(circumcircle(P,B,C), linetype("2 6"));
pair O = circumcenter(P,B,C);
dot("\(P\)",P,dir(P-O));
dot("\(A\)",A,dir(A-O));
dot("\(B\)",B,dir(B-O));
dot("\(C\)",C,dir(C-O));
dot("\(D\)",D,dir(D-O));