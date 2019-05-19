/// @description Transformation système 
 	var move = key_right - key_left;
switch(form)
{
	
	case sBat:
// Calcule des mouvements
instance_create_layer(x,y,"Player",oBall)
set_state_sprite(sBat,0.4);
image_angle = point_direction(x,y,mouse_x,mouse_y);

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
		  
		  break;
	case sTank:
	set_state_sprite(sTank,0.4);
	// Collision Horizontal
	if	(place_meeting(x+hsp,y, oWall64) || place_meeting(x+hsp,y, oWall16) || place_meeting(x+hsp,y, oWall8))
	{
		while(!place_meeting(x+sign(hsp),y,oWall64) && !place_meeting(x+sign(hsp),y,oWall16) && !place_meeting(x+sign(hsp),y,oWall8))
		{
				x = x + sign(hsp);
			
		}
		hsp = 0;
	}
	
	x = x + hsp;

	// Vertical collision
	
	if	(place_meeting(x, y+vsp , oWall64)|| place_meeting(x, y+vsp , oWall16) || place_meeting(x, y+vsp , oWall8))
	{
		while(!place_meeting(x,y+sign(vsp),oWall64) && !place_meeting(x,y+sign(vsp),oWall16) && !place_meeting(x,y+sign(vsp),oWall8))
		{
				y = y + sign(vsp);
		}
		vsp = 0;
	}
	
	y = y + vsp;
	
	image_xscale = sign(mouse_x - x);
	if( image_xscale == 0)
	{
		image_xscale = 1;
	}
		
		if (hsp == 0) image_index = 0 ;
	break;
	
}