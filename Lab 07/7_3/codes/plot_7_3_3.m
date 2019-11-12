[h,t] = impz([1 -5 6],[1 -2.5 1]);
%calling function impz for values of coefficients of Numerator
%and denominator of a frequency response
stem(t,h);% plotting the stem plot of h vs t
title("Plotting impulse response of filter");
xlabel("time(t)");
ylabel("Magnitude(h(n))");