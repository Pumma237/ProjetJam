/// @description Initialisation de code 
state = e_state.idle;
hsp = 0;
vsp = 0;
walksp = 4;


attack_range = 250;
chase_range = 400;
hspeed_push = 0;
vspeed_push = 0;

bullet_coldown = room_speed*2;
alarm[0] = bullet_coldown;
firingdelay = 0 ;