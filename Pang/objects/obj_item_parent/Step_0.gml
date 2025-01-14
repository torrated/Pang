/// @description
/// 
if (player == noone)
{
    if (timer == timer_inicial) // esto le hace caer y que cuando no cae, inicia un timer para desaparecer
    {
        if !(collision_point(x,y+velocidad,[obj_collider,obj_collider_destruible],false,false))
            y += velocidad;
        else
            timer -= 1;
    }
    else // esto hacer parpadear al item y al final del timer, lo destruye
    {
        timer -= 1;
        if (timer == 0)
            instance_destroy(self,false);
        if (timer <= timer_inicial/2)
        {
            if (timer mod 2 == 0)
                image_xscale = 0;
            else
                image_xscale = 1;
        }
    }
}
