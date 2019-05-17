/// @description Etape a faire à chaque frame

// assignation de touche
key_left  = keyboard_check(vk_left)|| keyboard_check(ord("Q"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump  = keyboard_check_pressed(vk_space) || keyboard_check(ord("Z"));


// Calcule des mouvements
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

// Saut
if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;	
	global.playerHealth -= 1;
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



