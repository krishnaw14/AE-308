function zeta = get_zeta(M)

M = M/100;
lnM = log(1/M);

b = (pi)/lnM;

zeta = -b + (4+b^2)^0.5;

zeta = zeta/2;

% fprintf("zeta = %f", zeta);

end