event_inherited();

if GotIt == true && buffed == true{
	array_push(owner.Cards, self)
	NewText(" +Full TP!")
	owner.TP = 39
	owner.Magic += 0.5
	buffed = false
}