function PlayerStateDown(){
	sprite_index = spr_hurt
	if HP > 0 { collider = instance_create_layer(x, y, "CollisionPlayer", obj_PlayerColl); 
		global.PlayersDown -= 1; 
		State = PlayerStateFree;}
}

