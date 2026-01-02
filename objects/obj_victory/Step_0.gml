var confirmk = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);

if confirmk {
	audio_play_sound(snd_select,0,false);
	var target = rm_TitleScreen
	TransitionStart(target,seq_fadeout, seq_fadein);
}

layer_set_visible("PlayerOne",false)
layer_set_visible("PlayerTwo",false)
layer_set_visible("PlayerThree",false)