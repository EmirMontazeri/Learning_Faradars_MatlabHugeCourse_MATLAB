clc;
clear;
close all;

x0 = [-1 0 1];

t = [0 100];

[t, x] = ode45(@RigB,t,x0);

figure;
subplot(2,1,1);
plot(t,x);
subplot(2,1,2);
plot3(x(:,1),x(:,2),x(:,3));
grid on;