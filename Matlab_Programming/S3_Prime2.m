clc;
clear;
close all;

N = input('What number? ');

if S3_FunPrime(N)
    disp([num2str(N) ' is Prime'])
else 
    disp([num2str(N) ' is not Prime'])
end

