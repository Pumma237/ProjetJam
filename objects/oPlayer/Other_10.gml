/// @description Transformation système 
 

// Calcule des mouvements
instance_create_layer(x,y,"Player",oBall)
set_state_sprite(sBat,0.4);
image_angle = point_direction(x,y,mouse_x,mouse_y);
	var move = key_right - key_left;

	var fly = key_dow - key_jump  ;
	
	vsp = fly * walksp;
	hsp = move * walksp;


	

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

			hsp = 0;
		}
	
		

		// Vertical collision
		if	(place_meeting(x, y+vsp , oWall64) || place_meeting(x, y+vsp , oWall16) || place_meeting(x, y+vsp , oWall8))
		{
	
			vsp = 0;
		}
 
		 x = x + hsp;
		  y = y + vsp;
