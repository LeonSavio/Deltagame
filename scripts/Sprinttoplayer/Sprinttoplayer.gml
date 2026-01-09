function Sprinttoplayer(){
if instance_exists(par_player){

var xp = instance_nearest(x,y,par_player).x
var yp = instance_nearest(x,y,par_player).y

directiongo = point_direction(x,y,xp,yp)
dir = round(directiongo/90)
var distance = (point_distance(x,y,xp,yp))

if Stamina >= StaminaMax{
Sprint = true
}
if Stamina <= 0{
Sprint = false
}
if Sprint == true{
spd = spdbase*1.3
Stamina--
}
if Sprint == false{
spd = spdbase*.75
Stamina++
}

if distance <= 32*Range || Hitted = true{
	mp_potential_step(xp,yp,spd,false)
	image_speed = 1.2;
} else {
	image_index = 0;
	image_speed = 0;
}
}
}

