function [C] = series() 
t=-5:0.01:5;
T1=1/4;
sq=rectangularPulse(-0.25,0.25,t);

%initializing a row vector of size 2*N+1 with all zeros
for T = 1:0.5:20
     N=round(2*T/T1);
     C=zeros(1,2*4*T+1);
    for k = -N:N
        
 %if k==0 manually calculated a0=integral(y(t))over the time period
        if(k==0)
        C(k+N+1)=2*T1/T;
        else
        %calculating ak using the sin(kWoT1)/(k*pi)
        C(k+N+1)=sin(k*T1*2*pi/T)/(k*pi);
        end
    end
y = pulstran(0:1/1e3:1,-21:T:21,sq);
subplot(2,1,1)
plot(t,y);
subplot(2,1,2)
stem(T*C);
pause(0.5);
end
end