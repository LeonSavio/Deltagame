function RudeBuster(){

	//permite trocar de direção
	if keyboard_check(self.Left){
		self.sprite_index = self.spr_left
		self.image_speed = 0;
		self.direction = 180
	}
	if keyboard_check(self.Up){
		self.sprite_index = self.spr_up
		self.image_speed = 0;
		self.direction = 90
	}
	if keyboard_check(self.Down){
		self.sprite_index = self.spr_down
		self.image_speed = 0;
		self.direction = 270
	}
	if keyboard_check(self.Right){
		self.sprite_index = self.spr_right
		self.image_speed = 0;
		self.direction = 0
	}
	
	
	//segurando
	if keyboard_check(Confirm){
		self.RudePower += 1+(self.TP/20);
	}
	
	//avisa
	if RudePower >= 46  && played == falses  || TP >= 22  && played == false {
		audio_play_sound(snd_rudebuster_prepared,0,false)
		played = true
	}
	
	//soltou
	if keyboard_check_released(Confirm){
		played = false
		var rudebuster = instance_create_layer(self.x,self.y,layer, obj_rudebuster)
		rudebuster.Attacker = self;
		rudebuster.LV = self.LV
		rudebuster.ATK = self.ATK
		rudebuster.KBForce = self.KBForce
		rudebuster.image_angle = (round(self.direction/90)*90);
		rudebuster.Dir = round(self.direction/90); 
		
			
			if self.TP >= 22{
				self.TP -= 22
				rudebuster.sprite_index = atk_redbuster;
				rudebuster.image_yscale = 1.5;
				rudebuster.spd = 12;
				rudebuster.ATK = (self.ATK + self.Magic)*3
				audio_play_sound(snd_redbuster_swing,0,false,0,0,-3)
				rudebuster.KBForce = 12;
			} else {
			
				if RudePower < 20{
					rudebuster.sprite_index = atk_greenbuster;
					rudebuster.image_yscale = 0.90;
					rudebuster.spd = 6;
					rudebuster.ATK = (self.ATK + (self.Magic/2))*0.6
					rudebuster.KBForce = 4;
				}
				if RudePower >= 20 && RudePower < 46{
					rudebuster.sprite_index = atk_rudebuster;
					rudebuster.spd = 7;
					rudebuster.ATK = (self.ATK + (self.Magic/1.5))*1.2
					audio_play_sound(snd_rudebuster_swing,0,false,0,0,random_range(0.9,1.1))
					rudebuster.KBForce = 7;
				}
				if RudePower >= 46{
					rudebuster.sprite_index = atk_redbuster;
					rudebuster.image_yscale = 1.10;
					rudebuster.spd = 9;
					rudebuster.ATK = (self.ATK + self.Magic)*1.8
					audio_play_sound(snd_redbuster_swing,0,false,0,0,random_range(0.7,0.9))
					rudebuster.KBForce = 8;
				}
			
			}
		rudebuster.RudePower = self.RudePower
		self.RudePower = 0;
		self.State = PlayerStateFree
		self.image_speed = 1;
	}
}