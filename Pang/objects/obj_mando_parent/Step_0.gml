/// @description lee los botones de los mandos

//if (instance_exists(player))
//	player.x += player.velocidad_horizontal * gamepad_axis_value(id_mando,gp_axislh);


eje_x = gamepad_axis_value(id_mando,gp_axislh);

if (gamepad_button_check_pressed(id_mando,gp_face1) && instance_exists(player))
{
	if ((instance_exists(obj_gancho) && !obj_gancho.esperar)
		||
		!instance_exists(obj_gancho)
		)
		instance_create_layer(player.x, player.y,"Instances",obj_gancho);
}