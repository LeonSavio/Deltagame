global.midTransition = false
global.roomTarget = -1;

function TransitionPlacer(_type){
	if (layer_exists("Transitions")) {layer_destroy("Transitions")};
	var lay = layer_create(self.depth, "Transitions")
	layer_sequence_create(lay,0,0,_type)
}

function TransitionStart(_roomTarget, _typeOut, _typeIn){
	if (!global.midTransition){
		global.midTransition = true
		global.roomTarget = _roomTarget
		TransitionPlacer(_typeOut)
		layer_set_target_room(_roomTarget);
		TransitionPlacer(_typeIn)
		layer_reset_target_room();
}
}

function TransitionChangeRoom(){
	room_goto(global.roomTarget);
}

function TransitionFinished(){
	layer_sequence_destroy(self.elementID)
	global.midTransition = false;
}