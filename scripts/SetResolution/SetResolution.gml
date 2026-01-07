function SetResolution(Width = 960, Height = 720, BasedOnPlayer = false, Players = 1){
	if BasedOnPlayer == false{
		window_set_size(Width, Height);
		surface_resize(application_surface, Width, Height);
	} else {
	if Players >= 2{
		window_set_size(960 + 320, 720);
		surface_resize(application_surface, 960 + 320, 720);
		if instance_exists(obj_camera){
			obj_camera.resized = true
			}
		}
	}
}