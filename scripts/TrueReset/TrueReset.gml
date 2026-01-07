function TrueReset(){
		room_persistent = false
		global.restartShop = true
		global.Gold = 0;
		instance_destroy(par_player)
		SetResolution()
		global.FullPlayer = false;
}