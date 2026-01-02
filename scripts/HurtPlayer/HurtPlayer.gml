function HurtPlayer(Attacker, Enemy){
	if (Enemy.IFrames != true){
	Enemy.HP = Enemy.HP - Attacker.ATK
	Hurted(Attacker, 9, 8, 45)
	audio_play_sound(snd_hurt,0,false)
	}
	if (Enemy.HP <= 0){
		instance_destroy(par_player)
		var target = (rm_Gameover)
		TransitionStart(target, seq_fadeout, seq_fadein)
		
}
}