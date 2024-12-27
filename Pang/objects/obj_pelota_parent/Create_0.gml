/// @description 

velocidad_vertical = 0;
sentido_x = 1;

switch (sprite_index)
{
	case spr_pelota_16: amplitud = 70;
						velocidad_maxima = 15;
						multiplicador_gravedad = 0.4;
						velocidad_horizontal = 3*sentido_x;
						puntos = 400;
						break;
	case spr_pelota_32: amplitud = 96*2;
						velocidad_maxima = 16;
						multiplicador_gravedad = 0.70;
						velocidad_horizontal = 2.67*sentido_x;
						puntos = 200;
						break;
	case spr_pelota_64: amplitud = 96*3;
						velocidad_maxima = 15;
						multiplicador_gravedad = 0.40;
						velocidad_horizontal = 2.33*sentido_x;
						puntos = 100;
						break;
	case spr_pelota_128: amplitud = 96*4;
						 velocidad_maxima = 13;
						 multiplicador_gravedad = 0.20;
						 velocidad_horizontal = 2*sentido_x;
						 puntos = 50;
						 break;
}