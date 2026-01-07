if instance_exists(owner) {
draw_set_alpha(0.5)
draw_set_colour(c_red);
draw_rectangle(owner.bbox_left, owner.bbox_top, owner.bbox_right, owner.bbox_bottom, false)
draw_set_alpha(1)
}