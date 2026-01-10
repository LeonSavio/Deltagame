function ImminentDeath(){
	if TP >= 0.5*TPCostMultiplier{
		spr_idle = spr_axeidleb
		spr_down = spr_axedownb
		spr_up = spr_axeupb
		spr_left = spr_axeleftb
		spr_right = spr_axerightb
		spr_hurt = spr_axehurtb
		State = PlayerStateFree
		
		if beserked == false{
		drainer = instance_create_layer(x,y,layer,obj_susiedrain);
		drainer.owner = self
		drainer.quantity = 0.03*TPCostMultiplier
		DEF -= 2
		ATK += 1.5
		KnockbackMult = 0
		Magic += 0.5
		beserked = true
		if array_contains(StateAttack,JusticeBuster){SetMusic(mus_Need_a_hand,60,60)} else{
		SetMusic(mus_Vs_Susie,60,60)}
		}
	} else {
		
		if beserked == true{
		spr_up = spr_axeup;
		spr_down = spr_axedown;
		spr_right = spr_axeright;
		spr_left = spr_axeleft;
		spr_idle = spr_axeidle;
		spr_hurt = spr_axehurt;
		instance_destroy(drainer)
		if room == rm_Beach or rm_Shop{
		SetMusic(mus_SWORD_Alt,240,240)
		}
		DEF += 2
		ATK -= 1.5
		KnockbackMult = 1
		Magic -= 0.5
		beserked = false
		}
		State = PlayerStateFree
	}
}