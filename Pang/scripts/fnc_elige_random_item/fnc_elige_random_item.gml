function fnc_elige_random_item()
{
	do
		_item = choose(obj_proteccion,
					   obj_gancho_doble,
					   obj_vida_extra,
					   obj_timer);
	until !(instance_exists(_item));
	return (_item);
}