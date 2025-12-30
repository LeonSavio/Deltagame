width = 64;
height = 128;

borderspace = 16;
textspace = 32;

pos = 0;

//Main Menu
options = ["Retry","Give Up"]

menu_level = 0;
op_length = array_length(options);

camera = view_camera

audio_stop_all()
camera_set_view_size(camera,480,360)
camera_set_view_pos(camera,x,y)
instance_destroy(obj_hud)

if !instance_exists(obj_soul){
	instance_create_layer(x,y,layer,obj_soul)
}

obj_soul.targetx  = x
obj_soul.targety  = y
obj_soul.canmove = false