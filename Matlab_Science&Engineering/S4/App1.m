clc;
clear;
close all;

% F = @ (x) exp(-3*x) + cos(x);
F = @ (x) x.^3 - 5*x + 14;


x = linspace(-5,5,500);
y = F(x);

% D1 = diff(y)./diff(x);
% X1 = (x(1:end-1) + x(2:end)) / 2;

[X1, D1] = Differ(x, y);
[X2, D2] = Differ(X1, D1);

figure;
subplot(3,1,1);
plot(x,y,Color='red');
grid on;
legend Function;
hold on;
subplot(3,1,2)
plot(X1,D1,'blue');
grid on;
legend Difference;
hold on;
subplot(3,1,3)
plot(X2,D2,'blue');
grid on;
legend Difference^2;
