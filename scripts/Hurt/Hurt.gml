function Hurt(Attacker, Enemy, KBForce){
	Enemy.Hitted = true;
	if (Attacker.LV >= Enemy.LVNeeded && Enemy.IFrames != true){
	if Attacker.sprite_index == spr_iceshock{
	Enemy.HP -= Attacker.ATK
	Enemy.Freezing = 65
	show_debug_message(Enemy.HP);} 
	if Attacker.sprite_index == spr_fireball{
	Enemy.Burning += 1
	}
	else {
	Enemy.HP = Enemy.HP - Attacker.ATK
	show_debug_message(Enemy.HP);
	}
	Hurted(Attacker, KBForce, 10, 30)
	audio_play_sound(snd_damage,0,false)
	} if (Attacker.LV < Enemy.LVNeeded) {
		audio_play_sound(snd_strikemetal,0,false)
	}
	if (Enemy.HP <= 0){
		Erradicate(Attacker, Enemy)
	}
}

