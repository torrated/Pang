/// @description DEBUG

switch (numero_de_mandos_conectados)
{
	case 0: draw_text(0,0,"No se han detectado mandos"); break;
	case 1: draw_text(0,0,"1 mando detectado"); break; // asignar mando conectado a player1
	case 2: draw_text(0,0,"2 mandos detectados"); break; // asignar mando 1 a player 1 y mando 2 a player 2
}

if (muestra_hitboxes)
{
	var _pelota = noone;
	for (var _i = 0; _i < instance_number(all); ++_i;)
	{
	    with (instance_find(all,_i))
		{
			draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
		}
	}
}