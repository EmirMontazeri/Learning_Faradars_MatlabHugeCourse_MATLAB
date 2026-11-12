clc;
clear;
close all;

F = @(t,x,z) x-z;

lag = 0.5;

history = @(t) 1;

t = [0 10];

sol = dde23(F,lag,history,t);

t = sol.x;
y = sol.y;

figure;
plot(t,y);