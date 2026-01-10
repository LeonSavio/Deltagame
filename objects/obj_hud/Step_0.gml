for (var i = 0; i < PlayerMax; i++){
	
	var idx = string(i+1)
		
	//Visibility
	if instance_number(par_player) >= i+1 {
		layer_set_visible("Player"+idx,true)
	} 
	if instance_number(par_player) < i+1{
	layer_set_visible("Player"+idx,false)
	}
	
	layer_set_visible("TpBar"+idx,TPVisible[i])
	
	//HP
	if global.show_hp == true{	layer_text_text(Hud[i].HPText,HP[i])} else {
	layer_text_text(Hud[i].HPText,"")
	}
	layer_sprite_blend(Hud[i].HP,Color[i])
	layer_sprite_xscale(Hud[i].HP,(HP[i]/MaxHP[i])*100)
	
	//EXP
	layer_sprite_blend(Hud[i].Exp,Color[i])
	layer_sprite_xscale(Hud[i].Exp,(Exp[i]/ExpNext[i])*100)
	
	//LV
	layer_text_text(Hud[i].LV, "LV "+string(LV[i]))
	
	//TP
	layer_sprite_yscale(Hud[i].TP,TP[i])
	layer_sprite_blend(Hud[i].TP,Color[i])
	
	//skill
	layer_text_blend(Hud[i].Skill,Color[i]);
	layer_text_text(Hud[i].Skill,SkillShow[i])
	
	
	//Gold
	layer_text_text(Hud[i].Gold ,string(global.Gold) + " G")
	
	//Icon
	if global.Player[i] != noone{
	if array_contains(global.Player[i].StateAttack, HealPrayer) && global.Player[i].TP >= 20{
	layer_sprite_alpha(Hud[i].Icon,1)
	layer_sprite_change(Hud[i].Icon,spr_healprayericon)
	} else {
	layer_sprite_alpha(Hud[i].Icon,0)
	}
	}
}





