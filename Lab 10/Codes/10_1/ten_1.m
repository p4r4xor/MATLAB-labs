function [] = ten_1(N)
w1 = rectwin(N);  
W1 = fft(w1,1001);
W1 = fftshift(W1);
w2 = hamming(N);
W2 = fft(w2,1001);
W2 = fftshift(W2);
w3 = blackman(N);  
W3 = fft(w3,1001);
W3 = fftshift(W3);
w4 = bartlett(N);
W4 = fft(w4,1001);
W4 = fftshift(W4);
w5 = hann(N);  
W5 = fft(w5,1001);
W5 = fftshift(W5);
figure(1);
subplot(2,1,1)
plot(1:N,w1);
title("rectangular window in time domain");
subplot(2,1,2)
plot(20*log10(abs(W1)));
title("rectangular window in frequency domain")
figure(2);
subplot(2,1,1)
plot(1:N,w2);
title("hamming window in time domain");
subplot(2,1,2)
plot(20*log10(abs(W2)));
title("hamming window in frequency domain");
figure(3);
subplot(2,1,1)
plot(1:N,w3);
title("blackman window in time domain");
subplot(2,1,2)
plot(20*log10(abs(W3)));
title("blackman window in frequency domain");
figure(4);
subplot(2,1,1)
plot(1:N,w4);
title("bartlett window in time domain");
subplot(2,1,2)
plot(20*log10(abs(W4)));
title("bartlett window in frequency domain");
figure(5);
subplot(2,1,1)
plot(1:N,w5);
title("hanning window in time domain");
subplot(2,1,2)
plot(20*log10(abs(W5)));
title("hanning window in frequency domain");
end

