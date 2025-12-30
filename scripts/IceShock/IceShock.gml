function IceShock(){
		var rudebuster = instance_create_layer(self.x,self.y,self.layer, obj_iceshock)
		rudebuster.Attacker = self;
		rudebuster.LV = self.LV
		rudebuster.ATK = self.ATK
		rudebuster.KBForce = self.KBForce
		rudebuster.image_angle = (round(self.direction/90)*90);
		rudebuster.Dir = round(self.direction/90); 
		rudebuster.spd = 9;
		self.image_speed = 1;
	self.State = PlayerStateFree
}