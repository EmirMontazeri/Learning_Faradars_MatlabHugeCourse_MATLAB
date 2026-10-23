clc;
clear;
close all;

x = -5:0.2:5;
dx = x(2)-x(1);

y = x;
dy = y(2)-y(1);
[A, B] = meshgrid(x, y);

z = A .* exp (-2.*A.^2-B.^2);
[dzx, dzy] = gradient(z,dx,dy);

% surf(A,B,z);
contour(A, B, z);
hold on;
quiver(A,B,dzx,dzy);