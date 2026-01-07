event_inherited();

if GotIt == true && buffed == true{
	array_push(owner.Cards, self)
	NewText(" +Gold")
	global.Gold += 50
	buffed = false
}