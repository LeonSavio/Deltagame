//Ataque começa
function Swing(){

if (sprite_index != spr_axeswing){ 
	
	//faz a animação
	sprite_index = spr_axeswing; 
	localFrame = 0; 
	image_index = 0; 
	audio_play_sound(snd_rudebuster_swing,0,0,global.SEVolume)
	
	//Limpa a hit list
	
	if (!ds_exists(HitByAttack, ds_type_list)) HitByAttack = ds_list_create();
	ds_list_clear(HitByAttack)
} 

AttackHit(spr_axeswinghb)

PlayerAnimate(); 
 
if (animationEnd) { 
	 State = PlayerStateFree; 
	 animationEnd = false; 
     switch (round(direction / 90)) {
		case 0: sprite_index = spr_right; break;
        case 3: sprite_index = spr_down;  break;
        case 2: sprite_index = spr_left;  break;
        case 1: sprite_index = spr_up;    break;
	}
}

}