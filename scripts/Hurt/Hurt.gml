function Hurt(Attacker, Enemy, KBForce){
	Enemy.Hitted = true;
	if (Attacker.LV >= Enemy.LVNeeded && Enemy.IFrames != true){
		
	//Ataque de gelo
	if Attacker.sprite_index == spr_iceshock{
	Enemy.HP -= Attacker.ATK
	Enemy.Freezing = 45;
	Attacker.TP += 0.1225
	Enemy.Cd += 25
	/**
	if variable_instance_exists(Enemy,Stamina){
	Stamina -= 30
	}**/
	
	//Ataque de fogo
	} else
	if Attacker.sprite_index == spr_fireball{
	Enemy.Burning += (Attacker.Magic/2)-0.5
	Attacker.TP += 0.1
	/**
	if variable_instance_exists(Enemy,Stamina){
	Stamina -= 15
	}**/
	
	//Ataque normal
	} else
	if Attacker.sprite_index != spr_iceshock &&  Attacker.sprite_index != spr_fireball{
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

