clc;
clear;
close all;

t = linspace(1,100,10000)';

Y0 = [10;
      0];

[T, Y] = ode45(@van, t, Y0);

figure;
plot(Y(:,1),Y(:,2));