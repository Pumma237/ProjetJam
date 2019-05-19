/// @description Etape a faire à chaque frame

// assignation de touche
key_left  = keyboard_check(vk_left)|| keyboard_check(ord("Q"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump  = keyboard_check_pressed(vk_space) || keyboard_check(ord("Z"));
key_dow   = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_one   = keyboard_check(vk_numpad1);
key_two   = keyboard_check(vk_numpad2);

// Calcule des mouvements
var move = key_right - key_left;
hsp = move * walksp;

vsp = vsp + grv;
cooldown2 -=1;
cooldown -= 1;
if (key_one && cooldown < 1)
{
	global.isPlayer = false;
	oPlayer.mask_index = slot1[0];
	form = slot1[0];
	walksp = slot1[4];
	instance_create_layer(x,y,"Bullets",oSmoke)
	cooldown = room_speed * 10;
	alarm[0] = room_speed * 5;
}

if (key_two && cooldown2 < 1)
{
	global.isPlayer = false;
	oPlayer.mask_index = slot2[0];
	form = slot1[0];
	walksp = slot1[4];
	instance_create_layer(x,y,"Bullets",oSmoke)
	cooldown2 = room_speed * 10;
	alarm[0] = room_speed * 5;
}


if (global.isPlayer)
{

	// Saut
	if (place_meeting(x,y+1,oWall64) || place_meeting(x,y+1,oWall16) || place_meeting(x,y+1,oWall8)) && (key_jump)
	{
		vsp = -12;	
	}


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



	//Animation
	if (!place_meeting(x,y+1,oWall64) && !place_meeting(x,y+1,oWall8) && !place_meeting(x,y+1,oWall16))
	{
		sprite_index = sPlayerA;
		//if (sign(vsp) > 0) image_index = 1 ; else image_index = 0;
	}
	else
	{

		//image_speed = 1;
		if (hsp == 0)
		{
			sprite_index = sPlayer;
		}
		else
		{

			if (hsp > 0 && mouse_x > oPlayer.x) sprite_index = sPlayerD; 
			if (hsp < 0 && mouse_x > oPlayer.x ) sprite_index = sPlayerD2;
			if (hsp > 0 && mouse_x < oPlayer.x ) sprite_index = sPlayerD2;
			if (hsp < 0 && mouse_x < oPlayer.x ) sprite_index = sPlayerD ;
	    }
	}


	if (mouse_x > oPlayer.x) 
	{ 
		image_xscale = 1; 
	}
	else
	{
		image_xscale = -1;
	}
}else
{
	event_user(0);
	instance_destroy(oBall);
}
