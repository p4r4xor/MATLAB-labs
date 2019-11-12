function z = synthesizer(notes,fs,a,d,s,dur,r)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
z=[]; %Initialize output as empty
durs=a+d+dur+r; %time duration of each note
p=length(notes);%calculating no. of inputs
t_syn=0:1/fs:p*durs+(p-1)/fs;
%loop over the notes
for k=1:length(notes)
    env = envelope(fs,a,d,s,dur,r); %Compute the time vector and ADSR envelope for this note
    h=harmonics(a+d+dur+r,notes(k),fs,100);%Compute the sum of harmonics for this note
    n = h.*env;%modulate the sum of harmonics with the envelope
    z = [z,n];% add the note to the sequence
end
sound(z,fs); %To play the sound
plot(t_syn,z);%plotting the different notes with their respective duartions
title("Musical Synthesizer")
xlabel("time");
ylabel("Output Signal taking different notes and their harmonics");
end

