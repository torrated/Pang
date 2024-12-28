/// @description 

esperar = false;
if (instance_exists(player))
	player.numero_de_ganchos -= 1;
instance_destroy(self);