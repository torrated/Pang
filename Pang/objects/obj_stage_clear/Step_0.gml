/// @description 

if (room == rm_stage_clear)
{
	if (timer == 0)
	{
		if (boton_pulsado)
		{
			boton_pulsado = false;
			timer = timer_inicial;
			room_goto(next_room);
		}
	}
	else
	{
		timer -= 1;
		if (timer == 0)
			boton_pulsado = false; // para limpiar el buffer
	}
}