/// @description 

numero_de_mandos_conectados = fnc_detectar_mandos();
if (numero_de_mandos_conectados <> numero_de_mandos_conectados_antes)
{
	switch (numero_de_mandos_conectados)
	{
		case 0: break;
		case 1: if (numero_de_mandos_conectados_antes < numero_de_mandos_conectados) show_message("El jugador 1 se une a la partida");
		        if (numero_de_mandos_conectados_antes > numero_de_mandos_conectados) show_message("El jugador 2 se ha ido de la partida");
				prc_asignar_mando(obj_mando1, obj_player1, 0);
				prc_asignar_mando(obj_mando2, obj_player2, 1);
				break;
		case 2: show_message("El jugador 2 se une a la partida");
				prc_asignar_mando(obj_mando1, obj_player1, 0);
				prc_asignar_mando(obj_mando2, obj_player2, 1);
				break;
	}
	numero_de_mandos_conectados_antes = numero_de_mandos_conectados;
}