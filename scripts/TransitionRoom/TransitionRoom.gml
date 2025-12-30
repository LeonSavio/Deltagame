function TransitionRoom(){
	if (layer_exists("Transitions")) layer_destroy("Transitions");
	var lay = layer_create(-9999, "Transitions")
	layer_sequence_create(lay,0,0,lay)
}