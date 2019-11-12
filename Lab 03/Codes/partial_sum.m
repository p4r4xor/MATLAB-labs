    function [N,A,x] = partial_sum(A)
T = 2*pi;
%time period 2pi
t = -3*2*pi:0.001:3*2*pi;
x=zeros(size(t));
%declaring a row vector of size (1,no. of  values in t)
N=(length(A)-1)/2;
%finding the no. of fourier coefficients from A
for k=-N:N
x=x+A(k+N+1)*exp(1i*k*(2*pi/T)*t);
x= real(x);
%calcuating y(t) using ak*e^(jWot)
end
end


