%N has to be iven as input
for p = 2:N-1
%calculating the fourier transform of the rectangular pulse
x = [ones(p,1);zeros(N-p,1)];    
X = directdft(x);
subplot(2,1,1)
stem(1:N,x);
title("Graph of input signal vs n");
xlabel(" n ");
ylabel("Magnitude of the input signal "); 
subplot(2,1,2);
stem(1:N,abs(X));
title("Graph of Discrete fourier transform of input signal vs n");
xlabel(" n ");
ylabel("Magnitude of the dft of input signal ");
pause(2);
end