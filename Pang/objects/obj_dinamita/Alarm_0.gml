/// @description 

if (instance_exists(obj_pelota_parent))
{
    for (var _i = 0; _i < instance_number(obj_pelota_parent); _i ++)
    {
        var _pelota = instance_find(obj_pelota_parent,_i);
        if (_pelota.object_index <> obj_pelota_16)
            instance_create_layer(_pelota.x,_pelota.y,"LayerGancho",obj_gancho);
    }
    if ((instance_number(obj_pelota_parent) > 0) && (instance_number(obj_player_parent)<>instance_number(obj_pelota_16)))
        alarm[0] = 60; // 60 = 1 segundo
    else
        instance_destroy();
}