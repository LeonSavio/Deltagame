width = 64;
height = 128;

borderspace = 16;
textspace = 32;

pos = 4;
clicked = false

//Main Menu
options = ["YOU WON!!!",
" ", 
"You took " + string(global.time) + " Seconds!",
" ",
"Go to the Main Menu"]

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


obj_soul.targetx  = x-(16*string_length(options[pos]))
obj_soul.targety  = y+(textspace*pos)