% Comparison of the step response of the 2 compensated plant obtained from
% the two approaches

GG1 = 1000/((s+1.2964)*(s+2.2357)*(s+12.1376)*(s+16.9973));

GG2 = 495.98/((s+4)*(s+6)*(s+0.4533)*(s+12));

figure(1)
step(feedback(GG1,1));
hold
step(feedback(GG2,1));
legend('Approach 1', 'Approach 2');
