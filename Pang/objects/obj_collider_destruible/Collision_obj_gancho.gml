/// @description 

if (instance_exists(other.player))
{
	other.player.puntuacion += puntos;
	var _puntos = instance_create_layer(x,y,"Instances",obj_puntos_flotantes);
	_puntos.puntos = puntos;
}

instance_destroy(other,true);
instance_destroy(self,true);