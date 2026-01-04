//Ataque começa
function Lunge(){

if (sprite_index != spr_herostrike){ 
	
	//faz a animação
	sprite_set_speed(spr_herostrike,9,spritespeed_framespersecond)
	sprite_index = spr_herostrike; 
	localFrame = 0; 
	image_index = 0; 
	audio_play_sound(snd_strike,0,0)
	//Limpa a hit list
	
	if (!ds_exists(HitByAttack, ds_type_list)) HitByAttack = ds_list_create();
	ds_list_clear(HitByAttack)
} 

if keyboard_check_pressed(Confirm){
	instance_destroy(collider)
	move_towards_point((lengthdir_x(64,direction)),
	(lengthdir_y(64,direction)),
	spd)
}

AttackHit(spr_herostrikehb)

PlayerAnimate(); 
 
if (animationEnd) { 
	 State = PlayerStateFree; 
	 collider = instance_create_layer(x, y, "CollisionPlayer", obj_PlayerColl);
	 animationEnd = false; 
     switch (round(direction / 90)) {
		case 0: sprite_index = spr_heroright; break;
        case 3: sprite_index = spr_herodown;  break;
        case 2: sprite_index = spr_heroleft;  break;
        case 1: sprite_index = spr_heroup;    break;
	}
}

}