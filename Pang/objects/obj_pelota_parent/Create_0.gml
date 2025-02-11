/// @description 

velocidad_vertical = 0;
sentido_x = 1; //derecha
sentido_y = 1; //abajo
altura = obj_juego.altura_del_suelo;

timer_velocidad_vertical = 0;
timer_velocidad_horizontal = 0;
timer_sentido_x = 0;
timer_sentido_y = 0;

switch (sprite_index)
{
	case spr_pelota_16: amplitud = 96;
						multiplicador_gravedad = 0.20;
						velocidad_horizontal = 3*sentido_x;
						puntos = 400;
						radio = 16/2;
						break;
	case spr_pelota_32: amplitud = 96*2;
						multiplicador_gravedad = 0.20;
						velocidad_horizontal = 2.67*sentido_x;
						puntos = 200;
						radio = 32/2;
						break;
	case spr_pelota_64: amplitud = 96*3;
						multiplicador_gravedad = 0.20;
						velocidad_horizontal = 2.33*sentido_x;
						puntos = 100;
						radio = 64/2;
						break;
	case spr_pelota_128: amplitud = 96*4;
						 multiplicador_gravedad = 0.20;
						 velocidad_horizontal = 2*sentido_x;
						 puntos = 50;
						 radio = 128/2;
						 break;
}

var _timer = false;
if (instance_exists(obj_timer))
	with (obj_timer)
	{
		if (alarm_get(0) > 0)
			_timer = true;
	}
if (_timer)
	alarm[0] = 1;