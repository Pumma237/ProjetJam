if (place_meeting(x+hsp,y,oWall64) || place_meeting(x+hsp,y,oWall16) || place_meeting(x+hsp,y,oWall8))
{
	while (!place_meeting(x+sign(hsp),y,oWall64) || !place_meeting(x+sign(hsp),y,oWall8) || !place_meeting(x+sign(hsp),y,oWall16))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if (place_meeting(x,y+vsp,oWall64) || place_meeting(x,y+vsp,oWall16) || place_meeting(x,y+vsp,oWall8))
{
	while (!place_meeting(x,y+sign(vsp),oWall64) || !place_meeting(x,y+sign(vsp),oWall16) || !place_meeting(x,y+sign(vsp),oWall8))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;