/// @description 

audio_play_sound(snd_pop,1,false,1,undefined,random_range(0.9,1.1));
var _nuevas_pelotas = noone;
if (instance_exists(other.player))
{
	other.player.puntuacion += puntos;
	var _puntos = instance_create_layer(x,y,"Instances",obj_puntos_flotantes);
	_puntos.puntos = puntos;
}

switch (sprite_index)
{
	case spr_pelota_128: _nuevas_pelotas = obj_pelota_64; break;
	case spr_pelota_64: _nuevas_pelotas = obj_pelota_32; break;
	case spr_pelota_32: _nuevas_pelotas = obj_pelota_16; break;
	case spr_pelota_16: _nuevas_pelotas = noone; break;
}

if (_nuevas_pelotas == noone)
{
	instance_destroy(other,true);
	instance_destroy(self,true);
}
else
{
	instance_destroy(other,true);
	var _pelota1 = instance_create_layer(x+5,y,"Pelotas",_nuevas_pelotas);
	_pelota1.velocidad_vertical -= 10;
	
	var _pelota2 = instance_create_layer(x-5,y,"Pelotas",_nuevas_pelotas);
	_pelota2.sentido_x = -1;
	_pelota2.velocidad_vertical -= 10;
	
	instance_destroy(self,true);
}