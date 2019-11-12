%the co-ordinates at which we know the samples
t = 0:0.1:2;
%the co-ordinates to which we are interpolating
t_new = 0:0.0001:2;
%initializing Y with zero
Y=zeros(size(t_new));
%interpolation of X with sinc function
for k = 0:20
Y = Y + X(k+1)*sinc(10*(t_new-k*0.1)); 
end
subplot(2,1,1)
plot(t,X,'b');
%plotting X vs t in blue colour
xlabel('time(t) sampled at T_{s} = 0.1sec');ylabel('Sampled Signal X(t) with T_{s}=0.1sec');
title('Sampled signal with T_{s}=0.1sec');
subplot(2,1,2)
plot(t_new,Y,'r');
%plotting Y vs t_new in red
xlabel('time(t_{new}) sampled at T_{s} = 0.0001');ylabel(["Interpolated signal Y(t) in red","Original Signal Z(t) in black"]);
title('Interpolated signal(sinc function) with T_{s}=0.0001sec');
hold on
plot(t_new,Z,'k');
%original signal
hold off
err2 = sum((Y-Z).*(Y-Z))/length(Y)
