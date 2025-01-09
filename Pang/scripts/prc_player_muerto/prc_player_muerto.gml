/// @function						  prc_player_muerto
/// @param {Asset.GMObject} _player el jugador que ha muerto
/// @description					  Hace acciones dependiendo de varios factores

function prc_player_muerto(_player)
{
	for (var _i = 0; _i < instance_number(obj_pelota_parent); _i++)
	{
		var _pelota = instance_find(obj_pelota_parent,_i);
		_pelota.velocidad_horizontal = 0;
		_pelota.velocidad_vertical = 0;
	}
	if ((_player.vidas >= 0) && (_player.puede_ser_golpeado))
	{
		for (var _i = 0; _i < instance_number(obj_player_parent); _i++)
		{
			var _players = instance_find(obj_player_parent,_i);
			_players.puede_ser_golpeado = false;
		}
		_player.vidas -= 1;
	}
	else
	{
		_player.x += 10;
		_player.y -= 1;

		if ((_player.x > room_width) || (_player.y < 0) || (_player.x < 0))
			room_restart();
	}
	
	if (_player.vidas == -1)
	{
		_player.vidas = 0;
		obj_stage_clear.next_room = rm_room1;
		obj_stage_clear.state_text = "Game Over";
		room_goto(rm_stage_clear);
	}
}