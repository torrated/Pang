/// @description lee las teclas

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