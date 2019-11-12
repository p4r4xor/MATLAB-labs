B = zeros(1,2*N+1);
  %vector of size(1,(2*N+1)) 
for k = -N:N
B(k+N+1)=A(k+N+1)/(1+1i*k); %fourier coefficients of output signal
end
    [N,B,w] = partial_sum(B);
    %calculating the time domain output signal
    subplot(2,1,1);
    plot(-6*pi:0.001:6*pi,x);
    %plotting input signal vs time
    title("Input Periodic Signal")
    xlabel("time")
    ylabel("x(t)")
    subplot(2,1,2);
    plot(-6*pi:0.001:6*pi,w);
    %plotting output signal vs time
    title("H(jw)=1/(1+jw) Output Signal")
    xlabel("time")
    ylabel("w(t)")