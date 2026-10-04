clc;
clear;
close all;

MyData = load('count.dat');

a = MyData(:,2);
[a, Sort] = sort(a);

b = MyData(:,3);
b = b(Sort);

M = 1:15;
Yhat = cell(size(M));
R2 = zeros(size(M));

for m = M
    pf = polyfit(a,b,m);
    Yhat{m} = polyval(pf,a);
    R2(m) = getR2(b,Yhat{m});

end

plot(M, R2);