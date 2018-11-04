s = tf('s');

plant = 1/((s+1)*(s+2)*(s+4)*(s+6));

% Gc = K* ((s+1)*(s+2))/((s+2.0415)*(s+12));

% p1 = 12;
% [p2, K] = get_leadlagParameters(p1, -55);

count = 1;
parameters= zeros(800, 8);

for p1 = 5:0.25:30
    for phase = 52:0.25:82
        [p2, K] = get_leadlagParameters(p1, -phase);
        compensated = K/((s+4)*(s+6)*(s+p2)*(s+p1));
        clr = feedback(compensated,1);
        
        step_response = stepinfo(clr);
        zeta = get_zeta(step_response.Overshoot);
        damp_error = abs(0.5-zeta)/0.5;
        
        poles = pole(clr);
        real_part = abs(real(poles));
        sorted_real_part = sort(unique(real_part));
        ratio = sorted_real_part(2)/sorted_real_part(1);
        ratio_error = abs(10-ratio)/10;
        
        if damp_error < 0.15 && ratio_error < 0.15
        parameters(count, :) = [p1, phase, p2, K, zeta, ratio, damp_error, ratio_error];
        count = count+1;
        end
    end
end
      
csvwrite('LeadLagParameters.csv',parameters)

% compensated = K/((s+4)*(s+6)*(s+p2)*(s+p1));
% clr = feedback(compensated,1);
% 
% step_response = stepinfo(clr);
% pole(clr)
