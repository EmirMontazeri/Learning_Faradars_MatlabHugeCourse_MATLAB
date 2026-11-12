clc;
clear;
close all;

F = @(t,x,z) [-x(2)
              z(2,1)*x(2)*sin(1-x(2))];

del = @(t,x) sin(1-x(2));

history = @(t) [log10(t)
                    1./t];

t = [0.5 5];

sol = ddesd(F,del,history,t);

T = linspace(t(1),t(end),50);
sol2 = deval(sol,T)

y = sol.y;
t = sol.x;

figure;
subplot(1,2,1)
plot(t,y);
subplot(1,2,2)
plot(T,sol2);
grid on;