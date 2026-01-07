event_inherited();

if GotIt == true && buffed == true{
	var die = irandom_range(1,7)
	if die > 5{
	NewText(" +Creation")
	owner.HPMax += 2
	owner.HP += 2
	owner.ATK += 0.25
	}
	if die < 3{
	NewText(" +Destruction")
	owner.HPMax -= 2
	owner.ATK -= 1
	owner.TP -= owner.TP/2
	}
	buffed = false
}