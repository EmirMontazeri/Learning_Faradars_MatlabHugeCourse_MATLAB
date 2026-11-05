clc;
clear;
close all;

f = [-3 6 -8]

A = [1 -4 -2;
    3 2 -1;
    0 4 6]

b = [14 50 33]'

LB = [0 0 0]'

opts = optimset('Display','iter');

intcon = 3;

LP = linprog(f,A,b,[],[],LB,[],opts)
BIP = intlinprog(f,intcon,A,b) % bintprog depreciated