state = "NotDyingLol"
EnemyHitByAttack = -1;

if (!ds_exists(EnemyHitByAttack, ds_type_list)) EnemyHitByAttack = ds_list_create();
ds_list_clear(EnemyHitByAttack)

image_xscale = 2;
image_yscale = 2;