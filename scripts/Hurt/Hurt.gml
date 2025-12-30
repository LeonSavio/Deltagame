function Hurt(Attacker, Enemy, KBForce){
	Enemy.Hitted = true;
	if (Attacker.LV >= Enemy.LVNeeded && Enemy.IFrames != true){
	if Attacker.sprite_index != spr_iceshock{
	Enemy.HP = Enemy.HP - Attacker.ATK} else {
	Enemy.HP = Enemy.HP - Attacker.ATK
	Enemy.Freezing = 85
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