function Blocky(){
	if keyboard_check(Confirm) && TP > 0{
		TP -= 0.5
		sprite_index = spr_block
		instance_destroy(collider)
		if Wall == -1 {Wall = instance_create_depth(x,y,depth,obj_wall)}	
	}
	if keyboard_check_released(Confirm) {
		if (Wall != -1) {
			Wall.image_xscale = 1.5
			Wall.image_yscale = 1.5
			instance_destroy(Wall);
		
		}
		collider = instance_create_layer(x, y, "CollisionPlayer", obj_PlayerColl);
		collider.owner = self;
		Wall = -1
		sprite_index = spr_idle
		State = PlayerStateFree
		AttackCd += 25
	}
}