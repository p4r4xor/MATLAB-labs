function env = envelope(fs,a,d,s,dur,r)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%In each phase of the signal determine the corresponding piece of time
%vector and envelope
t=0:1/fs:a;
env = (1/a)*t; %Attack : Signal linearly decreases from 0 to 1 in seconds
tdelay = (a+1/fs):1/fs:a+d;
envdelay = 1 + (tdelay-a)*(s-1)/d; %Decay: Signal linearly decreases from 1 to s in d seconds 
t = [t,tdelay];
env = [env,envdelay];
tsustain = a+d+1/fs:1/fs:a+d+dur; 
envsustain = zeros(size(tsustain)); %Sustain : Signal stays at s for dur seconds
envsustain = envsustain+s;
t = [t,tsustain];
env = [env,envsustain];
trelease = a+d+dur+1/fs:1/fs:a+d+dur+r;
envrelease = (-1*s/r)*(trelease-a-d-dur)+s; %Release : Signal linearly decreases from s to 0 in r seconds
t = [t,trelease];
env = [env,envrelease];
end

