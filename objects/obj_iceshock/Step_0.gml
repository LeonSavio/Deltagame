if (!ds_exists(HitByAttack, ds_type_list)) HitByAttack = ds_list_create();
ds_list_clear(HitByAttack)

AttackHit(spr_iceshock)

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