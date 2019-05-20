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
		var direction_facing = image_xscale;
		var distance_to_player = point_distance(x,y,oPlayer.x,oPlayer.y);
		 if (distance_to_player <= attack_range && firingdelay < 0)
		 {
		firingdelay = room_speed ;
		 var inst;
		inst = instance_create_layer(x, y, "Bullets", oSonor);
		with (inst)
		{
			speed = 10;
			var ex, ey;
			ex = instance_nearest(x, y, oPlayer).x;
			ey = instance_nearest(x, y, oPlayer).y;
			direction = point_direction(x,y,oPlayer.x,oPlayer.y);
		}
		 
		 }
		 else
		 {

		  ht  = sign(oPlayer.y - y);
		  hsp = walksp * direction_facing;
		  vsp = walksp * ht;
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
