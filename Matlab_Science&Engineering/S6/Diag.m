function a = Diag(A,x)

    if ~exist("x",'var')
    x = 0;
    end
    
    if x > 0
        a = diag(A(1:end-x,1+x:end));
    else
        x = abs(x);
        a = diag(A(1+x:end,1:end-x));
    end

end
