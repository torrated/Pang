/// @description 

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
