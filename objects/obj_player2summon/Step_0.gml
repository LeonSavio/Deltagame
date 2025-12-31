if (IFrames) {
    IFramesTimer -= 1;
    FlashTimer += 1;

    if ((IFramesTimer div 20) mod 2 == 0) {
        layer_set_visible("Press",true);
    } else {
        layer_set_visible("Press",false);
    }

    if (IFramesTimer <= 0) {
		layer_set_visible("Press",false);
		instance_destroy()
    }
}

if (IFramesTimer > 0){
	if instance_number(par_player) = 1{
	if keyboard_check_pressed(vk_enter){
		if instance_exists(par_player){
		instance_create_depth(par_player.x, par_player.y, par_player.depth+1, obj_herochoose)
		}
		IFramesTimer = 0
		layer_set_visible("Press",false);
		instance_destroy()
	}
	}
	if instance_number(par_player) = 2{
	if keyboard_check_pressed(ord("E")){
		if instance_exists(par_player){
		global.FullPlayer = true
		instance_create_depth(par_player.x, par_player.y, par_player.depth+1, obj_herochoose)
		}
		IFramesTimer = 0
		layer_set_visible("Press",false);
		instance_destroy()
	}
	}
	
}