if (sprite_index = spr_sparkles){
	if instance_exists(obj_hero){
		instance_nearest(x,y,obj_hero).HP += 0.25
	}
	instance_destroy();
}