/// @description 

var _nuevas_pelotas = noone;

switch (sprite_index)
{
	case spr_pelota_128: _nuevas_pelotas = obj_pelota_64; break;
	case spr_pelota_64: _nuevas_pelotas = obj_pelota_32; break;
	case spr_pelota_32: _nuevas_pelotas = obj_pelota_16; break;
	case spr_pelota_16: _nuevas_pelotas = noone; break;
}

if (_nuevas_pelotas == noone)
{
	instance_destroy(other);
	instance_destroy(self);
}
else
{
	instance_destroy(other);
	var _pelota1 = instance_create_layer(x+5,y,"Pelotas",_nuevas_pelotas);
	_pelota1.velocidad_vertical -= 10;
	
	var _pelota2 = instance_create_layer(x-5,y,"Pelotas",_nuevas_pelotas);
	_pelota2.sentido_x = -1;
	_pelota2.velocidad_vertical -= 10;
	
	instance_destroy(self);
}