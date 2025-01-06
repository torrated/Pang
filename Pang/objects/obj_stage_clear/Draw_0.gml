/// @description 

draw_self();

if (room == rm_stage_clear)
{
	var _color = draw_get_color();
	draw_set_color(c_red);
	draw_text_transformed(250+2,100+2,"STAGE CLEAR",size_letras_player,size_letras_player,0);
	draw_set_color(c_white);
	draw_text_transformed(250,100,"STAGE CLEAR",size_letras_player,size_letras_player,0);
	draw_set_color(_color);
}