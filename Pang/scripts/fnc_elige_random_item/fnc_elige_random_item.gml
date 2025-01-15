function fnc_elige_random_item()
{    
    // gancho doble: 50%
    // proteccion: 30%
    // timer: 15%
    // vida extra: 5%
    var _random = 0;
	do {
        _random = irandom_range(1,100);
        if (_random <= 50) _item = obj_gancho_doble;
        if ((_random > 50) && (_random <= 80))_item = obj_proteccion;
        if ((_random > 80) && (_random <= 95))_item = obj_timer;
        if (_random > 95 ) _item = obj_vida_extra;
        }
	until !(instance_exists(_item));
	return (_item);
}