k = -3*pi:0.01:3*pi;
H = zeros(size(k));
for w = 1:length(k)
 H(w) = H(w) + (1/(1-0.9*exp(-1i*k(w))));
end
    figure;
    subplot(2,1,1);
    plot(k,abs(H));
    title("Magnitude H(exp(jw))");
    xlabel("frequency(w)");
    ylabel("|H(exp(jw))|");
    subplot(2,1,2);
    plot(k,angle(H));
    title("Phase H(exp(jw))");
    xlabel("frequency(w)");
    ylabel("angle(H(exp(jw))");
    figure;
    subplot(2,1,1);
    plot(k,real(H));
    title("Real part H(exp(jw))");
    xlabel("frequency(w)");
    ylabel("real(H(exp(jw))");
    subplot(2,1,2);
    plot(k,imag(H));
    title("Imaginary part H(exp(jw))");
    xlabel("frequency(w)");
    ylabel("Imaginary(H(exp(jw))");
