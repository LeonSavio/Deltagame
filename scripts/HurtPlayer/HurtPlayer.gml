function HurtPlayer(Attacker, Enemy){
	if (Enemy.IFrames != true){
	Enemy.HP = Enemy.HP - Attacker.ATK
	Hurted(Attacker, 9, 8, 45)
	audio_play_sound(snd_hurt,0,false)
	}
	if (Enemy.HP <= 0){
		room_goto(rm_Gameover)
		
}
}