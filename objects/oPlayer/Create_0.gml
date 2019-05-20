/// @description Initialisation de code 

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 7;

firingdelay = 0;

cooldown = 0;
cooldown2 = 0;

form = sPlayer;
slot1 = transformation(sBat,2,0,7); 
slot2 = transformation (sTank,10,5,1);

instance_create_layer(x,y,"Player",oBall)