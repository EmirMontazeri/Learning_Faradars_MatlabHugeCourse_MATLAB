clc;
clear;
close all;

img = zeros(500,500);
img(100:200,100:300) = 1;
imwrite(img,'MyImage.png');

img2 = im2double(imread('MyImage.png'));
imshow(img2)