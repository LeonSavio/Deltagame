function TrueReset(){
		room_persistent = false
		global.restartShop = true
		global.Gold = 0;
		global.PlayersDown = 0
		global.GameStarted = false
		instance_destroy(par_player)
		SetResolution()
		global.FullPlayer = false;
}