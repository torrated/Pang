/// @description Hace parpadear a las pelotas antes de que vuelvan a activarse

// parpadeo
for (var _i = 0; _i < instance_number(obj_pelota_parent); _i++)
{
	var _pelota = instance_find(obj_pelota_parent,_i);

	if (index_alarma mod 2 == 0)
	{
		_pelota.image_xscale = 0;
		_pelota.image_yscale = 0;
	}
	else
	{
		_pelota.image_xscale = 1;
		_pelota.image_yscale = 1;
	}
}


index_alarma -= 1;
//se acabó el timer
if (index_alarma == 0)
{
	for (var _i = 0; _i < instance_number(obj_pelota_parent); _i++)
	{
		pelotas[_i] = instance_find(obj_pelota_parent,_i);
		pelotas[_i].image_xscale = 1;
		pelotas[_i].image_yscale = 1;
		pelotas[_i].alarm[1] = 1;
	}
	obj_juego.gravedad = gravedad;
	if (instance_exists(obj_player1))
		obj_player1.puede_ser_golpeado = true;
	if (instance_exists(obj_player2))
		obj_player2.puede_ser_golpeado = true;
	instance_destroy();
}
else
	alarm[0] = 1;