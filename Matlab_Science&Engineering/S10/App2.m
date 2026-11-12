clc;
clear;
close all;

F = @(t,x,z) [z(1,1)+z(1,2);
              z(2,2);
              x(2)];

lag = [1 0.5];

history = [1 1 1]';

t = [0 100];

sol = dde23(F,lag,history,t);

t = sol.x;
y = sol.y;

figure;
subplot(3,2,1);
plot(t,y(1,:));
subplot(3,2,3);
plot(t,y(2,:));
subplot(3,2,5);
plot(t,y(3,:));
subplot(3,2,[2 4 6]);
plot3(y(1,:),y(2,:),y(3,:));