/// @description Initialisation de code 

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 7;

cooldown = 0;

var slot1 = transformation()(sBat,oBat,2,0,7);
var slot2;

instance_create_layer(x,y,"Player",oBall)