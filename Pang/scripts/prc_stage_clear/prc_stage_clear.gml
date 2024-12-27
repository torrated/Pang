function prc_stage_clear(){
	show_message("stage clear");
	if (room == room_last)
		prc_fin_de_partida();
	else
		room_goto_next();
}