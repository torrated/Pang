/// @description

if (player == noone)
{
	if (timer == timer_inicial) // esto le hace caer y que cuando no cae, inicia un timer para desaparecer
	{
		if !(collision_point(x,y+velocidad,[obj_collider,obj_collider_destruible],false,false))
			y += velocidad;
		else
			timer -= 1;
	}
	else // esto hacer parpadear al item y al final del timer, lo destruye
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
else // asigna la proteccion a uno de los players
{
	x = player.x;
	y = player.y;
	image_xscale = 2;
	image_yscale = 3;
	if (timer_quitar <> timer_quitar_inicial) // esto es para que no desaparezca de inmediato al colisionar con una pelota
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