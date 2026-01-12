

if instance_number(par_player) = 2 {
leftk = keyboard_check_pressed(ord("J"))
rightk = keyboard_check_pressed(ord("L"))
confirmk = keyboard_check_pressed(ord("E"))
}
if instance_number(par_player) = 1 {
leftk = keyboard_check_pressed(ord("A"))
rightk = keyboard_check_pressed(ord("D"))
confirmk = keyboard_check_pressed(vk_enter)


}
if instance_number(par_player) = 0 {
leftk = keyboard_check_pressed(vk_left)
rightk = keyboard_check_pressed(vk_right)
confirmk = keyboard_check_pressed(ord("Z"))

if global.main_gamepad != undefined{
	rightk = gamepad_button_check_pressed(global.main_gamepad,gp_padr)
	leftk = gamepad_button_check_pressed(global.main_gamepad,gp_padl)
	confirmk = gamepad_button_check_pressed(global.main_gamepad,gp_face1)
}
}

if leftk{
	pos += 1
}
if rightk{
	pos -= 1
}

if pos > 3 {
 pos = 0
}
if pos < 0{
 pos = 3
}

switch(pos){

	case 0: image_blend = c_red; image_yscale = 2 break;
	case 2: image_blend = c_purple; image_yscale = -2; break;
	case 1: image_blend = c_aqua; image_yscale = -2; break;
	case 3: image_blend = c_lime; image_yscale = -2; break;

}

if confirmk{

	switch(pos){
		case 0: 
		global.GameStarted = true

		instance_create_layer(x,y,"Objects",obj_hero);
		layer_set_visible(Tiles, true)
		layer_set_visible(Objects, true)
		instance_destroy();
		break;
		
		case 2: 
		global.GameStarted = true
		instance_create_layer(x,y,"Objects",obj_axe);
		layer_set_visible(Tiles, true)
		layer_set_visible(Objects, true)
		instance_destroy();
		break;
		
		case 1: 
		global.GameStarted = true
		instance_create_layer(x,y,"Objects",obj_deer);
		layer_set_visible(Tiles, true)
		layer_set_visible(Objects, true)
		instance_destroy();
		break;
		
		case 3: 
		global.GameStarted = true
		instance_create_layer(x,y,"Objects",obj_scarf);
		layer_set_visible(Tiles, true)
		layer_set_visible(Objects, true)
		instance_destroy();
		break;
	}
	
}