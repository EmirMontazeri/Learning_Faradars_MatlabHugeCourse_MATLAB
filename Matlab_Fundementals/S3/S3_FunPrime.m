function a = S3_FunPrime(N)

    a = true;

    for i = 2:ceil(sqrt(N))
        if mod(N,i) == 0
            a = false;
            break;
        end
    end
end