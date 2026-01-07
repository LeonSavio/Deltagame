function HurtPlayer(Attacker, Player){
	if (Player.IFrames != true){
	Player.HP = Player.HP - clamp((Attacker.ATK - Player.DEF),1,999)
	Hurted(Attacker, 9*Player.KnockbackMult, 8, 45*Player.IFramesMult)
	audio_play_sound(snd_hurt,0,false,global.SEVolume)
	}
}