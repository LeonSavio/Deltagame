//Ataque começa
function Strike(){

if (sprite_index != spr_herostrike){ 
	
	//faz a animação
	sprite_index = spr_herostrike; 
	localFrame = 0; 
	image_index = 0; 
	audio_play_sound(snd_strike,0,0,global.SEVolume)
	
	//Limpa a hit list
	
	if (!ds_exists(HitByAttack, ds_type_list)) HitByAttack = ds_list_create();
	ds_list_clear(HitByAttack)
} 

AttackHit(spr_herostrikehb)

PlayerAnimate(); 
 
if (animationEnd) { 
	 State = PlayerStateFree; 
	 animationEnd = false; 
     switch (round(direction / 90)) {
		case 0: sprite_index = spr_heroright; break;
        case 3: sprite_index = spr_herodown;  break;
        case 2: sprite_index = spr_heroleft;  break;
        case 1: sprite_index = spr_heroup;    break;
	}
}

}