playerList[0] = noone;
playerList[1] = noone;

view_enabled = true;

width = 384;
height = 256;
scale = 1;

global.cameras = undefined;


for(var i = 0; i < array_length(playerList); ++i) {

cameraW	= width / clamp(instance_number(par_player),1,2);
global.cameras[i] = camera_create_view(0, 0, cameraW, height, 0, playerList[i], -1, -1, cameraW, height)
}

window_set_size(960, 720);
surface_resize(application_surface, 960, 720);