if (instance_number(obj_hud) > 1) {
    instance_destroy();
}

//Colisão
global.tilemap_collision = layer_tilemap_get_id("Collisions");
//Tempo de piscada do Iframe
global.flash_bliking = 4;

//Telacheia
global.issfull = false

//Controles gerais
global.controls = {
	Fullscreen: vk_f4,
	Menu: ord("C"),
	Mute: vk_f6,
	Quit: vk_escape,
}

holdingquit = 0;

global.FullPlayer = false;
instance_create_layer(x,y,layer,obj_music)