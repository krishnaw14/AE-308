% Plots of the compensated plant obtained from a lag and lead compensators 
% in cascade

s = tf('s');

G = 1/((s+1)*(s+2)*(s+4)*(s+6));

Gc = 495.98*((s+1)*(s+2))/((s+0.4533)*(s+12));

p1 = 12;
p2 = 0.4533;
K = 495.98;

GGc = K/((s+4)*(s+6)*(s+p2)*(s+p1));

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
hold;
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