function NewText(){
var _obj;
if instance_exists(obj_dialogue){	
	_obj = obj_dialogueseq;
	} else {_obj = obj_dialogue}
with (instance_create_layer(0,0,"Objects",_obj)){
	message = argument[0];
	if instance_exists(other){	originInstance = other.id} else originInstance = noone;
}

with (par_player)
{
		State = PlayerStateAiming
}
}
