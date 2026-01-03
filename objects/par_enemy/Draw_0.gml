if global.show_hp == true{
draw_set_font(fnt_main);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);


draw_text_transformed(x, y - 32, HP,0.5,0.6,0);
}

draw_self()