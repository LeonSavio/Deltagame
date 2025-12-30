var confirmk = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);

if confirmk {
	audio_play_sound(snd_select,0,false);
	game_restart()
}

layer_set_visible("PlayerOne",false)
layer_set_visible("PlayerTwo",false)