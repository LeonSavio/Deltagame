if collision = false{
instance_destroy(collider)
}

if (!ds_exists(EnemyHitByAttack, ds_type_list)) EnemyHitByAttack = ds_list_create();
ds_list_clear(EnemyHitByAttack)

if place_meeting(x,y,par_player){
	EnemyAttackHit()
}

if targetx != undefined && targety != undefined && alarmi == true{
alarm[0] = room_speed*spdball;
alarmi = false;
}

trailtime++;

if (trailtime >= traildelay){
	
trailtime = 0;
var tr = instance_create_layer(x, y, layer, obj_rudebuster_trail);
tr.sprite_index = sprite_index;
tr.image_index = image_index;
tr.image_angle = image_angle;
tr.image_yscale = image_yscale;
tr.image_blend = image_blend; 
}

if EXP>0{
Attacker.EXP += EXP
EXP = 0;
}

if place_meeting(x,y,obj_ice){
	instance_destroy(collider)
	instance_destroy()
}

lifetimer--

if lifetimer <= 0{
	instance_destroy()
}
