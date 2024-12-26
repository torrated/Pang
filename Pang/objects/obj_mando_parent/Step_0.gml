/// @description lee los botones de los mandos

eje_x = gamepad_axis_value(id_mando,gp_axislh);

if (gamepad_button_check_pressed(id_mando,gp_face1) && instance_exists(player))
{
	if ((instance_exists(obj_gancho) && !obj_gancho.esperar)
		||
		!instance_exists(obj_gancho)
		)
		if (player.state == PLAYERSTATE.NORMAL)
			instance_create_layer(player.x, player.y,"Instances",obj_gancho);
}