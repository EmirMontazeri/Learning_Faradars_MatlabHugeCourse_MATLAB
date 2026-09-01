clc;
clear;
close all;

na = 100;
a = linspace(-10,10,na);
b = [1 3 5 7 9];
nb = numel(b);

x = zeros(na,nb);

for i = 1:na
    for j = 1:nb
        
        f =@(x) x^b(j)-b(j)*exp(a(i)*x);
        x(i,j) = fzero(f,1);

    end
end

figure(1);
imagesc(x);
colorbar;

figure(2);
surface(b,a,x);