clc;
clear;
close all;

x = [0 2 -3 5 6 7];
y = [1 4 6 10 12 11];

X = linspace(min(x),max(x),50);
P = polyfit(x,y,5);

Y1 = polyval (P,X);
Y2 = interp1 (x,y,X,'linear');
Y3 = interp1 (x,y,X,'cubic');
Y4 = interp1 (x,y,X,"spline");
Y5 = interp1 (x,y,X,"nearest");

figure;
plot (x,y,'ro',MarkerSize=10,LineWidth=5,DisplayName='Data');
hold on;
legend show;
plot (X,Y1,'b',DisplayName='Polyfit');
plot (X,Y2,'w',DisplayName='Linear');
plot (X,Y3,'y',DisplayName='Cubic');
plot (X,Y4,'g',DisplayName='Spline');
plot (X,Y5,'c',DisplayName='Nearest');