[A1,B1] = ten_2(51,rectwin(51),1001);
figure(1);
subplot(4,1,1);
stem(A1);
title("Low pass filter rectangular - impulse response");
subplot(4,1,2);
stem(fftshift(abs(fft(A1,1001))));
title("Low pass filter rectangular - frequency response");
subplot(4,1,3);
stem(B1);
title("High pass filter rectangular - impulse response");
subplot(4,1,4);
stem(fftshift(abs(fft(B1,1001))));
title("High pass filter rectangular - frequency response");
[A2,B2] = ten_2(51,bartlett(51),1001);
figure(2);
subplot(4,1,1);
stem(A2);
title("Low pass filter bartlett - impulse response");
subplot(4,1,2);
stem(fftshift(abs(fft(A2,1001))));
title("Low pass filter bartlett - frequency response");
subplot(4,1,3);
stem(B2);
title("High pass filter bartlett - impulse response");
subplot(4,1,4);
stem(fftshift(abs(fft(B2,1001))));
title("High pass filter bartlett - frequency response");
[A3,B3] = ten_2(51,hamming(51),1001);
figure(3);
subplot(4,1,1);
stem(A3);
title("Low pass filter hamming - impulse response");
subplot(4,1,2);
stem(fftshift(abs(fft(A3,1001))));
title("Low pass filter hamming - frequency response");
subplot(4,1,3);
stem(B3);
title("High pass filter hamming - impulse response");
subplot(4,1,4);
stem(fftshift(abs(fft(B3,1001))));
title("High pass filter hamming - frequency response");
[A4,B4] = ten_2(51,hann(51),1001);
figure(4);
subplot(4,1,1);
stem(A4);
title("Low pass filter hanning - impulse response");
subplot(4,1,2);
stem(fftshift(abs(fft(A4,1001))));
title("Low pass filter hanning - frequency response");
subplot(4,1,3);
stem(B4);
title("High pass filter hanning - impulse response");
subplot(4,1,4);
stem(fftshift(abs(fft(B4,1001))));
title("High pass filter hanning - frequency response");
[A5,B5] = ten_2(51,blackman(51),1001);
figure(5);
subplot(4,1,1);
stem(A5);
title("Low pass filter blackman - impulse response");
subplot(4,1,2);
stem(fftshift(abs(fft(A5,1001))));
title("Low pass filter blackman - frequency response");
subplot(4,1,3);
stem(B5);
title("High pass filter blackman - impulse response");
subplot(4,1,4);
stem(fftshift(abs(fft(B5,1001))));
title("High pass filter blackman - frequency response");