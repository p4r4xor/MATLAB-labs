w = -3*pi:0.01:3*pi;
r = 0.95 % fixing values of r for which you want the plot
for q = 0:pi/6:pi % varying the values of theta
[h,w]=freqz([0 1 0],[1 -2*r*cos(q) r*r],w);
%calling function freqz for different values of coefficients of Numerator
%and denominator
plot(w,20*log10(abs(h)));%plotting the function h vs w for decibel magnitude of h
title(["Plotting frequency response of filter" q ""]);
xlabel("frequency w");
ylabel("db Magnitude(H(z))");
pause(2);
end