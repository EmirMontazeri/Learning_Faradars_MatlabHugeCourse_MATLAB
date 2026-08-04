clc;
clear;
close all;

x = linspace(0,2,100);

A = [0.2 0.34 0.6 1 2.2 3.1];

n = numel(A);

colors = hsv(n);

figure;
i = 0;
for a = A
    i = i + 1;
    y = x .^ a;
    plot (x,y,'Color',colors(i,:),...
        'LineWidth',2,'DisplayName',['a = ' num2str(a)]);
    hold on;
end

legend show;
xlabel('x');
ylabel('y');
title('Plot of y = x^a for different values of a');
grid on;