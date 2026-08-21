clc;
clear;
close all;
fclose all;

fid = fopen('MyText.txt','r');

X = [];
Y = [];

while (~feof(fid))

    data = fscanf(fid,'%f\t%f\r\n');

end

data = reshape(data,2,[])';

fclose(fid);

X = data(:,1);
Y = data(:,2);

plot(X,Y,'o');