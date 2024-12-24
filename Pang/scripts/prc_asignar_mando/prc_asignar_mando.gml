/// @function				prc_asignar_mando
/// @param {object}	_mando	el mando a asignar
/// @param {object}	_player el pplayer a asignar
/// @param {real}	_id		el id del mando a asignar
/// @description			Asigna un mando a un player

function prc_asignar_mando(_mando, _player, _id)
{
	_player.mando = _mando;
	_mando.id_mando = _id;
	_mando.player = _player;
}