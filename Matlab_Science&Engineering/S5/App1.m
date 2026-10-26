clc;
clear;
close all;
% inspired from 'vpasolve' docs' example
x = linspace(-10,10,500);

F1 = @ (x) 100*sin(x);
F2 = @ (x) x.^3 - 1;

syms a;
r (1) = double(vpasolve(F1(a)==F2(a),a,-3));
r (2) = double(vpasolve(F1(a)==F2(a),a,0));
r (3) = double(vpasolve(F1(a)==F2(a),a,+3));

figure;
plot(x,F1(x),'b');
hold on;
plot(x,F2(x),'r');
hold on;
plot(r,F1(r),'ys',MarkerSize=12);
