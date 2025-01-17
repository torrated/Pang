/// @description 

if (other.state <> PLAYERSTATE.MUERTO)
{
    if ((other.proteccion) && (player == noone))
    {
        other.puntuacion += puntos;
        var _puntos = instance_create_layer(x,y,"Instances",obj_puntos_flotantes);
        _puntos.puntos = puntos;
    }
    
	if (!(other.proteccion) && (player == noone))
	{
		player = other;
		other.proteccion_objeto = self;
		other.proteccion = true;
	}
}