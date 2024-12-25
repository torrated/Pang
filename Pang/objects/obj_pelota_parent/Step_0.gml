/// @description 

// movimiento horizontal
if !(collision_point(velocidad_horizontal+bbox_left,y,obj_collider,false,false))
		&&
	!(collision_point(velocidad_horizontal+bbox_right,y,obj_collider,false,false))
	x += velocidad_horizontal;
else
	velocidad_horizontal = velocidad_horizontal * -1;



// movimiento vertical
//esta parte sirve para capar la altura de los botes
if ((velocidad_vertical < 0) && (y < (obj_juego.altura_del_suelo - amplitud)))
	velocidad_vertical *= 0.90;
	
velocidad_vertical += (obj_juego.gravedad * multiplicador_gravedad);
if (y+velocidad_vertical >= obj_juego.altura_del_suelo)
{
	y = obj_juego.altura_del_suelo-1;
	velocidad_vertical = -velocidad_maxima;
}
else
	y += velocidad_vertical;



