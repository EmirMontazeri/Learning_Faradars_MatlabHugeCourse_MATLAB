clc;
clear;
close all;

im = im2double(imread('rice.png'));
% most of other images are 3-D datas when converted to double,
% but rice works without an issue
% https://www.mathworks.com/matlabcentral/answers/54439-list-of-builtin-demo-images

[U, S, V,] = svd(im);

dia = diag(S)

dia1 = dia;
dia1 (10:end) = 0;
DIA1 = diag(dia1);

im1 = U*DIA1*V';

figure;
subplot(2,1,1);
imshow(im);
subplot(2,1,2);
imshow(im1);
title('Rank-9 Approximation');
