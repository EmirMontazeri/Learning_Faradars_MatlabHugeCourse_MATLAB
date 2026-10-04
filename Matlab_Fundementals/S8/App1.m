clc;
clear;
close all;

x = linspace(0,1,10);
y = linspace(0,1,10);

[X, Y] = meshgrid(x,y);

FileName = ['Result_' GetClkStr()];

save(FileName);
