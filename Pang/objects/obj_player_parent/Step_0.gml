/// @description 

if (state = PLAYERSTATE.MUERTO)
{
	instance_destroy(self);
}
else
{
	// Movimiento
	var _x_to = velocidad_horizontal * mando.eje_x;

	if (_x_to <> 0)
	{
		if !(collision_point(_x_to+bbox_left,y,obj_collider,false,false))
		     &&
			!(collision_point(_x_to+bbox_right,y,obj_collider,false,false))
			x += _x_to;
	}
}