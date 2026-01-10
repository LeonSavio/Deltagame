function JusticeBuster(){

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
		self.RudePower += 1.3;
	}
	
	//avisa
	if (RudePower >= 46 && played == false) {
		audio_play_sound(snd_suslaugh,0,false,global.SEVolume,0)
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
				if RudePower < 73{
					rudebuster.sprite_index = spr_greenbuster;
					rudebuster.image_yscale = 0.70;
					rudebuster.image_alpha = 0.4
					rudebuster.spd = 7;
					rudebuster.ATK = (self.ATK + (self.Magic/2))*0.4
					rudebuster.KBForce = 3;
				}
				if RudePower >= 73{
					rudebuster.sprite_index = spr_greenbuster;
					rudebuster.image_yscale = 1.25;
					rudebuster.spd = 8;
					rudebuster.ATK = (self.ATK + (self.Magic/1.5))*2
					audio_play_sound(snd_rudebuster_swing,0,false,global.SEVolume,0,.65)
					rudebuster.KBForce = 9;
				}
		rudebuster.RudePower = self.RudePower
		self.RudePower = 0;
		self.State = PlayerStateFree
		self.image_speed = 1;
	}
}