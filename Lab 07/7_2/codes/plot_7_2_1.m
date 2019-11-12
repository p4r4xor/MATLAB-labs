r = 0.95;
q = pi/3;
zplane([0 1 0],[1 -2*r*cos(q) r*r]);
%plotting function Z-plane for different values of coefficients of Numerator
%and denominator varying on the basis of r and theta
title("Z-domain plot");
xlabel("Real part(z)");
ylabel("Imaginary part(z)");
