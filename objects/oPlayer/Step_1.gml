/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

switch (form)
{
case sBat:
	image_angle = point_direction(x,y,mouse_x,mouse_y);

	firingdelay -=  1;

	if (mouse_check_button(mb_left)) && (firingdelay < 0)
	{
		firingdelay = 35;
		with (instance_create_layer(x,y,"Bullets",oSonor))
		{
			speed = 15 ;
			direction = other.image_angle;
			image_angle = direction;
		}
	} 
	break;
case sTank :


	firingdelay -=  1;
	
		if (mouse_check_button(mb_left)) && (firingdelay < 0)
	{
		var inst;
		inst = instance_create_layer(x+(270*image_xscale), y-100, "Bullets", oObus);
		with (inst)
		{
			speed = 15;
			if (mouse_x < x)
			direction = 180;
			else 
			direction = 0;
			
			image_angle = direction;
		}

		if (mouse_x < x)
			direction = 0;
		else 
			direction = 180;
			alarm[1] = room_speed;
		motion_add(direction,8);
		firingdelay = room_speed *3;
	}
}