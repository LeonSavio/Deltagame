function BirdFlyup(){
var target = instance_nearest(x,y,par_player)
if distance_to_object(target) < (32*Range) && Cd <= 0 || Hitted = true  && Cd <= 0{

	if y > originy-32{
		sprite_index = spr_bluebirdflying
		y -= 0.75
		z = originy-y
	} else {
	targetx = target.x
	targety = target.y
	AIBehavior = BirdGo
	}
}
}



function BirdGo(){
	x += (targetx - x)/(spd*choose(6,7))
	y += (targety - y)/(spd*choose(6,7))
	
	if point_distance(x,y,targetx,targety) < 1{
	originy = y+32
	AIBehavior = BirdLand
	}
}


function BirdLand(){
	Cd = CdMax
	if y < originy{
		y += 0.75
		z = originy-y
	} else {
	sprite_index = spr_bluebird
	AIBehavior = BirdFlyup
	}
}