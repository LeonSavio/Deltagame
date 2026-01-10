global.roomTarget = -1
global.TransitionEnd = -1

function SetTransition(_typeOut, _typeIn, _roomTarget, targetx = 0, targety = 0, soundeffect = false){
	if instance_exists(par_player){
	par_player.State = PlayerStateAiming
	}
	global.roomTarget = _roomTarget
	global.Spawnx = targetx
	global.Spawny = targety
	global.TransitionEnd = _typeIn
	StartTransition(_typeOut)
	if soundeffect == true{audio_play_sound(snd_escaped,6,false,global.SEVolume,0,0.9)}
}

function StartTransition(_type){
	if (layer_exists("Transitions")) {layer_destroy("Transitions")};
	var lay = layer_create(-9999, "Transitions")
	
	//Cria transição pra dois players

if (instance_number(par_player) < 10) {	
	global.SequencePlaying = layer_sequence_create(lay,window_get_width()/2,window_get_height()/2,_type)
} /*else {
	global.SequencePlaying = layer_sequence_create(lay,window_get_width()/4,window_get_height()/2,_type)
	}*/
}

function MiddleTransition(){
	layer_set_target_room(global.roomTarget)
	layer_sequence_destroy(self.elementID);
	if instance_exists(par_player){
	par_player.x = global.Spawnx
	par_player.y = global.Spawny
	}
	room_goto(global.roomTarget)
	StartTransition(global.TransitionEnd)
	layer_reset_target_room()
}



function FinishTransition(){
	if instance_exists(par_player){
	par_player.State = PlayerStateFree
	}
	layer_sequence_destroy(self.elementID);
}
