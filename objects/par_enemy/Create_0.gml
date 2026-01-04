//Checa se o inimigo ja acertou e impede q ele acerte varias vezes
//Tbm faz com que ele possa te acertar se ele ja terminou o ultimo hit
EnemyHitByAttack = -1;

if (!ds_exists(EnemyHitByAttack, ds_type_list)) EnemyHitByAttack = ds_list_create();
ds_list_clear(EnemyHitByAttack)

//Faz a vida começar full
HP = HPMax
_PlayersStarted = 1

//Info de Knockback
KBSpeed = 0;
KBDir = 0;
KBTimer = 0;
KBHspd = 0;
KBVspd = 0;

//Info de Iframes
IFrames = false;
IFramesTimer = 0;
FlashTimer = 0;

//Set a velocidade dele como a velocidade base
spd = spdbase;

image_xscale = 2;
image_yscale = 2;

Hitted = false
Freezing = 0
Burning = 0

trailtime = 0;
traildelay = 2;

Cd = 0