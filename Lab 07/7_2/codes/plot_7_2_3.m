w = -3*pi:0.01:3*pi;
q = pi/3;% fixing values of theta for which you want the plot
for r = 0:0.19:1% varying the values of r
[h,w]=freqz([0 1 0],[1 -2*r*cos(q) r*r],w);
%calling function freqz for different values of coefficients of Numerator
%and denominator
plot(w,20*log10(abs(h)));%plotting the function h vs w for decibel magnitude of h
title(["Plotting frequency response of filter" r ""]);
xlabel("frequency w");
ylabel("db Magnitude (H(z))");
pause(2);
end