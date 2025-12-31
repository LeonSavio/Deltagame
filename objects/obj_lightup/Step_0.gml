if (!ds_exists(HitByAttack, ds_type_list)) HitByAttack = ds_list_create();
ds_list_clear(HitByAttack)

AttackHit(spr_fireball)

if Dir == 0{
	x += spd;
}
if Dir == 1{
	y -= spd;
}
if Dir == 2{
	x -= spd;
}
if Dir == 3{
	y += spd;
}
if Dir == 4{
	x += spd;
}

if EXP>0{
Attacker.EXP += EXP
EXP = 0;
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