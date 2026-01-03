PlayersMax = 3
Target = array_create(PlayersMax, noone)
global.Cameras = array_create(PlayersMax, undefined)

view_enabled = true

var width = 384, height = 256, scale = 2;


for(var i = 0; i < array_length(Target); i++){
	view_visible[0] = true
	
	//Create
	var CamWidth = width / clamp(instance_number(par_player),1, PlayersMax);
	global.Cameras[i] = camera_create_view(1696, 640, CamWidth, height,0,Target[i], -1, -1, CamWidth, height);
	view_set_camera(i, global.Cameras[i])
	
	//Viewport
	view_xport[i] = CamWidth * i
	view_wport[i] = CamWidth;
}

window_set_size(1080, 720);
surface_resize(application_surface, 1080, 720)