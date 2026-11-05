clc;
clear;
close all;

F = @(x) [3*x(1) + x(2)^2 - 4
          x(1) - x(2) + 10];
x0 = [0 0]';

x = fsolve(F,x0)