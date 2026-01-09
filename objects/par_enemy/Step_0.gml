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
if KBImune == false{
if (KBTimer > 0){

var KBHspd = lengthdir_x(KBSpeed, KBDir);
var KBVspd = lengthdir_y(KBSpeed, KBDir);
var sign_h = sign(KBHspd);
var sign_v = sign(KBVspd);

repeat (abs(KBHspd)) {
    if (!place_meeting(x + sign_h, y, [obj_wall, par_enemy, obj_projectfriendly])) {
        x += sign_h;
    } else {
        break;
    }
}



repeat (abs(KBVspd)) {
    if (!place_meeting(x, y + sign_v, [obj_wall, par_enemy, obj_projectfriendly])) {
        y += sign_v;
    } else {
        break;
    }
}


KBTimer -= 1;
KBSpeed *= 0.85;

}
}

//IFrames
if (IFrames) {

	
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
spd = spdbase/1.8
} else {
	spd = spdbase
}

if Burning > 0{
Burning -= 1/(225-(Burning*20))
HP -= (0.15/30)*Burning;

if HP <= 0 {
	Erradicate(par_player, self)
	audio_play_sound(snd_badexplosion,0,false,global.SEVolume)
} 

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

if instance_number(par_player) > _PlayersStarted{
	HP += HPMax*(instance_number(par_player)-1)
	//spdbase += 0.05*(instance_number(par_player))
	_PlayersStarted	= instance_number(par_player)
	
}

