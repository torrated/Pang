/// @description 

if (other.state <> PLAYERSTATE.MUERTO)
{
	other.maximo_ganchos = 2;
	other.arma = sprite_index;
	instance_destroy(self,true);
}