/// @description Insérez la description ici

x = oPlayer.x;
y = oPlayer.y -150;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay -=  1;

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	firingdelay = 35;
	with (instance_create_layer(x,y,"Bullets",oBullets))
	{
		speed = 10 ;
		direction = other.image_angle;
		image_angle = direction;
	}
}