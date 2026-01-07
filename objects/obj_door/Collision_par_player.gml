TransitionStart(index, seq_fadeout, seq_fadein)
par_player.x = targetx
par_player.y = targety

if (index == rm_Shop) {
	window_set_size(960, 720);
	surface_resize(application_surface, 960, 720);
} 
else { 
	if instance_number(par_player) >= 2 {
	window_set_size(960 + 320, 720);
	surface_resize(application_surface, 960 + 320, 720);

	}
}