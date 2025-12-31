//Knockback
if (KBTimer > 0){

var KBHspd = lengthdir_x(KBSpeed, KBDir);
var KBVspd = lengthdir_y(KBSpeed, KBDir);

if (!TileColl(x + (KBHspd*1.5), y)){
x+= KBHspd;
}
if (!TileColl(x, y + (KBVspd*1.5))){
y+= KBVspd
}
if (!place_meeting(x + (KBHspd*1.5), y, obj_wall)) || !place_meeting(x + (KBHspd*1.5), y, obj_projectfriendly){
x+= KBHspd;
}
if (!place_meeting(x, y + (KBVspd*1.5), obj_wall))  || !place_meeting(x, y + (KBVspd*1.5), obj_projectfriendly){
y+= KBVspd
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
if Player == 1{
	obj_hud.PlayerOneHp = HP;
	obj_hud.PlayerOneMaxHp = HPMax;
	obj_hud.PlayerOneExp = EXP;
	obj_hud.PlayerOneExpNext = NextLevelEXP;
	obj_hud.PlayerOneLV = LV;
	obj_hud.TpOne = TP;
	obj_hud.TPVisible1 = false
}

if Player == 2{
	obj_hud.PlayerTwoHp = HP;
	obj_hud.PlayerTwoMaxHp = HPMax;
	obj_hud.PlayerTwoExp = EXP;
	obj_hud.PlayerTwoExpNext= NextLevelEXP;
	obj_hud.PlayerTwoLV = LV;
	obj_hud.TpTwo = TP;
	obj_hud.TPVisible2 = false
}

if Player == 3{
	obj_hud.PlayerThreeHp = HP;
	obj_hud.PlayerThreeMaxHp = HPMax;
	obj_hud.PlayerThreeExp = EXP;
	obj_hud.PlayerThreeExpNext= NextLevelEXP;
	obj_hud.PlayerThreeLV = LV;
	obj_hud.TpThree = TP;
	obj_hud.TPVisible3 = false
}
}