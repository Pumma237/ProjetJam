/// @description Insérez la description ici

switch (state )
{
	case "chase":
		set_state_sprite(sTank,0.2);
		if not instance_exists(oPlayer) break;
		
		image_xscale = sign(oPlayer.x - x);
		if (image_xscale == 0)
		{
			image_xscale = 1;
		}
		
		var distance_to_player = point_distance(x,y, oPlayer.x , oPlayer.y);
		if (distance_to_player > 150 )
		{
			
				// Collision Horizontal
				if	(place_meeting(x+hsp,y, oWall))
				{
				while(!place_meeting(x+sign(hsp),y,oWall))
				{
						x = x + sign(hsp);
			
				}
				hsp = 0;
				}
	
				x = x + hsp;

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
		}
		
		break;
}
