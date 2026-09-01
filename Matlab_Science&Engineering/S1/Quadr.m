clc;
clear;
close all;

syms a b c x;

a = str2num(input('Enter a: ','s'));
b = str2num(input('Enter b: ','s'));
c = str2num(input('Enter c: ','s'));

solve(a*x^2-b*x+c==0)