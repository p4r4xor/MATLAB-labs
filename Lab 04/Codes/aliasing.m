function  aliasing()
t1 = 0:0.0001:2;
%time sampling at 0.0001sec
X = zeros(size(t1));
%declaring zero vector X of size(t1)
X= cos(5*pi*t1);
%calculating cos(5pit1)
for T = 0.1:0.1:0.3 %for loop for calculating sampling at different times 
t=0:T:2;
Z = zeros(size(t));
Z = cos(5*pi*t); %calculating Z with time sampling T
Y=zeros(size(t1));
for k = 0:2/T
Y = Y + Z(k+1)*sinc((1/T)*(t1-k*T)); %calculating the signal using sinc interpolation
end
subplot(2,1,1);
plot(t1,Y,'r');
title(["Recovering Signal from samples with T_{s} = ",T,"sec"])
xlabel("time(t1) sampled at T_{s}=0.0001")
ylabel(["Recovered Signal in red" , "Original Signal in Magenta"])
hold on
plot(t1,X,'m');
hold off
subplot(2,1,2);
plot(t,Z);
title(["Sampled Signal at T_{s} = ",T,"sec"])
xlabel(["time(t) sampled at T_{s}=",T,"sec"])
ylabel(["Sampled Signal at T_{s}=",T,"sec"])
pause(2);%delay of 3sec
end
end

