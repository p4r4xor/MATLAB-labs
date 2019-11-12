w = -3*pi:0.01:3*pi;
[h,w] = freqz(N,D,w);
%calling function freqz for different values of coefficients of Numerator
%and denominator
plot(w,20*log10(abs(h)));
%plotting the function h vs w for decibel magnitude of h
title("Plotting frequency response of filter");
xlabel("frequency w");
ylabel("db Magnitude(H(z))");