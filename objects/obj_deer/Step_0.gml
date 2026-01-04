event_inherited();

if instance_exists(obj_hud){
	var skill = string(StateAttack[pos])
	obj_hud.TPVisible[Player-1] = true
	obj_hud.SkillShow[Player-1] = string_replace(skill,"ref script","")
		if TP < 20{
	obj_hud.Color[Player-1] = make_color_rgb(255,255,101)
		} else {
	obj_hud.Color[Player-1] = c_lime
	}
}
