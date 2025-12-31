// Inherit the parent event
event_inherited();

if instance_exists(obj_hud){
if Player == 1{
	obj_hud.TPVisible1 = true
}
if Player == 2{
	obj_hud.TPVisible2 = true
}
if Player == 3{
	obj_hud.TPVisible3 = true
}
}

