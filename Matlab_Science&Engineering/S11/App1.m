clc;
clear;
close all;

m = 0;

init = @(x) cos(pi*x);
% or @icf

x = linspace(0,1,100);
t = linspace(0,10,100);

sol = pdepe(m,@pdef,init,@bcf,x,t);


[Xm, Tm] = meshgrid(x,t);

figure;
surfc(Xm,Tm,sol);
xlabel('x');
ylabel('t');
zlabel('u(x,t)');