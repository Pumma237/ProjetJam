/// @description Etape a faire à chaque frame

// assignation de touche
key_left  = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump  = keyboard_check_pressed(vk_space);


// Calcule des mouvements
var move = key_right - key_left;

hsp = move * walksp;


// Collision Horizontal

if	(place_meeting(x + hsp, y , oWall))
	{
		hsp = 0;
	}
x = x + hsp;