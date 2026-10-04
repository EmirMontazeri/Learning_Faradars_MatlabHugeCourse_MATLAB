clc;
clear;
close all;

t = linspace(0, 1, 100)';
x = exp(-0.1*t);
y = sqrt(t+1);
data = [t x y x.*y];

disp(['Number of rows: ', num2str(size(data,1))])
disp(['Number of columns: ', num2str(size(data,2))])

data = mat2cell(data,ones(1,size(data,1)),ones(1,size(data,2)));

headers = {'t','x','y','Product'};

data2 = [headers; data];

xlswrite('Book2.xlsx',data2);