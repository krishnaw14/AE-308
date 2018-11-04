% To analyse the uncompensated plant characterestics that will be later 
% compared with the compensated plant. 

s = tf('s');
G = 1/((s+1)*(s+2)*(s+4)*(s+6));

figure(1)
rlocus(G);

figure(2)
margin(G);

figure(3)
bode(G);

figure(4)
nyquist(G);

figure(5)
step(feedback(G,1));

disp(stepinfo(feedback(G,1)));
fprintf('\n');
disp(bandwidth(G));
fprintf('\n');
fprintf('Closed Loop poles: \n');
disp(pole(feedback(G,1)));
fprintf('\n');


