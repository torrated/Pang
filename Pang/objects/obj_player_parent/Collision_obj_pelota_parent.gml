/// @description 

var _timer = false;
if (instance_exists(obj_timer))
	with (obj_timer)
	{
		if (alarm_get(0) > 0)
			_timer = true;
	}

if !(_timer)
{
	if (proteccion)
	{
		proteccion_objeto.timer_quitar -= 1; // para que la proteccion desaparezca
		if !(proteccion_objeto.gancho_creado) // crea un gancho que colisiona con la pelota
		{
			var _gancho = instance_create_layer(other.x,other.y,"LayerGancho",obj_gancho);
			_gancho.player = self;
			_gancho.player.numero_de_ganchos += 1;
			proteccion_objeto.gancho_creado = true;
		}
	}
	else
		if (puede_ser_golpeado)
		{
			state = PLAYERSTATE.MUERTO;
		}
}