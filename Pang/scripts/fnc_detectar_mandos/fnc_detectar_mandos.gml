/// @function            fnc_detectar_mandos();
/// @description         Devuelve el número de mandos conectados

function fnc_detectar_mandos(){
	if (gamepad_is_connected(0) && gamepad_is_connected(1))
		return 2;
	if (gamepad_is_connected(0) && !gamepad_is_connected(1))
		return 1;
	if (!gamepad_is_connected(0) && !gamepad_is_connected(1))
		return 0;
}