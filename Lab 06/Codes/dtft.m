function X = dtft(x,N,w)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
X=zeros(1,length(w));
for p = 1:length(w)
    
for n=1:length(x)
        X(p) = X(p) + x(n)*exp(1i*(n-N)*w(p));
end
end
    figure;
    subplot(2,1,1)
    plot(w,abs(X));
    title("Magnitude X(exp(jw))");
    xlabel("frequency(w)");
    ylabel("|X(exp(jw))|");
    subplot(2,1,2)
    plot(w,angle(X));
    title("Phase X(exp(jw))");
    xlabel("frequency(w)");
    ylabel("angle(X(exp(jw))");
    figure;
    subplot(2,1,1)
    plot(w,real(X));
    title("Real part X(exp(jw))");
    xlabel("frequency(w)");
    ylabel("real(X(exp(jw))");
    subplot(2,1,2)
    plot(w,imag(X));
    title("Imaginary part X(exp(jw))");
    xlabel("frequency(w)");
    ylabel("Imaginary(X(exp(jw))");
    
end

