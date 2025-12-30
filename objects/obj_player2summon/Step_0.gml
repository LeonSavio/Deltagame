if (IFrames) {
    IFramesTimer -= 1;
    FlashTimer += 1;

    if ((IFramesTimer div 20) mod 2 == 0) {
        visible = true;
    } else {
        visible = false;
    }

    if (IFramesTimer <= 0) {
		instance_destroy()
    }
}

if (IFramesTimer > 0){
	if keyboard_check_pressed(vk_enter){
		if instance_exists(par_player){
		global.FullPlayer = true;
		instance_create_depth(par_player.x, par_player.y, par_player.depth+1, obj_herochoose)
		par_enemy.HP += par_enemy.HP*1.5
		}
		instance_destroy()
	}
}