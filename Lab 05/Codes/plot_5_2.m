sound(y,fs);%play the sound of harmonic sinusoidal signal
subplot(2,1,1)
plot(0:1/fs:duration,y);%plotting the Harmonic Sinusoidal Signal
title("Calculating the Signal using the Sinusoidal harmonics");
ylabel("Sinusoidal Harmonic Signal amplitude");
xlabel("time");
pause(3); %delay the sound of the output to hear the differencs between harmonic sinusoidal signal and the enveloped harmonic sinusoidal signal
sound(y.*env,fs);%play the sound of enveloped harmonic sinusoidal signal
subplot(2,1,2)
plot(0:1/fs:duration,y.*env);%ploting the enveloped harmonic sinusoidal signal
title("Enveloping the above Harmonic Sinusoidal Signal")
xlabel("time");
ylabel("Enveloped Harmonic Sinusoidal Signal amplitude")