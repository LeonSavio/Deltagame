function Erradicate(Attacker,Taker) {
	if (Attacker.LV >= Taker.LVNeeded){
		if (Taker.sprite_index != spr_sparkles){
	audio_play_sound(snd_kill,1,false)
	if (Attacker.LV != 4){
	par_player.EXP += Taker.EXPDrop
	par_player.TP += 2
	}
	}
	if Attacker.sprite_index != spr_iceshock{
    Taker.sprite_index = spr_sparkles
	Taker.image_speed = 1
	Taker.image_xscale = 1
	Taker.image_yscale = 1
	Taker.State = "dying";
	if Taker.sprite_index = spr_iceshoked{ instance_destroy(Taker.coll) instance_destroy(Taker) }
	} else {
	audio_play_sound(snd_icespell,1,false)
	if Taker.sprite_index != spr_iceblock{
	instance_create_layer(Taker.x,Taker.y,Taker.layer,obj_iceflake)}
	instance_destroy(Taker)
	}
	}
	else {
		if !audio_is_playing(snd_strikemetal){
		audio_play_sound(snd_strikemetal,0,false)}
		if Attacker.sprite_index = spr_iceshock|| Attacker.sprite_index = atk_greenbuster|| Attacker.sprite_index = atk_rudebuster|| Attacker.sprite_index = atk_redbuster{
		instance_destroy(Attacker.collider)
		instance_destroy(Attacker)
		}
	}
}
