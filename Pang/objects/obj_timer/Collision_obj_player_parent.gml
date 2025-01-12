/// @description 

if (other.state <> PLAYERSTATE.MUERTO)
{
	for (var _i = 0; _i < instance_number(obj_pelota_parent); _i++)
	{
		pelotas[_i] = instance_find(obj_pelota_parent,_i);
		pelotas[_i].alarm[0] = 1;
	}
	gravedad = obj_juego.gravedad;
	obj_juego.gravedad = 0;

	if (instance_exists(obj_player1))
		obj_player1.puede_ser_golpeado = false;
	if (instance_exists(obj_player2))
		obj_player2.puede_ser_golpeado = false;

	alarm[0] = 120; // 60 = 1 segundo

	image_xscale = 0;
	image_yscale = 0;
	x = 0;
	y = 0;
}