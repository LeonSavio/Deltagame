if instance_number(par_player) = 1{
if (keyboard_check_pressed(vk_enter) && 
!instance_exists(obj_herochoose) &&
!instance_exists(obj_player2summon) &&
global.FullPlayer == false){
	instance_create_layer(x,y, layer, obj_player2summon);
}}
if instance_number(par_player) = 2{
if (keyboard_check_pressed(ord("E")) && 
!instance_exists(obj_herochoose) &&
!instance_exists(obj_player2summon) &&
global.FullPlayer == false){
	instance_create_layer(x,y, layer, obj_player2summon);
}}

//Isso tem mais condições do que eu me orgulho


if room == rm_Beach && instance_exists(par_player){
global.time += 1/FRAME_RATE
}

if room == rm_Beach && instance_number(par_enemy) <= 0{
	room_goto(rm_Victory)
}
if room == rm_Victory{
instance_create_layer(472, 252,"Instances", obj_victory)}


#region Debug Keys

if (keyboard_check_pressed(vk_f4)){
	if window_get_fullscreen() == true{
		window_set_fullscreen(false)
	} else {
		window_set_fullscreen(true)
	}
}

if (keyboard_check_pressed(vk_f5)){
	game_restart()
}

if keyboard_check_pressed(vk_f2){
	obj_wall.visible = !obj_wall.visible
}

if keyboard_check_pressed(vk_f3){
global.show_hp = !global.show_hp
}

if keyboard_check_pressed(vk_pagedown){
	room_goto_previous()
}

if keyboard_check_pressed(vk_pageup){
	room_goto_next()
}

#endregion
