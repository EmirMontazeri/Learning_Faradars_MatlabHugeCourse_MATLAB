clc;
clear;
close all;

a = -5:5;
b = -3:3;
[x, y] = meshgrid(a, b);



Z = exp(-0.4*(x.^4-y));

X = linspace(min(a), max(a), 30);
Y = linspace(min(b), max(b), 30);
[XX, YY] = meshgrid(X, Y);

ZZ = interp2(x,y,Z,XX,YY,'cubic');

figure;
surf(XX,YY,ZZ);
hold on;
plot3(x(:), y(:), Z(:), 'ko', 'MarkerFaceColor', 'white');
xlabel('X');
ylabel('Y');
zlabel('Z');