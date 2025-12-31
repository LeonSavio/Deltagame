function Erradicate(Attacker,Taker) {
	if (Attacker.LV >= Taker.LVNeeded){
		if (Taker.sprite_index != spr_sparkles){
	if Attacker.sprite_index != spr_iceshock{
	audio_play_sound(snd_kill,1,false)
    Taker.sprite_index = spr_sparkles
	Taker.image_speed = 1
	Taker.image_xscale = 1
	Taker.image_yscale = 1
	Taker.State = "dying";
	if (Attacker.LV < 4){
	par_player.EXP += Taker.EXPDrop
	par_player.TP += 2
	}
	} else {
		if Taker.sprite_index != spr_iceshoked{
		audio_play_sound(snd_icespell,1,false)
		instance_create_layer(Taker.x,Taker.y,Taker.layer,obj_iceflake)
		instance_destroy(Taker)
		if (Attacker.LV < 4){
		par_player.EXP += Taker.EXPDrop
		par_player.TP += 1.5
	}
		}
		if Taker.sprite_index == spr_iceshoked{
		instance_destroy(Attacker.collider)
		instance_destroy(Attacker)
		}
	}
	}
	}
	else {
		if !audio_is_playing(snd_strikemetal){
		audio_play_sound(snd_strikemetal,0,false)}
	}
}
