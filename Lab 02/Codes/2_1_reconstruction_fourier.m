function y = partial(A,T,t)
y=zeros(size(t));
%declaring a row vector of size (1,no. of  values in t)
N=(length(A)-1)/2;
%finding the no. of fourier coefficients from A
for k=-N:N
y=y+A(k+N+1)*exp(1i*k*(2*pi/T)*t);
%calcuating y(t) using ak*e^(jWot)
end
plot(t,real(y));
%plotting the graph of real(y(t)) vs t
title ("Construction of signal from Fourier Coefficients");
xlabel("time")
ylabel("y(t)")
end

