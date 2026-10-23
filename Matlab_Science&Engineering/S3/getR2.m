function R2 = getR2 (Y, Yhat)

    R2 = 1 - mean((Y - Yhat).^2)/var(Y,1);

end