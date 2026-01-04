if z != 0{
	draw_self()
	draw_set_alpha(0.5)
	draw_sprite_stretched(spr_shadow,0,x-12+z/7,y+24,(sprite_get_width(sprite_index)-(z/5)),sprite_get_height(spr_shadow))
} else {
draw_self()
}