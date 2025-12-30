if (State == "dying"){
	exit
}

switch estado{
	case 0: AIBehavior = Bluefish();
	break;
	
	case 1: AIBehavior = BluefishAttack();
	break;

}

#region script inimigo default
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
} #endregion