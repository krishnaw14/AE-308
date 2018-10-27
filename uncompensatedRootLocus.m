s = tf('s');
plant = 1/((s+1)*(s+2)*(s+4)*(s+6));

rlocus(plant);