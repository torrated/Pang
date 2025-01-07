/// @function						  prc_player_muerto
/// @param {Asset.GMObject} _player el jugador que ha muerto
/// @description					  Hace acciones dependiendo de varios factores

function prc_player_muerto(_player)
{
	if (_player.vidas > 0)
	{
		_player.vidas -= 1;
		room_restart();
	}
	else
	{
		obj_stage_clear.next_room = rm_room1;
		obj_stage_clear.state_text = "Game Over";
		room_goto(rm_stage_clear);
	}
}