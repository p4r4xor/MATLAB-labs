function [C] = fourierseries() 
T1=1/4;
%time duration of the rectangular pulse 
for T = 1:0.5:20
    %time period of the rectangular pulse
     N=round(2*T/T1);
     C=zeros(1,2*4*T+1);
     %vector of size (2*4*T+1) 
    for k = -N:N
        
 %if k==0 manually calculated a0=integral(y(t))over the time period
        if(k==0)
        C(k+N+1)=2*T1/T;
        else
        %calculating ak using the sin(kWoT1)/(k*pi)
        C(k+N+1)=sin(k*T1*2*pi/T)/(k*pi);
        end
    end
sq = pulstran(0:1/1e4:20,0:T:20,@rectpuls);
%rectangular pulse with time period T
subplot(2,1,1)
plot(0:1/1e4:20,sq);
%plotting rectangular pulse vs time
 title(["Rectangular Pulse for time period T_{o}=",T,"sec"])
    xlabel("time")
    ylabel("x(t)")
subplot(2,1,2)
stem(T*C);
%plotting fourier transform of the rectangular pulse
 title(["Fourier transform of rectangular pulse for time period T_{o}=",T,"sec"])
    xlabel("angular frequency(w)")
    ylabel("X(jw)")
pause(1.5);
%pausing the execution for 1.5 sec 
end
end