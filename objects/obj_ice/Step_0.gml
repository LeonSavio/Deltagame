// Inherit the parent event
event_inherited();

coll.x = x
coll.y = y

if place_meeting(x-4,y,par_player) && keyboard_check_pressed(par_player.Right) && par_player.direction == 0 && !TileColl(x+16,y){
	x+=32
}
if place_meeting(x+4,y,par_player) && keyboard_check_pressed(par_player.Left) && !TileColl(x-16,y) && par_player.direction == 180{
	x-=32
}
if place_meeting(x,y-4,par_player) && keyboard_check_pressed(par_player.Down) && !TileColl(x,y+16)&& par_player.direction == 270{
	y+=32
}
if place_meeting(x,y+4,par_player) && keyboard_check_pressed(par_player.Up) && !TileColl(x,y-16) && par_player.direction == 90{
	y-=32
}