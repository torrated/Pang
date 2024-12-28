/// @description 

draw_self();

if (instance_exists(obj_player1))
{
	draw_text_transformed(100,590,"PLAYER 1",size_letras_player,size_letras_player,0);
	draw_text_transformed(250,620,string(obj_player1.puntuacion),size_letras_player,size_letras_player,0);
}

if (instance_exists(obj_player2))
{
	draw_text_transformed(700,590,"PLAYER 2",size_letras_player,size_letras_player,0);
	draw_text_transformed(850,620,string(obj_player2.puntuacion),size_letras_player,size_letras_player,0);
}
