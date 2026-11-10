function dY= van(t,Y,params)
    
    mu = params.mu;
    u = params.u;
    
    dY = [Y(2); 
          mu * (1 - Y(1)^2) * Y(2) - Y(1)];

end