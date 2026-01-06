if coll != noone{
coll.x = x
coll.y = y
}

if y != GoTargety{
	y -= 1
} else {
	if owner != noone {
	NewText("You got " + string(itemName))
	spriteowner = owner
	GotIt = true
	owner = noone
	}
}

if !instance_exists(obj_dialogue) && GotIt == true{
	spriteowner.sprite_index = spriteowner.spr_idle
	spriteowner.State = PlayerStateFree
	instance_destroy()
}