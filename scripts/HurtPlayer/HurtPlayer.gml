function HurtPlayer(Attacker, Enemy){
	if (Enemy.IFrames != true){
	Enemy.HP = Enemy.HP - Attacker.ATK
	Hurted(Attacker, 4, 9, 35)
	audio_play_sound(snd_hurt,0,false)
	}
	if (Enemy.HP <= 0){
		room_goto(rm_Gameover)
		
}
}