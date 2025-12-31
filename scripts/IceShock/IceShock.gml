function IceShock(){
	
	
if (sprite_index != spr_deercastalt){ 
	
	//faz a animação
	sprite_index = spr_deercastalt; 
	localFrame = 0; 
	image_index = 0; 
	sprite_set_speed(spr_deercastalt,24,spritespeed_framespersecond)
} 

PlayerAnimate(); 

if (animationEnd) { 
	var rudebuster = instance_create_layer(self.x,self.y,self.layer, obj_iceshock)
	rudebuster.Attacker = self;
	rudebuster.LV = self.LV
	rudebuster.ATK = self.Magic+(self.ATK/4)
	rudebuster.KBForce = self.KBForce
	rudebuster.image_angle = (round(self.direction/90)*90);
	rudebuster.Dir = round(self.direction/90); 
	rudebuster.spd = 9;
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