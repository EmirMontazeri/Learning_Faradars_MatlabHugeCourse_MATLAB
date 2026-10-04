clc;
clear;
close all;
fclose all;

X = unifrnd(-10,10,1,100);

fid = fopen('MyText.txt','w');

for x = X
    fprintf(fid,'%f\t%f\r\n',x,x^2);
end

fclose(fid);