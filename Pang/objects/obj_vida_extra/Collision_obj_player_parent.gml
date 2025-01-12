/// @description 

if (other.state <> PLAYERSTATE.MUERTO)
{
	other.vidas += 1;
	instance_destroy(self,true);
}