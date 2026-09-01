clc;
clear;
close all;

f=@(x) x^2 - 2*exp(x) + x;
ezplot(f);
grid on;

fzero(f,0)