[w,h] = type1_dft_lowpass(101,0.4*pi);
figure(1);
plot(h);
title("Impulse response of Low Pass Filter with 101 samples");
s = 1001;
H1 = fftshift(fft(h,1001));
figure(2);
subplot(2,1,1);
plot(-pi:2*pi/1000:pi,abs(H1));
title("Magnitude of the Frequency response of Low Pass Filter with more samples");
subplot(2,1,2);
plot(-pi:2*pi/1000:pi,angle(H1));
title("Phase of the Frequency response of Low Pass Filter with more samples");