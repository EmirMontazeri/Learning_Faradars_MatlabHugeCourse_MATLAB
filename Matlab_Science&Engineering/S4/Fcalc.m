clc;
clear;
close all;

t = 0:1:10;
v = [0 2 5 6 7 4 4 3 1 0 0];

a = diff(v)./diff(t);

plot(t, v);
title Acc;
hold on;
plot(t(1:end-1), a);