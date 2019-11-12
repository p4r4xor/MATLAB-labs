t=-0.5:0.01:0.5;
%time from -0.5 to 0.5sec with a difference 0.01
subplot(2,1,1);
plot(t,y,'r');
title('Square Function reconstructed from Fourier Series N=100')
xlabel('time')
ylabel('y(t)')
% plotting graph of y(t) vs t
subplot(2,1,2);
plot(t,sq,'b');
title('Original Square Function')
xlabel('time')
ylabel('sq(t)')
% plotting graph of sq(t) vs t