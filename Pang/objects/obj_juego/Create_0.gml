/// @description 
numero_de_mandos_conectados = fnc_detectar_mandos();
numero_de_mandos_conectados_antes = -1;
altura_del_suelo = 576;
gravedad = 2;
muestra_hitboxes = false;
posicion_inicial_player1 = (room_width/2)-100;
posicion_inicial_player2 = (room_width/2)+100;
puntos_player1 = 0;
puntos_player2 = 0;

probabilidad_pelotas = 25;
probabilidad_destruibles = 25;

timer_inicial = 2 * 60; // 2 segundos
timer = timer_inicial;