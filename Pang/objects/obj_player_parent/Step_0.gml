/// @description 

if (state = PLAYERSTATE.MUERTO)
{
	prc_player_muerto(object_index);
}
else
{
	// Movimiento horizontal y cambio de sprites
	var _x_to = velocidad_horizontal * mando.eje_x;
	var _y_to = velocidad_vertical * mando.eje_y;

	if (mando.eje_x <> 0)
	{
		image_xscale = sign(_x_to);
		sprite_index = sprite_corriendo;
		if !(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_collider,false,false))
			x += _x_to;
		while (collision_rectangle(x,y,bbox_left,bbox_top,obj_collider,false,false))
			x += 1;
		while (collision_rectangle(x,y,bbox_right,bbox_top,obj_collider,false,false))
			x -= 1;
	}
	else if (mando.eje_y <> 0) // movimiento vertical en escalera
	{
		sprite_index = sprite_corriendo;
		if (collision_point(x,y+_y_to,obj_escalera,false,false))
		{
			if !(collision_point(x,_y_to+bbox_top,obj_collider,false,false))
			    &&
			!(collision_point(x,_y_to+bbox_bottom,obj_collider,false,false))
			y += _y_to;
		}
	}
	else
	{
		image_xscale = 1;
		sprite_index = sprite_quieto;
	}
	
	
	// gravedad si no esta en escalera
	if !(collision_point(x,y,obj_escalera,false,false))
	{
		if ((y < obj_juego.altura_del_suelo) && !(collision_point(x,bbox_bottom+1,obj_collider,false,false)))
		{
			y += 3 * velocidad_vertical;
		}
		while (y >= obj_juego.altura_del_suelo)
		{
			y -= 1;
		}
	}
}