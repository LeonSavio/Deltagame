pos = 0;
image_xscale = 2;
image_yscale = 2;

leftk = 1
rightk = 1
confirmk = 1

Tiles = layer_get_id("Tiles")
if !instance_exists(par_player){
	layer_set_visible(Tiles, false)
}