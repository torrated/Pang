/// @description 

velocidad_vertical = 0;

switch (sprite_index)
{
	case spr_pelota_16: amplitud = 96;
						velocidad_maxima = 15;
						multiplicador_gravedad = 1;
						velocidad_horizontal = 3;
						break;
	case spr_pelota_32: amplitud = 96*2;
						velocidad_maxima = 16;
						multiplicador_gravedad = 0.70;
						velocidad_horizontal = 2.67;
						break;
	case spr_pelota_64: amplitud = 96*3;
						velocidad_maxima = 15;
						multiplicador_gravedad = 0.40;
						velocidad_horizontal = 2.33;
						break;
	case spr_pelota_128: amplitud = 96*4;
						 velocidad_maxima = 13;
						 multiplicador_gravedad = 0.20;
						 velocidad_horizontal = 2;
						 break;
}