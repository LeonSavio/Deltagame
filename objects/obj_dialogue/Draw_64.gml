display_set_gui_size(RESOLUTION_W,RESOLUTION_H)
draw_set_colour(c_black)
draw_rectangle(x1,y1,x2,y2,false)
draw_set_colour(c_white)
draw_set_font(fnt_board)
draw_set_valign(fa_top)
draw_set_halign(fa_center)


var _text = string_copy(message,1,TextProgress);
draw_text_ext_transformed((x1+x2)/2, y1+16,_text,24,RESOLUTION_W,2,2,0)