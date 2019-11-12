function [conv_circ,conv_lin] = dftconv(h,x,N)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
lx =length(x);%length of the input signal x
lh = length(h);%length of the input signal h
w = zeros(N,1);
z = zeros(N,1);
if N<max([lx lh])
    error('N must be atleast the length  of the longer signal');
end
w = [x;zeros(N-lx,1)];%appending N-lx zeroes to the signal x
z = [h;zeros(N-lh,1)];%appending N-lh zeroes to the signal h
X = fft(w);%fft of x
Y = fft(z);%fft of h
conv_circ = ifft(X.*Y);%inverse fft of multiplication of fft
w = [x;zeros(lh-1,1)]; %appending lh-1 zeroes to signal x
z = [h;zeros(lx-1,1)];%appending lx-1 zeroes to the signal h
X = fft(w);%fft of x
Y = fft(z);%fft of h
conv_lin = ifft(X.*Y);%inverse fft of multiplication of fft
conv_lin1=conv(x,h);%computing the linear convolution using inbuit function
conv_circ1=cconv(x,h,N);%computing the circular convolution using inbuit function
subplot(4,1,1)
stem(conv_circ);
title("Circular convolution of the signals x and h");
xlabel("n");
ylabel("Circular convolution magnitude");
subplot(4,1,2)
stem(conv_circ1);
title("Circular convolution using inbuilt function of the signals x and h");
xlabel("n");
ylabel("Circular convolution magnitude");
subplot(4,1,3)
stem(conv_lin);
title("Linear convolution of the signals x and h");
xlabel("n");
ylabel("Linear convolution magnitude");
subplot(4,1,4)
stem(conv_lin1);
title("Linear convolution using inbuilt function of the signals x and h");
xlabel("n");
ylabel("Linear convolution magnitude");
%Time complexity for computing the fft is N*logn
%Time complexity for computing the direct dft is N*N
end


