/// @description Insérez la description ici
/// @description Initiation 
state = e_state.chase;
	set_state_sprite(sTank,0.4);
	//if not instance_exists(oPlayer) 
	vsp = vsp + grv;


	image_xscale = sign(oPlayer.x - x);
	if( image_xscale == 0)
	{
		image_xscale = 1;
	}
	var direction_facing = image_xscale;
	var distance_to_player = point_distance(x,y,oPlayer.x, oPlayer.y);
	if (distance_to_player > 150 )
	{
		
		hsp = walksp * direction_facing;
		

	}else
	{
		hsp = 0;
	}
	
			// Collision Horizontal
		if	(place_meeting(x+hsp,y, oWall))
		{
			while(!place_meeting(x+sign(hsp),y,oWall))
			{
					x = x + sign(hsp);
			
			}
			hsp = 0;
		}
	
		

		// Vertical collision
		if	(place_meeting(x, y+vsp , oWall))
		{
			while(!place_meeting(x,y+sign(vsp),oWall))
			{
					y = y + sign(vsp);
			}
			vsp = 0;
		}
		  
		y = y + vsp;
		x = x + hsp;