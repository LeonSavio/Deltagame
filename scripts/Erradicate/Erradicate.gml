function Erradicate(Attacker,Taker) {
	if(instance_exists(par_player)) {
	if (Attacker.LV >= Taker.LVNeeded){
		if (Taker.sprite_index != spr_sparkles){
	if Attacker.sprite_index != spr_iceshock{
	audio_play_sound(snd_kill,1,false,global.SEVolume)
    Taker.sprite_index = spr_sparkles
	Taker.image_speed = 1
	Taker.image_xscale = 1
	Taker.image_yscale = 1
	Taker.State = "dying";
	if (Attacker.LV < 4){
	par_player.EXP += Taker.EXPDrop
	}
	for (var i = 0; i < instance_number(par_player); i++){
	global.Player[i].TP += 2
	}
	global.Gold += Taker.GoldDrop
	} else {
		if Taker.sprite_index != spr_iceshoked{
		audio_play_sound(snd_icespell,1,false,global.SEVolume)
		instance_create_layer(Taker.x,Taker.y,Taker.layer,obj_iceflake)
		instance_destroy(Taker)
		if (Attacker.LV < 4){
		par_player.EXP += Taker.EXPDrop
			for (var i = 0; i < instance_number(par_player); i++){
			global.Player[i].TP += 1.5
			}
	}
		}
		if Taker.sprite_index == spr_iceshoked{
		instance_destroy(Attacker.collider)
		instance_destroy(Attacker)
		if !audio_is_playing(snd_strikemetal){
		audio_play_sound(snd_strikemetal,0,false,global.SEVolume)}
		}
	}
	}
	}
	else {
		if !audio_is_playing(snd_strikemetal){
		audio_play_sound(snd_strikemetal,0,false,global.SEVolume)}
	}
}
}