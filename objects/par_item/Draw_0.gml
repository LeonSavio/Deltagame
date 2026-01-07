if itemPrice > 0{
	draw_set_font(fnt_board)
	draw_text_transformed(x,y+24,string(itemPrice) + " G",0.25,0.25,0)
	draw_self()
} else {
draw_self()
}