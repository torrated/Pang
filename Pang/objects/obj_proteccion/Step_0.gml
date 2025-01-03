/// @description

if (player == noone)
{
	if (timer == timer_inicial)
	{
		if !(collision_point(x,y+velocidad,[obj_collider,obj_collider_destruible],false,false))
			y += velocidad;
		else
			timer -= 1;
	}
	else
	{
		timer -= 1;
		if (timer == 0)
			instance_destroy(self,false);
		if (timer <= timer_inicial/2)
		{
			if (timer mod 2 == 0)
				image_xscale = 0;
			else
				image_xscale = 1;
		}
	}
}
else
{
	x = player.x;
	y = player.y;
	image_xscale = 2;
	image_yscale = 3;
	if (timer_quitar <> timer_quitar_inicial)
	{
		timer_quitar -= 1;
		if (timer_quitar == 0)
			instance_destroy(self,true);
		if (timer_quitar mod 2 == 0)
		{
			image_xscale = 0;
			image_yscale = 0;
		}
		else
		{
			image_xscale = 2;
			image_yscale = 3;
		}
	}
}