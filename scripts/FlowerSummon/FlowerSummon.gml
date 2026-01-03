function FlowerSummon(){

if instance_exists(par_player){
if cooldown <= 0{
	var fire = array_create(2)
	
	var targetx = instance_nearest(x,y,par_player).x
	var targety = instance_nearest(x,y,par_player).y
	if point_distance(x,y,targetx,targety) < 32*Range{
	cooldown = CdMax
	fire[0] = instance_create_layer(x,y,layer,obj_fireball)
	fire[1] = instance_create_layer(x,y,layer,obj_fireball)
	fire[0].x = targetx-96
	fire[1].x = targetx+96
	fire[0].y = targety;	fire[1].y = targety;
	fire[0].targetx = targetx+96;
	fire[1].targetx = targetx-96;
	fire[1].targety = targety;	fire[0].targety = targety;
	fire[1].spd = 6;	fire[0].spd = 6;
}}
cooldown -= 1
}

if IFramesTimer >= 0 {
	sprite_index = spr_floweralt
}
}