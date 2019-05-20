if (place_meeting(x+hsp,y,oWall64))
{
	while (!place_meeting(x+sign(hsp),y,oWall64))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if (place_meeting(x,y+vsp,oWall64))
{
	while (!place_meeting(x,y+sign(vsp),oWall64))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;