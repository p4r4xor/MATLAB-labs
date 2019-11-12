function [y,fs,duration] = harmonics(duration,f,fs,n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
t=0:1/fs:duration;
%time sampling with 1/fs in a given time duration
harmamps=rand(1,n);
harmphase=rand(1,n);
%calculating 'n' random inputs for harmonic phase and amplitude
y=zeros(size(t));
for k = 1:n
    y = y+harmamps(k)*sin(2*pi*k*f*t+harmphase(k));
    %Loop over Harmonics adding weighted versions to y
end
y = y/max(y(:))*0.95;
%Normalize maximum amplitude to 0.95 so that sound (y,fs) does not get
%distorted
end

