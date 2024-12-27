function prc_fin_de_partida(){
	show_message("fin de partida");
	show_message("puntos player 1: "+string(obj_player1.puntuacion));
	if (instance_exists(obj_player2))
		show_message("puntos player 2: "+string(obj_player1.puntuacion));
	game_end();
}