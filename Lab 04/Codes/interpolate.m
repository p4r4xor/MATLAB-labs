function [X,Z] = interpolate()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%sampling time with precision of 0.1sec
t = 0:0.1:2;
%sampling time with precision 0.0001sec
t_new = 0:0.0001:2;
%initializing z to zero
Z=zeros(size(t_new));
%calculating z with t_new
Z = 1+sin(3*pi*t_new)+cos(5*pi*t_new);
%initializing X with zero
X=zeros(size(t));
%calculating X  with t
X = 1+sin(3*pi*t)+cos(5*pi*t);
end

