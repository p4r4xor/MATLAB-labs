f = zeros(1,101);
k = (101-1)/2;
x = -k:k;
for x = -k:k
    f(x+k+1) = sin(0.2*pi*x)+sin(0.6*pi*x);
end
[w,h1] = type1_dft_lowpass(101,0.4*pi);
[h2] = transitionband(101,0.4*pi,[0.8 0.4]);
[w,h3] = type1_dft_bandpass(101,0.4*pi,0.8*pi);
figure(1);
s1 = conv(f,h1);
S1 = fft(s1,1001);
S1 = fftshift(S1);
subplot(4,1,1)
stem(f);
title("Input signal in time domain");
subplot(4,1,2)
stem(abs(fft(f,1001)));
title("Input signal in frequency domain");
subplot(4,1,3)
stem(s1);
title("Low pass filter - impulse response");
subplot(4,1,4)
stem(abs(S1));
title("Low pass filter - frequency response");
figure(2);
s2 = conv(f,h2);
S2 = fft(s2,1001);
S2 = fftshift(S2);
subplot(4,1,1)
stem(f);
title("Input signal in time domain");
subplot(4,1,2)
stem(abs(fft(f,1001)));
title("Input signal in frequency domain");
subplot(4,1,3)
stem(s2);
title("Low pass filter with transition values - impulse response");
subplot(4,1,4)
stem(abs(S2));
title("Low pass filter with transition values - frequency response");
figure(3);
s3 = conv(f,h3);
S3 = fft(s3,1001);
S3 = fftshift(S3);
subplot(4,1,1)
stem(f);
title("Input signal in time domain");
subplot(4,1,2)
stem(abs(fft(f,1001)));
title("Input signal in frequency domain");
subplot(4,1,3)
stem(s3);
title("Band pass filter - impulse response");
subplot(4,1,4)
stem(abs(S3));
title("Band pass filter - frequency response");

