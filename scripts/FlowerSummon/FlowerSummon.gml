function FlowerSummon0(){

if instance_exists(par_player){
if Cd <= 0 || Hitted = true  && Cd <= 0{
	var fire = array_create(2)
	
	var targetx = instance_nearest(x,y,par_player).x
	var targety = instance_nearest(x,y,par_player).y
	if point_distance(x,y,targetx,targety) < 32*Range{
	Cd = CdMax
	fire[0] = instance_create_layer(x,y,layer,obj_fireballalt)
	fire[1] = instance_create_layer(x,y,layer,obj_fireballalt)
	fire[0].x = targetx-96
	fire[1].x = targetx+96
	fire[0].y = targety;	fire[1].y = targety;
	fire[0].targetx = targetx+96;
	fire[1].targetx = targetx-96;
	fire[1].targety = targety;	fire[0].targety = targety;
	fire[1].spd = 6;	fire[0].spd = 6;
}}
Cd -= 1
}

if IFramesTimer >= 0 {
	sprite_index = spr_idle
}
}

function FlowerSummon1(){

if instance_exists(par_player){
if Cd <= 0{
	var fire = array_create(8)
	
	var targetx = instance_nearest(x,y,par_player).x
	var targety = instance_nearest(x,y,par_player).y
	if point_distance(x,y,targetx,targety) < 32*Range{
	Cd = CdMax
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
Cd -= 1
}

if IFramesTimer >= 0 {
	sprite_index = spr_idle
}
}

function FlowerSummon2(){

if instance_exists(par_player){
if Cd<= 0{
	var fire = array_create(8)
	
	var targetx = instance_nearest(x,y,par_player).x
	var targety = instance_nearest(x,y,par_player).y
	if point_distance(x,y,targetx,targety) < 32*Range{
	Cd = CdMax
		for (var i = 0; i < 8; i++){
		var radius = 112
		fire[i] = instance_create_layer(targetx+lengthdir_x(radius,45*i),targety+lengthdir_y(radius,45*i),layer,obj_fireballalt)
		fire[i].collision = false
		fire[i].lifetimer = 80
		fire[i].targetx = targetx+lengthdir_x(0,45*i)
		fire[i].targety = targety+lengthdir_y(0,45*i)	
		}
}}
Cd -= 1
}

if IFramesTimer >= 0 {
	sprite_index = spr_idle
}
}