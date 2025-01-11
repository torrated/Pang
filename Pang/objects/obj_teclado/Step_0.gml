/// @description lee las teclas

if (room <> rm_stage_clear)
{
	eje_x = keyboard_check(vk_right)-keyboard_check(vk_left);

	if (keyboard_check_pressed(vk_space) && instance_exists(player))
	{
		if (player.numero_de_ganchos < player.maximo_ganchos && player.state == PLAYERSTATE.NORMAL)
		{
			var _gancho = instance_create_layer(player.x, player.y,"LayerGancho",obj_gancho);
			player.numero_de_ganchos += 1;
			_gancho.player = player;
		}
	}
	
	eje_y = keyboard_check(vk_down)-keyboard_check(vk_up);
}
else
{
	if (keyboard_check_pressed(vk_space))
	{
		obj_stage_clear.boton_pulsado = true;
	}
}