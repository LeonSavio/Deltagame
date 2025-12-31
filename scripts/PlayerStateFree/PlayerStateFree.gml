function PlayerStateFree(){
//Controles do personagem

var rightk = keyboard_check(Right)
var leftk = keyboard_check(Left)
var upk = keyboard_check(Up)
var downk = keyboard_check(Down)
var stayidleplease = keyboard_check_released(Down)
var attackk = keyboard_check_pressed(Confirm)
var taughtk = keyboard_check_pressed(Taught)

//Define velocidades
hspd = (rightk - leftk) * spd;
vspd = (downk - upk) * spd;

//Define a direção do personagem
var inputDirection = point_direction(0,0, rightk - leftk, downk - upk); 
var inputMagnitude = (rightk - leftk != 0) || (downk - upk != 0);

//colisões de movimentação
if TileColl(x+hspd, y){
	hspd = 0;
}

if TileColl(x, y+vspd){
	vspd = 0;
}

if place_meeting(x+hspd, y, obj_wall) || place_meeting(x, y+vspd, obj_projectfriendly){
	hspd = 0;
}

if place_meeting(x, y+vspd, obj_wall) || place_meeting(x, y+vspd, obj_projectfriendly){
	vspd = 0;
}

//Movimentação
x += hspd;
y += vspd;

if (vspd > 0) { 
	sprite_index = spr_down; 
} else if (vspd < 0) { 
	sprite_index = spr_up; 
	}
	
if (hspd > 0) { 
	sprite_index = spr_right; 
} else if (hspd < 0) { 
	sprite_index = spr_left; 
}

if (hspd == 0 && vspd == 0){
	image_index = 0;
	image_speed = 0;
} else {
	image_speed = 1.2;
}

if stayidleplease{
	sprite_index = spr_idle
}

if (inputMagnitude != 0){ 
	direction = inputDirection 
}

if (attackk && AttackCd == 0) {
	State = PlayerStateAttack
	AttackCd = AttackCdMax
}

if AttackCd > 0{
	AttackCd -= 1
}

if taughtk && !audio_is_playing(taughtaudio) && taughtaudio != 0{
	audio_play_sound(taughtaudio,0,false)
}

if (keyboard_check_pressed(Camera)){
	obj_camera.target = self
}

if(keyboard_check_pressed(Change)){
	pos += 1
}

if pos >= array_length(StateAttack) {pos = 0};
if pos < 0 {pos = array_length(StateAttack)-1}

}

