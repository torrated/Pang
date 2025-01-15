/// @description 

if (irandom_range(1,100) <= obj_juego.probabilidad_destruibles)
	instance_create_layer(x,y,"Instances",fnc_elige_random_item());