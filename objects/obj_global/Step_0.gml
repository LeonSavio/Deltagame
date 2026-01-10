if instance_number(par_player) = 1{
if (keyboard_check_pressed(vk_enter) && 
!instance_exists(obj_herochoose) &&
!instance_exists(obj_player2summon) &&
global.FullPlayer == false) && room != rm_Shop {
	instance_create_layer(x,y, layer, obj_player2summon);
}}
if instance_number(par_player) = 2{
if (keyboard_check_pressed(ord("E")) && 
!instance_exists(obj_herochoose) &&
!instance_exists(obj_player2summon) &&
global.FullPlayer == false) && room != rm_Shop {
	instance_create_layer(x,y, layer, obj_player2summon);
}}
//Isso tem mais condições do que eu me orgulho^2

if !instance_exists(obj_music){
	instance_create_layer(x,y,layer,obj_music)
}

if room == rm_Beach && instance_exists(par_player){
global.time += 1/FRAME_RATE
}

if room == rm_Beach && instance_number(par_enemy) <= 10{
	SetMusic(mus_NORTHERNLIGHT_Alt, 120, 240)
	layer_set_visible(layer_get_id("Calor"), false)
	layer_set_visible(layer_get_id("Night1"), true)
	layer_set_visible(layer_get_id("Night2"), true)
}
if room == rm_Beach && instance_number(par_enemy) <= 0{
	TrueReset()
	room_goto(rm_Victory)
	SetResolution()
}
if room == rm_Shop{
	if global.restartShop == true {room_persistent = false; room_restart();	global.restartShop = false;}
}


#region Debug Keys

if keyboard_check_pressed(vk_f6){
global.MusicVolume = 0
global.SEVolume = 0
}
if keyboard_check_pressed(vk_subtract){
global.MusicVolume -= 0.1
global.SEVolume -= 0.1
}
if keyboard_check_pressed(vk_add){
global.MusicVolume += 0.1
global.SEVolume += 0.1
}

if keyboard_check_pressed(vk_numpad2){
global.Gold += 1
}
if keyboard_check_pressed(vk_numpad1){
par_player.TP += 1
}

if (keyboard_check_pressed(vk_f4)){
	if window_get_fullscreen() == true{
		window_set_fullscreen(false)
	} else {
		window_set_fullscreen(true)
	}
}

if (keyboard_check_pressed(vk_f5)){
	TrueReset()
	game_restart()
}

if keyboard_check_pressed(vk_f2) {
    global.show_walls = !global.show_walls;
}

with (obj_wall) {
    visible = global.show_walls;
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

if global.PlayersDown == instance_number(par_player) && global.GameStarted == true{
	SetTransition(seq_fadeout,seq_fadein,rm_Gameover)
	SetMusic(mus_Darkness_Falls,60,60)
	TrueReset()
}