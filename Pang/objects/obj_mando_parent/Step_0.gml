/// @description lee los botones de los mandos

if (room <> rm_stage_clear)
{
	eje_x = gamepad_axis_value(id_mando,gp_axislh);
	eje_y = gamepad_axis_value(id_mando,gp_axislv);

	if (gamepad_button_check_pressed(id_mando,gp_face1) && instance_exists(player))
	{
		if (player.numero_de_ganchos < player.maximo_ganchos && player.state == PLAYERSTATE.NORMAL)
		{
			var _gancho = instance_create_layer(player.x, player.y,"LayerGancho",obj_gancho);
			player.numero_de_ganchos += 1;
			_gancho.player = player;
		}
	}
}
else
{
	if (gamepad_button_check_pressed(id_mando,gp_face1))
	{
		obj_stage_clear.boton_pulsado = true;
	}
}