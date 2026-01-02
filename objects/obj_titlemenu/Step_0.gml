var upk = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var downk = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var confirmk = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var cancelk = keyboard_check_pressed(ord("X"))  || keyboard_check_pressed(vk_shift);

//Faz um loop entre as opções

pos += downk - upk
if upk || downk {
	audio_play_sound(snd_menumove,0,false);
}

if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1}

//Faz o uso da opção escolhida
if confirmk {

var _menulevel = menu_level

switch(menu_level){	
	//Main Menu
	case 0:
		switch(pos){
			//Play
			case 0: 
			obj_soul.canmove = false
			obj_soul.targetx = room_width/2
			obj_soul.targety = room_height/2
			audio_play_sound(snd_select,0,false);
			var target = (rm_Beach)
			TransitionStart(target,seq_fadeout, seq_fadein)
			break;
			//Settings
			case 1: menu_level = 1; 
			audio_play_sound(snd_select,0,false); break;
			//Credits
			case 2: 
			audio_play_sound(snd_error,0,false); break;
			//Exit
			case 3: game_end() break;
		}
		break;
		
	//Settings
	case 1:
		switch(pos){
			//Windowsize
			case 0: audio_play_sound(snd_error,0,false); break;
			//Controls
			case 1: menu_level = 2; audio_play_sound(snd_select,0,false); break;
			//Back
			case 2: menu_level = 0; audio_play_sound(snd_select,0,false); break;
		}
		break;
		
	case 2:
		switch(pos){
			//Back
			case 21: menu_level = 1; audio_play_sound(snd_select,0,false); break;
		}
		break;
}
	
//Bota na primeira opção quando você vai e volta de um menu
if _menulevel != menu_level {pos = 0}

}


layer_set_visible("PlayerOne",false)
layer_set_visible("PlayerTwo",false)


obj_soul.targetx = x+borderspace-(12*(string_length(options[menu_level][pos]))+1)
obj_soul.targety = y + (textspace * pos)