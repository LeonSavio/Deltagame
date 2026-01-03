function FlowerSummon2(){

if instance_exists(par_player){
if cooldown <= 0{
	var fire = array_create(8)
	
	var targetx = instance_nearest(x,y,par_player).x
	var targety = instance_nearest(x,y,par_player).y
	if point_distance(x,y,targetx,targety) < 32*Range{
	cooldown = CdMax
		for (var i = 0; i < 8; i++){
		var radius = 96
		fire[i] = instance_create_layer(targetx+lengthdir_x(radius,45*i),targety+lengthdir_y(radius,45*i),layer,obj_fireballalt)
		fire[i].spdball = (i+1)/2
		fire[i].collision = false
		fire[i].lifetimer = 60*(i+1)
		fire[i].targetx = targetx+lengthdir_x(0,45*i)
		fire[i].targety = targety+lengthdir_y(0,45*i)	
		}
}}
cooldown -= 1
}

if IFramesTimer >= 0 {
	sprite_index = spr_floweralt2
}
}