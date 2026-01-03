// Inherit the parent event
event_inherited();


if instance_exists(obj_hud){
	obj_hud.TPVisible[Player-1] = true
	obj_hud.Color[Player-1] = make_color_rgb(155,255,127)
}

