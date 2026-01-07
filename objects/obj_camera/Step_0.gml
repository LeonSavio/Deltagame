_players = instance_number(par_player)
if _players != instance_number(par_player){
	resized = false
}

for(var i = 0; i < array_length(playerList); ++i) {
	view_visible[0] = true;
	
	cameraW	= (width / clamp(instance_number(par_player),1,2)) + 128 * instance_number(par_player) ;
	view_set_camera(i, global.cameras[i]);
	camera_set_view_target(global.cameras[i], playerList[i]);
	view_xport[i] = cameraW * i;
	view_wport[i] = cameraW;
}

if resized == false{
SetResolution(960,720,true,instance_number(par_player))
}
	