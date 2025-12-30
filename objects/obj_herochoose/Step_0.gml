var Tiles = layer_get_id("Tiles")

if instance_exists(par_player) >= 1 {
leftk = keyboard_check_pressed(ord("A"))
rightk = keyboard_check_pressed(ord("D"))
confirmk = keyboard_check_pressed(vk_enter)
}
if instance_exists(par_player) <= 0 {
leftk = keyboard_check_pressed(vk_left)
rightk = keyboard_check_pressed(vk_right)
confirmk = keyboard_check_pressed(ord("Z"))
}

if leftk{
	pos += 1
}
if rightk{
	pos -= 1
}

if pos > 2 {
 pos = 0
}
if pos < 0{
 pos = 2
}

switch(pos){

	case 0: image_blend = c_red; image_yscale = 2 break;
	case 2: image_blend = c_purple; image_yscale = -2; break;
	case 1: image_blend = c_aqua; image_yscale = -2; break;

}

if confirmk{

	switch(pos){
		case 0: 
		instance_create_layer(x,y,"Objects",obj_hero);
		layer_set_visible(Tiles, true)
		instance_destroy();
		break;
		
		case 2: 
		instance_create_layer(x,y,"Objects",obj_axe);
		layer_set_visible(Tiles, true)
		instance_destroy();
		break;
		
		case 1: 
		instance_create_layer(x,y,"Objects",obj_deer);
		layer_set_visible(Tiles, true)
		instance_destroy();
		break;
	}
	
}