/// @description 

numero_de_mandos_conectados = fnc_detectar_mandos();
if (numero_de_mandos_conectados <> numero_de_mandos_conectados_antes)
{
	switch (numero_de_mandos_conectados)
	{
		case 0: break;
		case 1: show_message("El jugador 1 se une a la partida");
				if !(instance_exists(obj_player1)) instance_create_layer(224,576,"Instances",obj_player1);
				prc_asignar_mando(obj_mando1, obj_player1, 0);
				if (instance_exists(obj_player2)) instance_destroy(obj_player2);
				break;
		case 2: show_message("Los jugadores 1 y 2 se unen a la partida");
				if !(instance_exists(obj_player1))
				{
					instance_create_layer(224,576,"Instances",obj_player1);
					prc_asignar_mando(obj_mando1, obj_player1, 0);
				}
				if !(instance_exists(obj_player2)) 
				{
					instance_create_layer(800,576,"Instances",obj_player2);
					prc_asignar_mando(obj_mando2, obj_player2, 1);
				}
				break;
	}
	numero_de_mandos_conectados_antes = numero_de_mandos_conectados;
}