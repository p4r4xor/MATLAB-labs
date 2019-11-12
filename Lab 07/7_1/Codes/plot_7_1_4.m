[h,t] = impz(N,D);
%calling function impz for different values of coefficients of Numerator
%and denominator
stem(t,h);
% plotting the stem plot of h vs t
title("Plotting impulse response of filter");
xlabel("time(t)");
ylabel("Magnitude(h(n))");