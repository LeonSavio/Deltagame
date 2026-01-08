var confirmk = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);

if confirmk && clicked == false{
	audio_play_sound(snd_select,0,false,global.SEVolume);
	TrueReset()
	SetTransition(seq_fadeout,seq_fadein,rm_TitleScreen)
	clicked = true;
}

for (var i = 0; i < 3; i++){
	
	var idx = string(i+1)
	
	layer_set_visible("Player"+idx,false)
	layer_set_visible("TpBar"+idx,false)

}