if instance_number(par_player) = 1{
if (keyboard_check_pressed(vk_enter) && 
!instance_exists(obj_herochoose) &&
layer_exists("Objects") && 
!instance_exists(obj_player2summon) &&
global.FullPlayer == false){
	instance_create_layer(x,y, "Objects", obj_player2summon);
}}
if instance_number(par_player) = 2{
if (keyboard_check_pressed(ord("E")) && 
!instance_exists(obj_herochoose) &&
layer_exists("Objects") && 
!instance_exists(obj_player2summon) &&
global.FullPlayer == false){
	instance_create_layer(x,y, "Objects", obj_player2summon);
}}

//Isso tem mais condições do que eu me orgulho

if (keyboard_check(vk_f5)){
	game_restart()
}

if keyboard_check_pressed(vk_pagedown){
	room_goto_previous()
}
if keyboard_check_pressed(vk_pageup){
	room_goto_next()
}

if room == rm_Beach && instance_exists(par_player){
global.time += 1/FRAME_RATE
}

if room == rm_Beach && instance_number(par_enemy) <= 0{
	room_goto(rm_Victory)
}
if room == rm_Victory{
instance_create_layer(472, 252,"Instances", obj_victory)}


if keyboard_check_pressed(vk_f2){
	if obj_wall.visible == false {obj_wall.visible = true} else {
		 obj_wall.visible =  false
	}
}

if keyboard_check_pressed(vk_f3){
	if (layer_get_visible(layer_get_id("Collisions"))) == false{
		 (layer_set_visible(layer_get_id("Collisions"),true))
	} else {
		 (layer_set_visible(layer_get_id("Collisions"),false))
	}
}

if keyboard_check_pressed(vk_f9){
	if (global.show_hp) == false{
		 (global.show_hp) = true
	}
	if (global.show_hp) == true{
		 (global.show_hp) = false
	}
}

