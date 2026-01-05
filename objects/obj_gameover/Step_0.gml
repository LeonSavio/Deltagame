var upk = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
var downk = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
var confirmk = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var cancelk = keyboard_check_pressed(ord("X"))  || keyboard_check_pressed(vk_shift);

//Faz um loop entre as opções

pos += downk - upk
if upk || downk {
	audio_play_sound(snd_menumove,0,false);
}
if downk - upk != 0{
obj_soul.canmove = true
}


if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1}

//Faz o uso da opção escolhida
if confirmk {

		switch(pos){
			//Retry
			case 0: 
			global.GameStarted = false
			var target = rm_TitleScreen
			TransitionStart(target,seq_fadeout, seq_fadein);
			global.FullPlayer = false;
			 break;
			//Giveup
			case 1:  
			game_end(); break;
		}}

if cancelk{
	pos = 1
}

for (var i = 0; i < 3; i++){
	
	var idx = string(i+1)
	
	layer_set_visible("Player"+idx,false)
	layer_set_visible("TpBar"+idx,false)

}

if(obj_soul.canmove == true){
	obj_soul.targetx = x+(256*pos)-128-(16*(string_length(options[pos]))+1)
}