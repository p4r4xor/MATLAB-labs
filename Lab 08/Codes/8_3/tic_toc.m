function [] = tic_toc()
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    p = zeros(1,12);
    t1=zeros(1,12);
    t2=zeros(1,12);
    t3=zeros(1,12);
    % calculating the time for computing the direct dft,radix-2 fft and fft
for i = 1:12
    N = power(2,i);
    p(i)= N;
    L=N/2;
    X = zeros(size(1,N));
    tic
     for j=1:10
     X = directdft([ones(L,1);zeros(N-L,1)]);
     end
         t1(i)=toc; %time for the direct dft
     tic
      for j=1:10
        X = radix2fft([ones(L,1);zeros(N-L,1)]);
     end
         t2(i)=toc;%time for the fft
      tic
      for j=1:10
     X = fft([ones(L,1);zeros(N-L,1)]);
      end
       t3(i)=toc; %time for the fft
end
    
     subplot(3,1,1)
     plot(p,t1);
     title("Time for computing the direct dft");
     xlabel("Number of terms");
     ylabel("time for computing direct dft");
     subplot(3,1,2)
     plot(p,t2);
     title("Time for computing the Radix-2 fft");
     xlabel("Number of terms");
     ylabel("time for computing direct Radix-2 fft");
     subplot(3,1,3)
     plot(p,t3);
     title("Time for computing the fft");
     xlabel("Number of terms");
     ylabel("time for computing fft");
end

