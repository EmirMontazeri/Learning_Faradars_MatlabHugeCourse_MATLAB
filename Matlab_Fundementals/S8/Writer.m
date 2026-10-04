clc;
clear;
close all;
fclose all;

X = rand(10)';

fid = fopen('MyText.txt','w');

for x = X
    fprintf(fid,'%.3f\r\n',x);
end

fclose(fid);