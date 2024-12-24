/// @description DEBUG

if (gamepad_button_check(id_mando,gp_face1))
{
	if (instance_exists(player))
		draw_text(player.x,player.y+10,"face1");
}