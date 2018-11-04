function [p2, K] = get_leadlagParameters(p1, phase)


p2 = (3.5641*tand(phase)+1.33*p1*tand(phase) + 2.3094*p1 - 6.143004)/(p1*tand(phase) - 1.33*tand(phase) - 2.3094);

diff1 = (p1-1.33)^2 + 2.3094^2;
diff2 = (p2-1.33)^2 + 2.3094^2;

K = 3.5302*5.2098*(diff1^0.5)*(diff2^0.5);

end