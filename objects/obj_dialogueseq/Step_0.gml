if (ticket == 0){
	var _newDialog = instance_create_layer(x,y,"Objects", obj_dialogue)
	_newDialog.message = message
	instance_destroy()
}