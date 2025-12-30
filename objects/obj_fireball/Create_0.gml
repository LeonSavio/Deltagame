collider = instance_create_layer(x, y, layer, obj_RudeColl);
collider.owner = id;
collider.image_xscale = 1;
collider.image_yscale = 1;

lifetimer = 25;
Attacker = noone;
spd = 4;
Dir = 0;
HitByAttack = -1;
LV = 0;
ATK = 1;
KBForce = 0;
EXP = 0;

trailtime = 0;
traildelay = 4;

targetx = 0;
targety = 0;
image_xscale = 2;
image_yscale = 2;

EnemyHitByAttack = -1;