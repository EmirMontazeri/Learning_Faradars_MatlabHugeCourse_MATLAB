clc;
clear;
close all;

f0 = 2;
t = 0:0.01:2;

x = sin (2*pi*f0*t);
y = cos (2*pi*f0*t);

figure;

subplot(2,2,1);
plot (t,x,'s','Color',[1 0.20 0.10],'MarkerFaceColor','y');

subplot(2,2,3);
plot (t,y,'b','LineWidth',1.5);
grid on;

subplot(2,2,[2 4]);
plot(x,y);
axis equal;