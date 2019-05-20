/// @description Redevnir normal


	
	instance_create_layer(x,y,"Bullets",oSmoke);
	global.isPlayer = true;
	camera_set_view_size(global.cam,1920,1080);
	// Vertical collision
	if	(place_meeting(x, y+oPlayer.sprite_height/2 , oWall64) || place_meeting(x, y+oPlayer.sprite_height/2 , oWall16) || place_meeting(x, y+oPlayer.sprite_height/2 , oWall8))
	{
	
		instance_create_layer(x,y-oPlayer.sprite_height/2-10,"Player",oPlayer);
		instance_destroy();
	}
	else
	if	(place_meeting(x, y-oPlayer.sprite_height/2 , oWall64) || place_meeting(x, y-oPlayer.sprite_height/2 , oWall16) || place_meeting(x, y-oPlayer.sprite_height/2 , oWall8))
	{
	
		instance_create_layer(x,y+oPlayer.sprite_height/2+10,"Player",oPlayer);
		instance_destroy();
	}
	else 
	instance_create_layer(x,y,"Player",oPlayer);
	
	instance_destroy();
	
	form = sPlayer;