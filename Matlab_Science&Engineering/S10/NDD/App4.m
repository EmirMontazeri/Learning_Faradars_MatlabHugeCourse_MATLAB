clc;
clear;
close all;

F = @(t,y,ylag,yplag) 1-y+3*ylag.^yplag;

delay = @(t,y) t/4;

delayp = @(t,y) t-2*pi;

history = @(t) sin(t).^3;

t = [0 10];

sol = ddensd(F,delay,delayp,history,t);

% y = sol.y;
t = linspace(t(1),t(end),100);
[y yp] = deval(sol,t);

figure;
subplot(1,2,1);
plot(t,y);
subplot(1,2,2);
plot3(t,y,yp);