playerList[0] = noone;

view_enabled = true;

var width = 960;
var height = 540;
var scale = 1.5;

global.cameras = undefined;
for(var i = 0; i < array_length(playerList); ++i) {
	view_visible[0] = true;
	
	var cameraW	= width / 2;
	global.cameras[i] = camera_create_view(0, 0, cameraW, height, 0, playerList[i], -1, -1, cameraW, height)
	view_set_camera(i, global.cameras[i]);
	
	view_xport[i] = cameraW * i;
	view_wport[i] = width;
	
}

window_set_size(width * scale, height * scale);
surface_resize(application_surface, width * scale, height * scale);