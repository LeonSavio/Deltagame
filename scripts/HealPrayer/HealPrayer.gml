function HealPrayer(){
	if self.TP < 20*TPCostMultiplier{
	self.State = PlayerStateFree
	}
	if keyboard_check(Confirm) && TP >= 20*TPCostMultiplier{
	TP -= 20*TPCostMultiplier
	var rudebuster = instance_create_layer(self.x,self.y,self.layer, obj_HealPrayerColl)
	rudebuster.owner = self;
	rudebuster.LV = self.LV
	rudebuster.rightk = self.Right;
	rudebuster.leftk = self.Left;
	rudebuster.upk = self.Up
	rudebuster.downk = self.Down
	rudebuster.confirmk = self.Confirm
	rudebuster.Magic = self.Magic
	self.State = PlayerStateAiming
	}
}