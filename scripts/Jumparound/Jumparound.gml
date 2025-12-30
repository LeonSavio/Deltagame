function Jumparound(){

if instance_exists(par_player){
var xp = instance_nearest(x,y,par_player).x
var yp = instance_nearest(x,y,par_player).y

show_debug_message(State)
show_debug_message(Cd)

if State == "notdying"{
targetx = xp
targety = yp
}

if (point_distance(xp,yp,x,y) >= 200) && Cd == 0{
State = "Flying"
}

if State == "Flying"{
	IFrames = true;
	move_towards_point(targetx,targety,spd)
}
}
}