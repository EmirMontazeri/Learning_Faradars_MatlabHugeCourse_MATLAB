clc;
clear;
close all;

x = linspace(0,20,30);

y = linspace(0,20,20);

[X, Y] = meshgrid(x, y);

z = sin(X) .* sin(Y) + sqrt(X);

figure;
subplot(2,2,1);
surf(X,Y,z);
colormap hsv;
% shading('interp');

subplot(2,2,2);
contour3(X,Y,z,10);

subplot(2,2,3);
meshc(X,Y,z);

subplot(2,2,4);
ezplot('y = x^3');
