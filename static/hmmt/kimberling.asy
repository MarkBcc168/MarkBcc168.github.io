import olympiad;
import geometry;
size(7.5cm);
pair A = (0.5,3.2);
pair B = (0,0);
pair C = (4,0);
pair O = circumcenter(triangle(A,B,C));
pair H = orthocentercenter(triangle(A,B,C));
pair L = symmedian(triangle(A,B,C));
pair Ge = gergonne(triangle(A,B,C));
pair I = incenter(triangle(A,B,C));
pair Na = A+B+C - 2I;
pair K = extension(A, circumcenter(B,O,C), B, circumcenter(A,O,C)); //Kosnita



//dot(A);dot(B);dot(C);
dot("\(P_6\)",Ge,dir(-90));
dot("\(P_2\)",O,dir(90));
dot("\(P_7\)",H,dir(90));
dot("\(P_3\)",L,dir(135));
dot("\(P_4\)",I,dir(-45));
dot("\(P_5\)",Na,dir(-90));
dot("\(P_1\)",K,dir(90));