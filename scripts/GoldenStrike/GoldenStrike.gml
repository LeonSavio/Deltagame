//Ataque começa

function GoldenStrike(){

var _critted = false

if (sprite_index != spr_herostrikegolden){ 
    
    //faz a animação
    sprite_index = spr_herostrikegolden; 
    localFrame = 0; 
    image_index = 0; 
    audio_play_sound(snd_strike,0,0,global.SEVolume,0,random_range(0.9,1.1))
    
    //Limpa a hit list
    
    if (!ds_exists(HitByAttack, ds_type_list)) HitByAttack = ds_list_create();
    ds_list_clear(HitByAttack)
    
    //crit
    crit = irandom_range(1,20)
    if crit >= 18{
    ATK *= 4    
	show_debug_message(1);
    audio_play_sound(snd_critical,6,false,global.SEVolume)
	_critted = true
    }
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

if _critted == true{
        ATK *= 0.25 
		show_debug_message(0);
}

}