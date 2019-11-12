function [A,B]=ten_2(N,window,len)
k = (N-1)/2;
x = -k:k;
f = zeros(1,N);
for x = -k:k
    f(x+k+1) = sin(0.4*pi*x)/pi/x*window(x+k+1);
    f(k+1)=1/pi;
end
A = f;
for x = -k:k
    f(x+k+1) = f(x+k+1)*((-1)^x);
    f(k+1)=1/pi;
end
B = f;
end