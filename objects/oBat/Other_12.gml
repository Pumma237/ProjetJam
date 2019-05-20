/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
move_push();
hspeed_push = lerp(hspeed_push, 0, .1);
vspeed_push = lerp(vspeed_push, 0, .1);

if (point_distance(0 , 0 , hspeed_push, vspeed_push) < 1)
{
	state = e_state.chase;
}