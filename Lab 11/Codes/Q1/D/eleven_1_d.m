[w,h] = type1_dft_bandpass(101,0.3*pi,0.6*pi);clc
figure(1);
plot(h);
title("Impulse response of Band Pass Filter from 0.3pi to 0.6 pi with 101 samples");
s = 1001;
H1 = fftshift(fft(h,1001));
figure(2);
subplot(2,1,1);
plot(-pi:2*pi/1000:pi,abs(H1));
title("Magnitude of the Frequency response of band Pass Filter with more samples");
subplot(2,1,2);
plot(-pi:2*pi/1000:pi,angle(H1));
title("Phase of the Frequency response of Low Pass Filter with more samples");