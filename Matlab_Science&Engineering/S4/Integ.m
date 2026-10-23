clc;
clear;
close all;

F = @ (x) x.^4;

a = 0;
b = 1;
N = 10;
x = linspace(0,1,N);

Y = F(x);

Inte = integral (F,a,b)
Inte2 = integral (F,a,b,"ArrayValued",true)