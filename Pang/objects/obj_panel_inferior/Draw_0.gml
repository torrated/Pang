/// @description 

draw_self();

if (room <> rm_start)
{
	if (room <> rm_stage_clear)
		draw_text_transformed(400,590,"stage "+string(string_delete(room_get_name(room),1,7)),size_letras_player,size_letras_player,0);
		
	if (instance_exists(obj_player1))
	{
		draw_text_transformed(100,590,"PLAYER 1",size_letras_player,size_letras_player,0);
		draw_text_transformed(250,620,string(obj_player1.puntuacion+obj_juego.puntos_player1),size_letras_player,size_letras_player,0);
		draw_text_transformed(100,650,"Lives:"+string(obj_player1.vidas),size_letras_player,size_letras_player,0);
		if (obj_player1.arma <> noone)
			draw_sprite(obj_player1.arma,0,300,700);
	}

	if (instance_exists(obj_player2))
	{
		draw_text_transformed(700,590,"PLAYER 2",size_letras_player,size_letras_player,0);
		draw_text_transformed(850,620,string(obj_player2.puntuacion+obj_juego.puntos_player2),size_letras_player,size_letras_player,0);
		draw_text_transformed(700,650,"Lives:"+string(obj_player2.vidas),size_letras_player,size_letras_player,0);
	}
}