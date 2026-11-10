clc;
clear;
close all; 

s = tf('s');
t = linspace(0,20,50)';

R = 2;
C = 5;

G = R/(C*s + 2*R)

u = 2*cos(t);
y = lsim(G,u,t);

figure;
subplot(2,2,1);
plot(t,u);
subplot(2,2,2);
plot(t,[u y]);
subplot(2,2,[3 4]);
plot3(u,y,t);