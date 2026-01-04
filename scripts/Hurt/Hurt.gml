function Hurt(Attacker, Enemy, KBForce){
	Enemy.Hitted = true;
	if (Attacker.LV >= Enemy.LVNeeded && Enemy.IFrames != true){
	if Attacker.sprite_index == spr_iceshock{
	Enemy.HP -= Attacker.ATK
	Enemy.Freezing = 45;
	Attacker.TP += 0.1225
	Enemy.Cd += 5
	} 
	if Attacker.sprite_index == spr_fireball{
	Enemy.Burning += (Attacker.Magic/2)-0.5
	Attacker.TP += 0.1
	}
	if Attacker.sprite_index != spr_iceshock &&  Attacker.sprite_index != spr_fireball{
	Enemy.HP -= Attacker.ATK
	Attacker.TP += 0.2
	}
	if Enemy.HP < 0 {
	Erradicate(Attacker,Enemy)
	}
	Hurted(Attacker, KBForce, 10, 30-(6*instance_number(par_player)))
	audio_play_sound(snd_damage,0,false)
	} if (Attacker.LV < Enemy.LVNeeded) {
		audio_play_sound(snd_strikemetal,0,false)
	}
}

