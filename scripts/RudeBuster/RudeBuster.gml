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
		self.RudePower += 1;
	}
	
	//avisa
	if RudePower = 45 {
		audio_play_sound(snd_rudebuster_prepared,0,false)
	}
	
	//soltou
	if keyboard_check_released(Confirm){
		var rudebuster = instance_create_layer(self.x,self.y,layer, obj_rudebuster)
		rudebuster.Attacker = self;
		rudebuster.LV = self.LV
		rudebuster.ATK = self.ATK
		rudebuster.KBForce = self.KBForce
		rudebuster.image_angle = (round(self.direction/90)*90);
		rudebuster.Dir = round(self.direction/90); 
		
			if RudePower < 20{
				rudebuster.sprite_index = atk_greenbuster;
				rudebuster.image_yscale = 0.90;
				rudebuster.spd = 4.5;
				rudebuster.ATK = (self.ATK)*0.1
				rudebuster.KBForce = 4;
			}
			if RudePower >= 20 && RudePower < 45{
				rudebuster.sprite_index = atk_rudebuster;
				rudebuster.spd = 6;
				rudebuster.ATK = (self.ATK)*1.0
				audio_play_sound(snd_rudebuster_swing,0,false)
				rudebuster.KBForce = 6;
			}
			if RudePower >= 45{
				rudebuster.sprite_index = atk_redbuster;
				rudebuster.image_yscale = 1.10;
				rudebuster.spd = 8;
				rudebuster.ATK = (self.ATK)*1.5
				audio_play_sound(snd_redbuster_swing,0,false)
				rudebuster.KBForce = 8;
			}
			
		rudebuster.RudePower = self.RudePower
		self.RudePower = 0;
		self.State = PlayerStateFree
		self.image_speed = 1;
	}
}