clc;
clear;
close all;
tic;
x = -5:1:5;
dx = x(2)-x(1);

y = x;
dy = y(2)-y(1);
[A, B] = meshgrid(x, y);

z = 3.*A.^3 - B.^2;

Lap = del2(z,dx,dy)
toc;