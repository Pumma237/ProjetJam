/// @description IA Sate
//IA controle

	if (oPlayer.x > self.x)  
	{ 
		image_xscale = 1; 
	}
	else
	{
		image_xscale = -1;
	}
firingdelay -=  1;

		  hsp = walksp * direction_facing;
		  vsp = walksp + grv;
switch (state)
{

	case e_state.idle:
	{
		var distance_to_player = point_distance(x,y,oPlayer.x,oPlayer.y);
		 if (distance_to_player <= chase_range)
		 {
		  state = e_state.chase;
		 
		 }
	}
	break;

	case e_state.chase : 
	{
		image_xscale = sign(oPlayer.x -x)
		 direction_facing = image_xscale;
		var distance_to_player = point_distance(x,y,oPlayer.x,oPlayer.y);
		 if (distance_to_player <= attack_range && firingdelay < 0)
		 {
		firingdelay = room_speed / 2;
		 var inst;
		inst = instance_create_layer(x, y-70, "Bullets", oFire);
		with (inst)
		{
			speed = 10;
			if (oPlayer.x < x)
			direction = 180;
			else 
			direction = 0;
			
			image_angle = direction;

		}
		 
		 }
		 else
		 {
			 
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

		  x = x + hsp;
		  y = y + vsp;
		 }
	}
	break;
	
		case e_state.attack : 
	{

		if (distance_to_object(oPlayer) > 500 ) state = e_state.idle;
		//if (distance_to_object(oPlayer) < 300) state = e_state.chase;
	}
	break;
}
