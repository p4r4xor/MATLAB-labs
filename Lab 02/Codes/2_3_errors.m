err0 = zeros(1,100);
%making a row vector with 100 zeros
err1 = zeros(1,100);
%making a row vector with 100 zeros
t=-0.5:0.001:0.5;
%time from -0.5 to 0.5 with difference of 0.001
for k = 1:100
    [A,y,sq] = squarefs(1,0.1,t,k) ;
err0(k) = max(abs(y-sq));
%for calculating maximum of the absolute values of the error
err1(k)=sum((y-sq).*(y-sq))/length(y);
%for calculating mean squared values of the error
end
subplot(2,1,1);
plot(1:100,err0,'r');
%plotting the absolute error vs no. of terms in fourier series
%representation of signal
title('Maximum Absolute Error')
xlabel('No. of terms in Fourier series')
ylabel('Absolute error')
subplot(2,1,2);
plot(1:100,err1,'b');
%plotting the mean squared error vs no. of terms in fourier series
%representation of signal
title('Mean Squared Error')
xlabel('No. of terms in Fourier series')
ylabel('Absolute error')