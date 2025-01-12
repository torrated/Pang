/// @description 
left = virtual_key_add(0,0,89,640,vk_left);
right = virtual_key_add(90,0,89,640,vk_right);
space = virtual_key_add(180,0,180,640,vk_space);


mando = noone;
velocidad_horizontal = 7;
velocidad_vertical = 3;
state = PLAYERSTATE.NORMAL;
puede_ser_golpeado = true;

maximo_ganchos = 1;
numero_de_ganchos = 0;

puntuacion = 0;
vidas = 2;
arma = noone;

proteccion = false;
proteccion_objeto = noone;

if (object_index == obj_player1)
{
	sprite_corriendo = spr_player1_corriendo;
	sprite_quieto = spr_player1_quieto;
}
if (object_index == obj_player2) 
{
	sprite_corriendo = spr_player2_corriendo;
	sprite_quieto = spr_player2_quieto;
}