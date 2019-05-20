/// @description Insérez la description ici
/// @description Initiation 
state = e_state.chase;
	set_state_sprite(sTank,0.4);
	//if not instance_exists(oPlayer) 
	vsp = vsp + grv;
				// Collision Horizontal
if	(place_meeting(x+hsp,y, oWall64)|| place_meeting(x+hsp,y, oWall16) || place_meeting(x+hsp,y, oWall8))
{
	while(!place_meeting(x+sign(hsp),y,oWall64) && !place_meeting(x+sign(hsp),y,oWall16) && !place_meeting(x+sign(hsp),y,oWall8))
	{
			x = x + sign(hsp);
			
	}
	hsp = 0;
}

// Vertical collision
if	(place_meeting(x, y+vsp , oWall64) || place_meeting(x, y+vsp , oWall16) || place_meeting(x, y+vsp , oWall8))
{
	while(!place_meeting(x,y+sign(vsp),oWall64) && !place_meeting(x,y+sign(vsp),oWall16) && !place_meeting(x,y+sign(vsp),oWall8))
	{
			y = y + sign(vsp);
	}
	vsp = 0;
}
		  
	firingdelay -=  1;
	image_xscale = sign(oPlayer.x - x);
	if( image_xscale == 0)
	{
		image_xscale = 1;
	}
	var direction_facing = image_xscale;
	 distance_to_player = point_distance(x,y,oPlayer.x, oPlayer.y);
	if (distance_to_player <= 850)
	{
		
		hsp = walksp * direction_facing;
		
		
	}
	
	if (distance_to_player <= 500 && firingdelay < 0 )
	{
		
		var inst;
		inst = instance_create_layer(x+(270*direction_facing), y-100, "Bullets", oObus);
		with (inst)
		{
			speed = 15;
			if (oPlayer.x < x)
			direction = 0;
			else 
			direction = 180;
			
			image_angle = direction;
		}

		if (oPlayer.x < x)
			direction = 180;
		else 
			direction = 0;
			alarm[0] = room_speed;
		motion_add(direction,8);
		firingdelay = room_speed *3;
		
		
	}

	if (distance_to_player > 850 && distance_to_player < 1000 && firingdelay < 0)
	{
		
		var inst;
		inst = instance_create_layer(x+(270*direction_facing), y-100, "Bullets", oObus);
		with (inst)
		{
			speed = 15;
			if (oPlayer.x < x)
			direction = 180;
			else 
			direction = 0;
			
			image_angle = direction;
		}

		if (oPlayer.x < x)
			direction = 0;
		else 
			direction = 180;
			alarm[0] = room_speed;
		motion_add(direction,7);
		firingdelay = room_speed *3;
	}
	
	else
	{
		hsp = 0;
	}
		x = x + hsp;

		y = y + vsp;
		
		if (hsp == 0) image_index = 0 ;