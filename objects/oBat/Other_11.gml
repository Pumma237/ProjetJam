/// @description Etape a faire à chaque frame

// assignation de touche
key_left  = keyboard_check(vk_left)|| keyboard_check(ord("Q"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump  = keyboard_check(vk_space) || keyboard_check(ord("Z"));
key_dow   = keyboard_check(vk_down) || keyboard_check(ord("S"));

// Calcule des mouvements

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




