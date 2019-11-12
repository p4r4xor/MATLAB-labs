function X = radix2fft(x)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%calculating the dft using the raix-2 fft
N = length(x);
%N is the length of input signal
X = zeros(1,N);
if ~isequal(unique(factor(N)),2)
    error('N is not a power of 2!');
end
if N==2
    X = [x(1)+x(2);x(1)-x(2)];
    %when N==2 the base case of fft
else
    x_even = x(1:2:end);
    % separating the even terms from the signal 
    x_odd  = x(2:2:end);
     % separating the odd terms from the signal 
    X_even = radix2fft(x_even);
    %finding fft of even terms
    X_odd = radix2fft(x_odd);
     %finding fft of odd terms
   for p = 1:N/2
   X(p)= X_even(p)+exp(-1i*(p-1)*2*pi/N)*X_odd(p);
   X(p+N/2)= X_even(p)-exp(-1i*(p-1)*2*pi/N)*X_odd(p);
     %combining the even and odd terms of the fft
   end
end
end
