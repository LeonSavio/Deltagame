image_alpha -= alpha_step
image_yscale -= 1/duration;

if image_alpha == 0{
	instance_destroy()
}