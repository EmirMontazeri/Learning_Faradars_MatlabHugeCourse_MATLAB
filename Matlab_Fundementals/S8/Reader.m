clc;
clear;
close all;
fclose all;

fid = fopen('MyText.txt','r');

X = [];

while (~feof(fid))

    x = fscanf(fid,'%f\r\n');
    X = [X x];

end

fclose(fid);

plot(X);