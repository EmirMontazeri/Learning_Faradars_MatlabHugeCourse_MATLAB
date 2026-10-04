function A = MaxMat(m,n) %#ok
    
    if nargin < 1
        error('Yo, type something!');
    else nargin < 2; %#ok
        n = m;
    end

    A = zeros(m,n);
    
    for i = 1:m
        for j = 1:n
            A(i,j) = max(i,j);
        end
    end
end