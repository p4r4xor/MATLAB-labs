function X = directdft(x)
%calculating the discrete fourier transform of a function in O(N^2)
N = length(x);
%length of the input signal 
F = zeros(N,N);
%N*N matrix
c = 0:N-1;
p = 0:N-1;
F = c'*p;
w = -1i*2*pi/N;
F = w.*F;
F = exp(F);
%calculating the discrete fourier transform matrix for N legnth input
%signal
X=F*x;
%calculating the dft of the input signal using the fourier transform matrix
end