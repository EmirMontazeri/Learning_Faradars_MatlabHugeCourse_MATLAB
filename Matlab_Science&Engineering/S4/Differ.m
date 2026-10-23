function [X1, D1] = Differ(x,y)

    D1 = diff(y)./diff(x);
    X1 = (x(1:end-1) + x(2:end)) / 2;

end