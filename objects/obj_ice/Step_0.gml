// Inherit the parent event
event_inherited();

coll.x = x
coll.y = y

if place_meeting(x-4,y,par_player) && keyboard_check(par_player.Right) && par_player.direction == 0{
	x+=1
}
if place_meeting(x+4,y,par_player) && keyboard_check(par_player.Left) && par_player.direction == 180{
	x-=1
}
if place_meeting(x,y-4,par_player) && keyboard_check(par_player.Down)&& par_player.direction == 270{
	y+=1
}
if place_meeting(x,y+4,par_player) && keyboard_check(par_player.Up) && par_player.direction == 90{
	y-=1
}