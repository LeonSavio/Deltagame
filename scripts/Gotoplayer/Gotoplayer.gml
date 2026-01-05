function Gotoplayer(){
if instance_exists(par_player){

var xp = instance_nearest(x,y,par_player).x
var yp = instance_nearest(x,y,par_player).y

directiongo = point_direction(x,y,xp,yp)
dir = round(directiongo/90)

if State != "Stunned"{
switch(dir){
	case 0: sprite_index = spr_right;
	break;
	
	case 1: sprite_index = spr_up;
	break;
	
	case 2: sprite_index = spr_left;
	break;
	
	case 3: sprite_index = spr_down;
	break;
}
}

if (point_distance(x,y,xp,yp) <= 175) || Hitted = true{
	mp_potential_step(xp,yp,spd,false)
	image_speed = 1.2;
} else {
	image_index = 0;
	image_speed = 0;
}
}
}

