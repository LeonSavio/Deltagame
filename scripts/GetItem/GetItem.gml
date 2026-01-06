function GetItem(_item){
	State = PlayerStateAiming
	sprite_index = spr_item
	_item.owner = self
	_item.x = x
	_item.y = bbox_top-16
	_item.GoTargety = y-48

}