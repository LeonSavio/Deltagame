//Knockback
if (KBTimer > 0){

var KBHspd = lengthdir_x(KBSpeed, KBDir);
var KBVspd = lengthdir_y(KBSpeed, KBDir);
var sign_h = sign(KBHspd);
var sign_v = sign(KBVspd);

repeat (abs(KBHspd)) {
    if (!place_meeting(x + sign_h, y, obj_wall)) && (!place_meeting(x + sign_h, y, obj_projectfriendly)) {
        x += sign_h;
    } else {
        break;
    }
}



repeat (abs(KBVspd)) {
    if (!place_meeting(x, y + sign_v, obj_wall)) && (!place_meeting(x, y + sign_v, obj_projectfriendly))  {
        y += sign_v;
    } else {
        break;
    }
}


KBTimer -= 1;
KBSpeed *= 0.85;

}

if TP > 39{
	TP = 39
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

script_execute(State)

if EXP >= NextLevelEXP && LV != 4{
	LevelUp()
}

if instance_exists(obj_hud){
	obj_hud.HP[Player-1] = HP;
	obj_hud.MaxHP[Player-1] = HPMax;
	obj_hud.Exp[Player-1] = EXP;
	obj_hud.ExpNext[Player-1] = NextLevelEXP;
	obj_hud.LV[Player-1] = LV;
	obj_hud.TP[Player-1] = TP;
	obj_hud.TPVisible[Player-1] = false
}
