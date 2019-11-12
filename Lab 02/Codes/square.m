function [D,u] = square(T,T1,t,N) 
D=zeros(1,2*N+1);
%initializing a row vector of size 2*N+1 with all zeros
for k = -N:N
 %if k==0 manually calculated a0=integral(y(t))over the time period
    if(k==0)
    D(k+N+1)=2*T1/T;
    else
        %calculating ak using the sin(kWoT1)/(k*pi)
    D(k+N+1)=sin(k*T1*2*pi/T)/(k*pi);
    end
end
u = zeros(size(t));
for k=-N:N
   u=u+D(k+N+1)*exp(1i*k*(2*pi/T)*t);
   %calcuating y(t) using ak*e^(jWot)
end
u = real(u);
sq=rectangularPulse(-T1,T1,t);
%calculating rectangular pulse using an inbuilt function
end

