clc;
clear;
close all;

A = [1 4 3; 5 8 2];
B = [1 -1]';

lscov(A,B)
lscov(A,B,[1 10])