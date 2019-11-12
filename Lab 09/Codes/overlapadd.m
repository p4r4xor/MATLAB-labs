function y = overlapadd(h,x,N)
%input is overlapadd(rand(1,10),rand(1,91),10);
% If N is not already a power of 2, replace it with the next power of 2
N = 2^(nextpow2(N));
% Compute important lengths
M = length(h);
L = N-M+1;
Lx = length(x);
y1 = zeros(1,Lx+M-1);
y1 = conv(h,x);
K = floor(Lx/L)+1;
% Length-N DFT of filter
H = fft(h,N);
% Initialize y (include some extra zeros at end)

% Pad x with zeros to be a multiple of L
x = [x,zeros(1,K*L-Lx)];
y = zeros(1,length(x)+N);
% How many blocks will we have?
% Loop over blocks
for i=1:K
    
    % Extract length-L block from x 
    block = x((i-1)*L+1:i*L);
    
    % Take length-N FFT of this block
    B = fft(block,N);
    
    % Compute product in frequency domain and take inverse DFT
    yblock = ifft(B.*H);
    
    % If first block, initialize y
    if i==1
        y(1:N) = yblock;
    else  % Add the result to the appropriate location in y
        y(L*(i-1)+1:i*L+M-1) = y(L*(i-1)+1:i*L+M-1) + yblock;
    end
    
end
% Trim extra zeros from the end of y to get the correct length convolution
y = y(1:Lx+M-1);
subplot(2,1,1)
plot(1:Lx+M-1,y);
title("Overlap-add filtering");
xlabel("time");
ylabel("Magnitude of y using overlapadd filter");
subplot(2,1,2)
plot(1:Lx+M-1,y1);
title("Convolution of the filter and the input signal using the inbuilt function");
xlabel("time");
ylabel("Magnitude of y using inbuilt function");