clc;
clear; 
close all;

f = @(x) x(1) * -x(2);

Lb = [0 0];

x0 = [-1 -2]';
[x fx]= fmincon(f,x0,[],[],[],[],Lb,[],@nlc); 