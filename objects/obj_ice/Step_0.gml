// Inherit the parent event
event_inherited();

coll.x = x
coll.y = y

if place_meeting(coll.x-4,coll.y,par_player) && keyboard_check(par_player.Right) && par_player.direction == 0 && !place_meeting(coll.x-4,coll.y,[obj_projectfriendly, obj_wall]){
	x+=4
}
if place_meeting(coll.x+4,coll.y,par_player) && keyboard_check(par_player.Left) && par_player.direction == 180 && !place_meeting(coll.x+4,coll.y,[obj_projectfriendly, obj_wall]){
	x-=4
}
if place_meeting(coll.x,coll.y-4,par_player) && keyboard_check(par_player.Down)&& par_player.direction == 270 && !place_meeting(coll.x,coll.y-4,[obj_projectfriendly, obj_wall]){
	y+=4
}
if place_meeting(coll.x,coll.y+4,par_player) && keyboard_check(par_player.Up) && par_player.direction == 90 && !place_meeting(coll.x,coll.y-4,[obj_projectfriendly, obj_wall]){
	y-=4
}