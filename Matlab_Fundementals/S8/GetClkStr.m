function name = GetClkStr()
    
    c = clock;

    Y = num2str(c(1));

    M = num2str(c(2));
    if numel(M)<2
        M = ['0' M]; 
    end

    D = num2str(c(3));
    if numel(D)<2
        D = ['0' D]; 
    end

    hr = num2str(c(4));
    if numel(hr)<2
        hr = ['0' hr]; 
    end
    
    mn = num2str(c(5));
    if numel(mn)<2
        mn = ['0' mn]; 
    end

    sc = num2str(floor(c(6)));
    if numel(sc)<2
        sc = ['0' sc]; 
    end

    name = [Y '_' M '_' D '_' ...
           hr '_' mn '_' sc];

end