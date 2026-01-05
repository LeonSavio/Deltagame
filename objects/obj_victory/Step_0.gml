var confirmk = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);

if confirmk && clicked == false{	
	global.GameStarted = false;
	global.PlayersDown = 0;
	audio_play_sound(snd_select,0,false);
	var target = rm_TitleScreen
	TransitionStart(target,seq_fadeout, seq_fadein);
	global.FullPlayer = false;	
	clicked = true;
}

for (var i = 0; i < 3; i++){
	
	var idx = string(i+1)
	
	layer_set_visible("Player"+idx,false)
	layer_set_visible("TpBar"+idx,false)

}