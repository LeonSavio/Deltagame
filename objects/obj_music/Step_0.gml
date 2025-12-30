if keyboard_check_pressed(global.controls.Mute){
	if pause == 0{
		pause = 1
		audio_stop_sound(playing)
	} else{
	pause = 0
	}
}

if pause == 0 {
switch(room){
	case rm_Test: 

	if !audio_is_playing(mus_SWORD){
	audio_stop_sound(playing)
	playing = mus_SWORD
	audio_play_sound(mus_SWORD,-1,true,music)
	}
	break;
	
	case rm_Beach: 
	audio_stop_sound(mus_Dump)
	if instance_exists(par_player){
	if par_player.division <= 6{
	if !audio_is_playing(mus_SWORD){
	audio_stop_sound(playing)
	playing = mus_SWORD
	audio_play_sound(mus_SWORD,-1,true,music)
	}
	}
	}
	
	if instance_exists(par_player){
	if par_player.division = 7{
	if !audio_is_playing(mus_GLACEIR){
	audio_stop_sound(playing)
	playing = mus_GLACEIR
	audio_play_sound(mus_GLACEIR,-1,true,music)
	}
	}
	}
	
	if instance_exists(par_player){
	if par_player.division > 7{
	if !audio_is_playing(mus_BIT_ROOTS){
	audio_stop_sound(playing)
	playing = mus_BIT_ROOTS
	audio_play_sound(mus_BIT_ROOTS,-1,true,music)
	}
	}
	}
	break;
	
	case rm_TitleScreen: 
	if !audio_is_playing(mus_Dump){
	audio_stop_sound(playing)
	playing = mus_Dump
	audio_play_sound(mus_Dump,-1,true,music)
	}
	break;
}}
