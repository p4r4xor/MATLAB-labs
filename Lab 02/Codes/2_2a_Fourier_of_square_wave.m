t=-0.5:0.01:0.5;
%time from -0.5 to 0.5sec with a difference 0.01
[A,y,sq] = squarefs(0.2,0.1,t,100) ;
    subplot(5,1,1);
    plot(-100:100,A,'b');
    title("Fourier Series coefficients vs 'k'");
    xlabel('k(-100:100)')
ylabel("a_{k} for T = 0.2sec")
%plotting the graph of ak vs k for T=0.2sec
for T = 0.40:0.20:1
    [A,y,sq] = squarefs(T,0.1,t,100) ;
    subplot(5,1,T*5);
    plot(-100:100,A,'b');
    xlabel('k(-100:100)')
ylabel(["a_{k} for T = " T "sec"])
%plotting the graph of ak vs k for T=0.4sec to T=1sec
end
