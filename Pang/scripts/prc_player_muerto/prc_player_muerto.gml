/// @function						  prc_player_muerto
/// @param {Asset.GMInstance} _player el jugador que ha muerto
/// @description					  Hace acciones dependiendo de varios factores

function prc_player_muerto(_player)
{
	if (_player.vidas > 0)
	{
		_player.vidas -= 1;
		room_restart();
	}
	else
		prc_fin_de_partida();
}