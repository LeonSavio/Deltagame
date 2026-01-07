_players = instance_number(par_player)
if _players != instance_number(par_player){
	resized = false
}

for(var i = 0; i < array_length(playerList); ++i) {
	view_visible[0] = true;
	
	cameraW	= (width / clamp(instance_number(par_player),1,2)) + 128 * instance_number(par_player) ;
	view_set_camera(i, global.cameras[i]);
	if playerList[i] != noone{
	camera_set_view_pos(global.cameras[i],
	floor(playerList[i].x-(camera_get_view_width(view_camera[i])*0.5)),
	floor(playerList[i].y-(camera_get_view_height(view_camera[i])*0.5)))
	}
	if !instance_exists(par_player){
	camera_set_view_pos(global.cameras[i], 1696, 640)
	}
	view_xport[i] = cameraW * i;
	view_wport[i] = cameraW;
}

if resized == false{
SetResolution(960,720,true,instance_number(par_player))
}
	