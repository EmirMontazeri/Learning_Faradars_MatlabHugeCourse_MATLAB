function DL = DividerPlus(n)
    flag = false(1, n);
    flag([1, n]) = true;

    for i = 2:floor(sqrt(n))
        if mod(n,i)==0
            flag([i, n/i]) = true; 
        end
    end

    A=1:n;
    DL = A(flag);

    DL = find(flag);
end
