// Square on the hypotenuse -- drawn as a "box on an inclined plane"
size(8cm);
defaultpen(fontsize(10pt) + linewidth(0.7));
dotfactor = 4;

real s = sqrt(13);
pair d = (3,-2)/s;             // unit vector down the incline (A -> C)
pair n = (2, 3)/s;             // outward unit normal (away from triangle)

pair B = (0,0);
pair A = (0,7);
pair C = (21/2, 0);
pair Z = A + s*d;              // (3,5), on AC
pair X = A + s*n;              // (2,10)
pair Y = X + s*d;              // (5,8)

// --- hatched square, like a crate resting on a ramp ---
void hatchbox(pair O, real s, real gap = 0.32) {
  path sq = O -- O + s*d -- O + s*d + s*n -- O + s*n -- cycle;
  picture h;
  pair u = unit(d + n);        // stripes run along the box's diagonal
  pair v = unit(n - d);
  for (real t = -s*1.5; t <= s*1.5; t += gap)
    draw(h, O + s/2*(d+n) + t*v - 2s*u -- O + s/2*(d+n) + t*v + 2s*u,
         gray(0.55) + linewidth(0.35));
  clip(h, sq);
  add(h);
  draw(sq, linewidth(0.8));
}
hatchbox(A, s);

// --- the triangle (the "wedge") ---
draw(A -- B -- C -- cycle, linewidth(0.9));
real ra = 0.35;
draw((ra,0) -- (ra,ra) -- (0,ra), linewidth(0.5));

// --- distances from X and Y to BC (dotted, ending at the indicators) ---
real ay = 11.6, ax = 12.9;
draw(Y -- (ay, Y.y), dotted + linewidth(0.9));
draw(X -- (ax, X.y), dotted + linewidth(0.9));
draw(C -- (ax, 0), dotted + linewidth(0.9));
draw((ay, 0) -- (ay, Y.y), linewidth(0.6), Arrows(TeXHead));
draw((ax, 0) -- (ax, X.y), linewidth(0.6), Arrows(TeXHead));
label("$8$", (ay, Y.y/2), E);
label("$10$", (ax, X.y/2), E);

// --- given / unknown ---
label("$13$", A + s/2*(d+n), Fill(white));
label("$?$", (B + C)/2, 1.6*S);

// --- vertices ---
dot("$A$", A, W);
dot("$B$", B, dir(-90));
dot("$C$", C, dir(-90));
dot("$X$", X, N);
dot("$Y$", Y, 1.3*dir(55));
dot("$Z$", Z, dir(-120));