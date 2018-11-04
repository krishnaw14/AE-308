% Plots of the compensated plant obtained from four lag compensators in
% cascade

s = tf('s');

G = 1/((s+1)*(s+2)*(s+4)*(s+6));

Gc = 1000*((s+1)*(s+2)*(s+4)*(s+6))/((s+1.2964)*(s+2.2357)*(s+12.1376)*(s+16.9973));

GGc = 1000/((s+1.2964)*(s+2.2357)*(s+12.1376)*(s+16.9973));

figure(1)
rlocus(GGc);

figure(2)
margin(GGc);

figure(3)
bode(GGc);

figure(4)
nyquist(GGc);

figure(5)
step(feedback(G,1));
hold
step(feedback(GGc,1));
legend('Uncompensated Plant', 'Compensated Plant');


disp(stepinfo(feedback(GGc,1)));
fprintf('\n');
fprintf('Bandwidth: \n');
disp(bandwidth(GGc));
fprintf('\n');
fprintf('Closed Loop poles: \n');
disp(pole(feedback(GGc,1)));
fprintf('\n');