draw_set_font(fnt_main);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

op_length = array_length(options);

for (var i = 0; i < op_length; i++){
	var _c = c_white
	if pos == i {_c = c_yellow}
	draw_text_color(x+(256*i)-128, y, options[i], _c, _c, _c, _c, 1);
}