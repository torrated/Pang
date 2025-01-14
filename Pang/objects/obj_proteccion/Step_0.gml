/// @description

// Inherit the parent event
event_inherited();

if (player <> noone) // asigna la proteccion a uno de los players
{
    x = player.x;
    y = player.y;
    image_xscale = 2;
    image_yscale = 3;
    if (timer_quitar <> timer_quitar_inicial) // esto es para que no desaparezca de inmediato al colisionar con una pelota
    {
        timer_quitar -= 1;
        if (timer_quitar == 0)
            instance_destroy(self,true);
        if (timer_quitar mod 2 == 0)
        {
            image_xscale = 0;
            image_yscale = 0;
        }
        else
        {
            image_xscale = 2;
            image_yscale = 3;
        }
    }
}
