function Hurt(Attacker, Enemy, KBForce){
	Enemy.Hitted = true;
	if (Attacker.LV >= Enemy.LVNeeded && Enemy.IFrames != true){
		
	//Ataque de gelo
	if Attacker.sprite_index == spr_iceshock{
	Enemy.HP -= Attacker.ATK
	Enemy.Freezing = 45;
	Attacker.TP += 0.1225
	Enemy.Cd += 25
	
	var part = instance_create_depth(Enemy.x,Enemy.y,depth-1,obj_particle);
	part.owner = self
	
	/*
	part.sprite_index = spr_icehit
	part.image_xscale = .75
	part.image_yscale = .75

	if variable_instance_exists(Enemy,Stamina){
	Stamina -= 30
	}**/
	
	//Ataque de fogo
	} else if Attacker.sprite_index == spr_fireball{
	Enemy.Burning += (Attacker.Magic/2)-0.5
	Attacker.TP += 0.1
	/**
	if variable_instance_exists(Enemy,Stamina){
	Stamina -= 15
	}**/
	
	} else if Attacker.sprite_index == spr_rudebuster or  Attacker.sprite_index == spr_redbuster or  Attacker.sprite_index == spr_greenbuster{
	Enemy.HP -= Attacker.ATK
	Attacker.TP += 0.2
	
	var part = instance_create_depth(Enemy.x,Enemy.y,depth-1,obj_particle);
	part.owner = self
	part.sprite_index = spr_rudehit
	part.image_xscale = .75*Attacker.ATK
	part.image_yscale = .75*Attacker.ATK
	
	//Ataque normal
	} else {
	Enemy.HP -= Attacker.ATK
	Attacker.TP += 0.2
	/*if variable_instance_exists(Enemy,Stamina){
	Stamina -= 10
	}*/
	}
	
	//Finaliza
	if Enemy.HP <= 0 {
	Erradicate(Attacker,Enemy)
	}
	
	//efeitos gerais
	Hurted(Attacker, KBForce, 10, 30-(6*instance_number(par_player)))
	audio_play_sound(snd_damage,0,false,global.SEVolume)
	
	//Não consegue atacar
	} if (Attacker.LV < Enemy.LVNeeded) {
		audio_play_sound(snd_strikemetal,0,false,global.SEVolume)
	}
}

