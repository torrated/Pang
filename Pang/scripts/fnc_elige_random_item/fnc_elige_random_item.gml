function fnc_elige_random_item()
{    
    // gancho doble: 40%
    // proteccion: 30%
    // dinamita: 10$
    // timer: 15%
    // vida extra: 5%
    
    var _random = 0;
	do {
        _random = irandom_range(1,100);
        if (_random <= 40) _item = obj_gancho_doble;
        if ((_random > 40) && (_random <= 70))_item = obj_proteccion;
        if ((_random > 70) && (_random <= 80))_item = obj_dinamita;
        if ((_random > 80) && (_random <= 95))_item = obj_timer;
        if (_random > 95 ) _item = obj_vida_extra;
        }
	until !(instance_exists(_item));
	return (_item);
}