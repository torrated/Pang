/// @function				prc_asignar_teclado
/// @param {Asset.GMObject}	_teclado	el teclado a asignar
/// @param {Asset.GMObject}	_player el player a asignar
/// @param {Real}	_id		el id del teclado a asignar
/// @description			Asigna un teclado a un player

function prc_asignar_teclado(_teclado, _player, _id)
{
	_player.mando = _teclado;
	_teclado.id_mando = _id;
	_teclado.player = _player;
}