clc;
clear;
close all;

fo = @(t,Y) [abs(Y(2)); -(Y(1))];

fbc = @(Ya,Yb) [Ya(1); Yb(1)-3];

t = linspace(0,9,10);

solini = bvpinit(t,[0 1]);

solu = bvp4c(fo,fbc,solini);

[solu.y' solu.yp']


figure;
subplot(2,2,1);
plot(solu.x,solu.y(1,:));
subplot(2,2,3);
plot(solu.x,solu.y(2,:));
subplot(2,2,[2 4])
plot(solu.y(1,:),solu.y(2,:));