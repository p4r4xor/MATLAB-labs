function [w,h] = type1_dft_bandpass(N,wc1,wc2)
% Create vector of equally-spaced frequencies
w = 0:2*pi/N:2*pi*(N-1)/N;
% Create ideal amplitude response of low-pass filter (remember,
%it should be symmetric about w = pi)
Ad = zeros(size(w));
for p = 0:N-1
    if((w(p+1)>=wc1&w(p+1)<=wc2)|(w(p+1)>=(2*pi-wc2)&w(p+1)<=(2*pi-wc1)))
        Ad(p+1) = 1;
    else
        Ad(p+1) = 0;
    end
end
% Compute linear phase vector using correct slope
phi=zeros(size(w));
phi = exp(-j*w*(N-1)/2);
% Compute ideal frequency samples as product of Ad and phi
H = Ad.*phi;
% Compute filter taps via inverse DFT
h = ifft(H);
% Make result real to get rid of near-zero imaginary parts
h = real(h);
% Plot impulse response, magnitude response, and phase response
%over a finer frequency grid
end

