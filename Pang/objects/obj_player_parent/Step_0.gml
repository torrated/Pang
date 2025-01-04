/// @description 

if (state = PLAYERSTATE.MUERTO)
{
	prc_player_muerto(object_index);
}
else
{
	// Movimiento horizontal y cambio de sprites
	var _x_to = velocidad_horizontal * mando.eje_x;

	if (mando.eje_x <> 0)
	{
		image_xscale = sign(_x_to);
		sprite_index = sprite_corriendo;
		if !(collision_point(_x_to+bbox_left,y,obj_collider,false,false))
		     &&
			!(collision_point(_x_to+bbox_right,y,obj_collider,false,false))
			x += _x_to;
		while (collision_point(_x_to+bbox_left,y,obj_collider,false,false))
			x += 1;
		while (collision_point(_x_to+bbox_right,y,obj_collider,false,false))
			x -= 1;
	}
	else
	{
		image_xscale = 1;
		sprite_index = sprite_quieto;
	}
}