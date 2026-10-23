clc;
clear;
close all;

Norm = @(x) (x-min(x(:)))/(max(x(:))-min(x(:)));

Img = im2double(imread("peppers.png"));

G = Norm(gradient(Img));

L = Norm(del2(Img));

a = G - L;

figure;
subplot(1,3,1);
imshow(Img);
subplot(1,3,2);
imshow(G);
subplot(1,3,3);
imshow(L);

figure;
imshow(a);