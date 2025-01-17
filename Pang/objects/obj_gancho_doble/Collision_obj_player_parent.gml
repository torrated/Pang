/// @description 

if (other.state <> PLAYERSTATE.MUERTO)
{
    if (other.arma == sprite_index)
    {
        other.puntuacion += puntos;
        var _puntos = instance_create_layer(x,y-sprite_height,"Instances",obj_puntos_flotantes);
        _puntos.puntos = puntos;
    }
	other.maximo_ganchos = 2;
	other.arma = sprite_index;
	instance_destroy(self,true);
}