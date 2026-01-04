function BirdFlyup(){

var target = instance_nearest(x,y,par_player)

if distance_to_object(target) < (32*Range) && Cd <= 0{

	if y > originy-32{
		sprite_index = spr_bluebirdflying
		y -= random_range(0.1,0.5)
		z = originy-y
	} else {
	targetx = target.x
	targety = target.y
	AIBehavior = BirdGo
	}
}
}



function BirdGo(){
	x += (targetx - x)/(spd*7)
	y += (targety - y)/(spd*7)
	
	if point_distance(x,y,targetx,targety) < 1{
	originy = y
	AIBehavior = BirdLand
	}
}


function BirdLand(){
	Cd = CdMax
	if y < originy+32{
		y += random_range(0.1,0.5)
		z = originy-y
	} else {
	sprite_index = spr_bluebird
	AIBehavior = BirdFlyup
	}
}