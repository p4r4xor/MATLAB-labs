function [] = ten_3(N,w,len)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
f = zeros(1,N);
k = (N-1)/2;
x = -k:k;
for x = -k:k
    f(x+k+1) = sin(0.2*pi*x)+sin(0.6*pi*x);
end
[h1,h2] = ten_2(N,w,len);
figure(1);
s1 = conv(f,h1);
display(size(s1));
S1 = fft(s1,len);
S1 = fftshift(S1);
subplot(4,1,1)
stem(f);
title("Input signal in time domain");
subplot(4,1,2)
stem(abs(fft(f,len)));
title("Input signal in frequency domain");
subplot(4,1,3)
stem(s1);
title("Low pass filter rectangular - impulse response");
subplot(4,1,4)
stem(abs(S1));
title("Low pass filter rectangular - frequency response");
figure(2);
s2 = conv(f,h2);
S2 = fft(s2,len);
S2 = fftshift(S2);
subplot(4,1,1)
stem(f);
title("Input signal in time domain");
subplot(4,1,2)
stem(abs(fft(f,len)));
title("Input signal in frequency domain");
subplot(4,1,3)
stem(s2);
title("High pass filter rectangular - impulse response");
subplot(4,1,4)
stem(abs(S2));
title("High pass filter rectangular - frequency response");
end

