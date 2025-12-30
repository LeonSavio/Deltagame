function EnemyAttackHit(){

var HitByAttackNow = ds_list_create();
var Hits = instance_place_list(x,y,[par_player],HitByAttackNow,false);
if (Hits > 0){
	for (var i = 0; i < Hits; i++){
		var HitID = HitByAttackNow[| i];
		if (ds_list_find_index(EnemyHitByAttack, HitID) == -1){
			ds_list_add(EnemyHitByAttack, HitID);
			with (HitID){
				HurtPlayer(other,self)
				}
			}
		}
	}	
	ds_list_destroy(HitByAttackNow)
	ds_list_clear(EnemyHitByAttack)
}

