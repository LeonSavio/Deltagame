if room == rm_Beach or room == rm_Shop{
	room_persistent = true
}
if room == rm_Victory{
	if !instance_exists(obj_victory){
	instance_create_layer(472, 252,"Instances", obj_victory)
	}
}