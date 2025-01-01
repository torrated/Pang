/// @function				prc_stage_clear
/// @description			Si hay más pantallas, va a la siguiente. Si no, se acaba la partida

function prc_stage_clear(){
	show_message("stage clear");
	
	if (instance_exists(obj_player1))
		puntos_player1 += obj_player1.puntuacion;
	if (instance_exists(obj_player2))
		puntos_player2 += obj_player2.puntuacion;
		
	if (room == room_last)
		prc_fin_de_partida();
	else
		room_goto_next();
}