clc;
clear;
close all;

MyData = load('count.dat');

a = MyData(:,2);
[a, Sort] = sort(a);

b = MyData(:,3);
b = b(Sort);

pf = polyfit(a,b,3);

Yhat = polyval(pf,a);

e = b - Yhat;
mse = mean(e.^2);
var = var(b,1);
R2 = 1-mse/var;

figure;

subplot(2,2,[1 2]);
plot(a, b,'*',MarkerSize=10);
xlabel('a');
ylabel('b');
grid on;
hold on;
plot(a,Yhat,'g',LineWidth=2.5);
legend('Data','Output','Location','northeast');
title(['R^2 =' num2str(R2)]);

subplot(2,2,[3 4]);
plot(a,b-Yhat);
