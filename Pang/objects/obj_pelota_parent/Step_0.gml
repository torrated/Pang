/// @description 

//if (1==2)
//{

//		// movimiento horizontal
//		if !(collision_point(velocidad_horizontal+bbox_left,y,obj_collider,false,false))
//				&&
//			!(collision_point(velocidad_horizontal+bbox_right,y,obj_collider,false,false))
//			sentido_x = sentido_x;
//		else
//			sentido_x *= -1;
//		x += velocidad_horizontal * sentido_x;


//		// movimiento vertical
//		//esta parte sirve para capar la altura de los botes
//		if ((velocidad_vertical < 0) && (y < (obj_juego.altura_del_suelo - amplitud)))
//			velocidad_vertical *= 0.90;
	
//		velocidad_vertical += (obj_juego.gravedad * multiplicador_gravedad);
//		if (y+velocidad_vertical >= obj_juego.altura_del_suelo)
//		{
//			y = obj_juego.altura_del_suelo-1;
//			velocidad_vertical = -velocidad_maxima;
//		}
//		else
//			y += velocidad_vertical;
//}

// movimiento horizontal
if !(collision_circle(x+(velocidad_horizontal*sentido_x),y,radio,obj_collider,false,true))
	x += velocidad_horizontal*sentido_x;
else
	sentido_x *= -1;
	
	
// movimiento vertical
velocidad_vertical += (multiplicador_gravedad*obj_juego.gravedad);
if !(collision_circle(x,y+velocidad_vertical,radio,obj_collider,false,true))
{
	if ((sentido_y < 0) && (y < (altura - amplitud)))
		velocidad_vertical *= 0.90;
}	
else
{
	sentido_y *= -1;
	velocidad_vertical *= -1;
	if (sentido_y > 0)
		altura = y + radio;
}

y += velocidad_vertical;
