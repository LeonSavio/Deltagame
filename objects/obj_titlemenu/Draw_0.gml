
//draw_sprite_ext(sprite_index, image_index, room_width/2, room_height/2, width/sprite_width, height/sprite_height,0,c_white, 1);

if menu_level != 2{
x = room_width/2
y = (room_height/2)
obj_logo.y = 190
} else {
y = (room_height/2) - (textspace * pos)
obj_logo.y = 190 - (45 * pos)
}

draw_set_font(fnt_main);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

op_length = array_length(options[menu_level]);

if (menu_level >= array_length(options)) {
    menu_level = 0; 
}

for (var i = 0; i < op_length; i++){
	var _c = c_white
	if pos == i {_c = c_yellow}
	draw_text_color(x+borderspace, y + (textspace * i), options[menu_level][i], _c, _c, _c, _c, 1);
}