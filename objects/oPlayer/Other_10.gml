/// @description Transformation système 
 

// Calcule des mouvements

set_state_sprite(sBat,0.4);

	var move = key_right - key_left;

	var fly = key_dow - key_jump  ;
	
	vsp = fly * walksp;
	hsp = move * walksp;


		  x = x + hsp;
		  y = y + vsp;

	if (mouse_x > self.x)  
	{ 
		image_yscale = 1; 
	}
	else
	{
		image_yscale = -1;
	}




		
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
 

