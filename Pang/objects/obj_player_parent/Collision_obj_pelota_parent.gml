/// @description 

if (proteccion)
{
	proteccion_objeto.timer_quitar -= 1;
	if !(proteccion_objeto.gancho_creado)
	{
		var _gancho = instance_create_layer(other.x,other.y,"LayerGancho",obj_gancho);
		_gancho.player = self;
		proteccion_objeto.gancho_creado = true;
	}
}
else
	if (puede_ser_golpeado)
		state = PLAYERSTATE.MUERTO;