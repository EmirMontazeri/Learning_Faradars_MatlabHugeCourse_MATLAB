function [pl,ql,pr,qr] = bcf(xl,ul,xr,ur,t)

    pl = ul;
    ql = 0;

    pr = exp(-t);
    qr = 1;

end