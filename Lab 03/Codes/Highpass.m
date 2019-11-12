w = 3.5;
% angular frequency 3.5 rad/sec
B = zeros(1,2*N+1);
 %vector of size(1,(2*N+1)) 
for k = -N:N
if(abs(k)<=w)
    B(k+N+1)=0;
    %all frequency coefficients between [-w,w] are zero 
else
    B(k+N+1)=A(k+N+1);
     %all frequency coefficients other than [-w,w] are same as input
     %signals coefficients
end
end
    [N,B,z] = partial_sum(B);
    %calculating time domain output signal from the fourier coefficients
    subplot(2,1,1);
    plot(-6*pi:0.001:6*pi,x);
    %plotting the time domain input signal
    title("Input Periodic Signal")
    xlabel("time")
    ylabel("x(t)")
    subplot(2,1,2);
    plot(-6*pi:0.001:6*pi,z);
    %plotting the time domain output signal
    title("Highpass Output Signal")
    xlabel("time")
    ylabel("z(t)")