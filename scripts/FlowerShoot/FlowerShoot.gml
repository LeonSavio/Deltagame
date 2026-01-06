function FlowerShoot(){

if instance_exists(par_player){
if Cd <= 0{
	
	var targetx = instance_nearest(x,y,par_player).x
	var targety = instance_nearest(x,y,par_player).y
	if point_distance(x,y,targetx,targety) < 32*Range{
	Cd = CdMax
	var ball = instance_create_layer(x,y,layer,obj_fireball)
	ball.targetx = targetx
	ball.targety = targety
	ball.image_angle = point_direction(x,y, targetx, targety)
}}
Cd -= 1
}

if IFramesTimer >= 0 {
	sprite_index = spr_flower
}
}