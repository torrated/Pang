/// @function				prc_stage_clear
/// @param {Asset.GMRoom}	_previous_room	la pantalla que finaliza
/// @param {Asset.GMRoom}	_next_room	la pantalla siguiente
/// @description			Si hay más pantallas, va a la siguiente. Si no, se acaba la partida

function prc_stage_clear(_previous_room, _next_room)
{	
	if (instance_exists(obj_player1))
		puntos_player1 += obj_player1.puntuacion;
	if (instance_exists(obj_player2))
		puntos_player2 += obj_player2.puntuacion;
		
	if (_previous_room == rm_room3)
	{
		obj_stage_clear.next_room = rm_room1;
		obj_stage_clear.state_text = "Game Over";
		room_goto(rm_stage_clear);
	}
	else
	{
		obj_stage_clear.next_room = _next_room;
		obj_stage_clear.previous_room = _previous_room;
		obj_stage_clear.state_text = "Stage Clear";
		room_goto(rm_stage_clear);
	}
}