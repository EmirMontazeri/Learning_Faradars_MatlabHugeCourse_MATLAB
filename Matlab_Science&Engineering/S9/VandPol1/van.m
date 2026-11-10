function dY= van(t,Y)
    
    mu = 1;

    dY = [Y(2); 
          mu * (1 - Y(1)^2) * Y(2) - Y(1)];

end