
if coll != noone{
coll.x = x
coll.y = y
}

if y != GoTargety{
	y -= 1
} else {
	if GotIt != true && owner != noone{
	NewText("You got " + string(itemName))
	GotIt = true
	}
}

if !instance_exists(obj_dialogue) && GotIt == true{
	owner.sprite_index = owner.spr_idle
	owner.State = PlayerStateFree
	if buffed = false{
	global.Gold -= itemPrice
	instance_destroy(coll)
	instance_destroy()
	}
}