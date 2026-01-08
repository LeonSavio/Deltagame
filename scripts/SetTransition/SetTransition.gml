global.roomTarget = -1
global.TransitionEnd = -1

function SetTransition(_typeOut, _typeIn, _roomTarget, targetx = 0, targety = 0){
	if instance_exists(par_player){
	par_player.State = PlayerStateAiming
	}
	StartTransition(_typeOut)
	global.roomTarget = _roomTarget
	global.Spawnx = targetx
	global.Spawny = targety
	global.TransitionEnd = _typeIn
}

function StartTransition(_type){
	if (layer_exists("Transitions")) {layer_destroy("Transitions")};
	var lay = layer_create(-9999, "Transitions")
	
	//Cria transição pra dois players
	if window_get_width() == 1280{
		for (var i = 0; i < 2; i++){
		global.SequencePlaying = layer_sequence_create(lay,global.Player[i].x,global.Player[i].y,_type)
		}
	} else {
	if instance_number(par_player) == 0{
	//Transição pra zero players/menus
		global.SequencePlaying = layer_sequence_create(lay,
		(camera_get_view_width(view_camera[0])*0.5),
		(camera_get_view_height(view_camera[0])*0.5),
		_type)
	} else {
		global.SequencePlaying = layer_sequence_create(lay,
		global.Player[0].x,
		global.Player[0].y,
		_type)
	}
	
	}
}

function MiddleTransition(){
	layer_sequence_pause(self.elementID)
	if instance_exists(par_player){
	par_player.x = global.Spawnx
	par_player.y = global.Spawny
	}
	room_goto(global.roomTarget)
	layer_sequence_play(self.elementID)
	if instance_exists(par_player){
	par_player.State = PlayerStateFree
	}
	EndTransition()
}

function EndTransition(){
	StartTransition(global.TransitionEnd)
	layer_sequence_destroy(self.elementID)
}

function FinishTransition(){
	global.TransitionEnd = -1
	layer_sequence_destroy(self.elementID)
}