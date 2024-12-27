/// @description DEBUG

if (muestra_hitboxes)
{
	var _pelota = noone;
	for (var _i = 0; _i < instance_number(all); ++_i;)
	{
	    with (instance_find(all,_i))
		{
			draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
		}
	}
}