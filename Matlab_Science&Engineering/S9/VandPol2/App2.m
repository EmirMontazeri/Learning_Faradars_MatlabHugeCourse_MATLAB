clc;
clear;
close all;

t = [0 100];
Y0 = [2 0]';
params.mu = 4.5;

A = 1.2;
omg = 2*pi/10;
params.u = @(t) A*cos(omg*2*t);

system = @(t, Y) van(t,Y,params);

[t, Y] = ode45(system,t,Y0);

figure;
subplot(1,2,1);
plot(Y(:,1),Y(:,2));
subplot(1,2,2);
plot(t,Y(:,2));