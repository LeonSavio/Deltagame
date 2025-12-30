state = "NotDyingLol"
EnemyHitByAttack = -1;

if (!ds_exists(EnemyHitByAttack, ds_type_list)) EnemyHitByAttack = ds_list_create();
ds_list_clear(EnemyHitByAttack)

image_xscale = 1;
image_yscale = 1;

coll = instance_create_layer(x,y,layer,obj_wall)
coll.image_xscale = 0.65
coll.image_yscale = 0.65