function BirdSearching(){
	
	if instance_exists(par_player){
	target = instance_nearest(x,y,par_player)
	targetx = target.x
	targety = target.y

if distance_to_object(target) < (32*Range) && Cd == 0{
	AIBehavior = BirdFlying
	Cd = CdMax
}
}
}