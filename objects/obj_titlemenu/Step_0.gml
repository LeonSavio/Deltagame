var upk = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var downk = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var rightk = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
var leftk = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
var confirmk = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var cancelk = keyboard_check_pressed(ord("X"))  || keyboard_check_pressed(vk_shift);

if global.main_gamepad != undefined{
	rightk = gamepad_button_check_pressed(global.main_gamepad,gp_padr)
	leftk = gamepad_button_check_pressed(global.main_gamepad,gp_padl)
	upk = gamepad_button_check_pressed(global.main_gamepad,gp_padu)
	downk = gamepad_button_check_pressed(global.main_gamepad,gp_padd)
	confirmk = gamepad_button_check_pressed(global.main_gamepad,gp_face1)
	cancelk = gamepad_button_check_pressed(global.main_gamepad,gp_face2)
}

//Faz um loop entre as opções

pos += downk - upk
if upk || downk {
	audio_play_sound(snd_menumove,0,false,global.SEVolume);
}

op_length = array_length(options[menu_level]);

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
			SetTransition(seq_fadeout,seq_fadein, target)
			break;
			//Settings
			case 1: menu_level = 1; 
			audio_play_sound(snd_select,0,false,global.SEVolume); break;
			//Credits
			case 2: 
			audio_play_sound(snd_error,0,false,global.SEVolume); break;
			//Exit
			case long[0]: game_end() break;
		}
		break;
		
	//Settings
	case 1:
		switch(pos){
			//Controls
			case 2: menu_level = 2; audio_play_sound(snd_select,0,false,global.SEVolume); break;
			//Back
			case long[1]: menu_level = 0; audio_play_sound(snd_select,0,false,global.SEVolume); break;
		}
		break;
		
	//Controls
	case 2:
		switch(pos){
			//Back
			case long[2]: menu_level = 1; audio_play_sound(snd_select,0,false,global.SEVolume); break;
		}
		break;
}
	
	
//Bota na primeira opção quando você vai e volta de um menu
if _menulevel != menu_level {pos = 0}

}

obj_soul.targetx = x+borderspace-(12*(string_length(options[menu_level][pos]))+1)
obj_soul.targety = y + (textspace * pos)

//Volume change

options[1][0] = "Volume: " + string(global.MusicVolume*100) + "%"
options[1][1] = "Sound Effects: " + string(global.SEVolume*100) + "%"
if menu_level == 1 && pos == 0{
if rightk{
global.MusicVolume += .01
}
if leftk{
global.MusicVolume -= .01

}
}
if menu_level == 1 && pos == 1{
if rightk{
global.SEVolume += .01
}
if leftk{
global.SEVolume -= .01

}
}