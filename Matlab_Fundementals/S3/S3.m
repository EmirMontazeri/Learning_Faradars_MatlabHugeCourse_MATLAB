clc;
clear;

A = inf;
if (isinf(A))
    disp('A is infinite');
end

for i=1:10
    disp(i^3)
end

for i = 1:10
    if (i==5)
        break
    end
disp(i);
end
tic;
N = 1000000;
F = zeros(1,N); % Preallocation
F(1) = 1;
F(2) = 1;
Fmax=5000;
for k=3:N
    F(k) = F(k-1) + F(k-2);
    if F(k) > Fmax
        break
    end
end
toc;

% F(k:end)=[];

for j = 1:99
    r(j)= F(j+1) / F(j);
end

tic;
R = F(2:end)./F(1:end-1);
toc;

x = [1:10];
any(x>8)