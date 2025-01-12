/// @description 

if (other.state <> PLAYERSTATE.MUERTO)
{
	if (!(other.proteccion) && (player == noone))
	{
		player = other;
		other.proteccion_objeto = self;
		other.proteccion = true;
	}
}