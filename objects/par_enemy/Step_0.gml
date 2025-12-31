//Se ele morrer para o codigo
if (State == "dying"){
	exit
}

//Executa seu comportamento baseado em AIBehavior
script_execute(AIBehavior);

//Ataque de colisão
if place_meeting(x,y,obj_PlayerColl){
	EnemyAttackHit()
}

//Knockback
if (KBTimer > 0){

KBHspd = lengthdir_x(KBSpeed, KBDir);
KBVspd = lengthdir_y(KBSpeed, KBDir);

if (!TileColl(x + KBHspd, y) && (!place_meeting(x + KBHspd, y, par_enemy))){
x+= KBHspd;
}
if (!TileColl(x, y + KBVspd)) && (!place_meeting(x, y + KBVspd, par_enemy)){
y+= KBVspd
}

KBTimer -= 1;
KBSpeed *= 0.85;
}

//IFrames
if (IFrames) {
	
	var proj = instance_nearest(x,y,obj_iceshock)
	if place_meeting(x,y,proj){
		instance_destroy(proj.collider)
		instance_destroy(proj)
	}
	
    IFramesTimer -= 1;
    FlashTimer += 1;

    if ((IFramesTimer div global.flash_bliking) mod 2 == 0) {
        visible = true;
    } else {
        visible = false;
    }

    if (IFramesTimer <= 0) {
        IFrames = false;
        visible = true;  
    }
}

//Se ele estiver em IFrames ele fica stunnado e não se mexe
var PreviousSprite = sprite_index;
if (IFramesTimer >= 15) {

	State = "Stunned";
	if spr_stunned !=0{
		sprite_index = spr_stunned;
	}
} else {
State = "notdying"
sprite_index = PreviousSprite
}

if (State == "Stunned") {
	spd = 0;
} else {
	spd = spdbase
}

if Freezing >= 1{
Freezing--
spd = spdbase/2
} else {
	spd = spdbase
}

if Burning > 0{
Burning -= 1/(300-(Burning*20))
HP -= (0.25/30)*Burning
image_blend = c_orange

trailtime++;

if (trailtime >= traildelay){
	
trailtime = 0;
var tr = instance_create_layer(x, y, layer, obj_rudebuster_trail);
tr.sprite_index = spr_fireball;
tr.image_index = image_index;
tr.image_angle = image_angle;
tr.image_xscale = 3;
tr.image_yscale = 3;
tr.image_blend = image_blend; 
}
} 
if Burning <= 0{
Burning = 0;
image_blend = c_white
}

if Cd > 0{
Cd--
}

if self.HP <= 0 {
	Erradicate(par_player, self)
}