function AttackHit(_mask_index){

var _old_mask = mask_index
mask_index = _mask_index;
var HitByAttackNow = ds_list_create();
var Hits = instance_place_list(x,y,[par_enemy, par_plant],HitByAttackNow,false);
if (Hits > 0){
	for (var i = 0; i < Hits; i++){
		var HitID = HitByAttackNow[| i];
		if (ds_list_find_index(HitByAttack, HitID) == -1){
		
			ds_list_add(HitByAttack, HitID);
			with (HitID){
				if (entityHitScript == Erradicate){
					Erradicate(other,self);
				} else if (entityHitScript == Hurt){
					if (_mask_index == atk_rudebuster && self.IFrames = false){
						audio_play_sound(snd_rudebuster_hit,0,false)
					}
					Hurt(other,self,other.KBForce);
					}
				}
			}
		}
	}	
mask_index = _old_mask
ds_list_destroy(HitByAttackNow)
}