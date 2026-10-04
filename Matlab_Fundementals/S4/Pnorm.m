function L = Pnorm (p, varargin)

    x = cell2mat(varargin);

    L = sum(abs(x).^ p) ^ (1/p);

end
