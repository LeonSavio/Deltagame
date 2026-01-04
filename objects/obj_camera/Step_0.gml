for(var i = 0; i < array_length(playerList); ++i) {
	view_visible[0] = true;
	
	var cameraW	= width / clamp(instance_number(par_player),1,2);
	global.cameras[i] = camera_create_view(0, 0, cameraW, height, 0, playerList[i], -1, -1, cameraW, height)
	view_set_camera(i, global.cameras[i]);
	
	view_xport[i] = cameraW * i;
	view_wport[i] = cameraW;
	
}