var confirmk = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
if global.main_gamepad != undefined{
	confirmk = gamepad_button_check_pressed(global.main_gamepad,gp_face1)
}

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