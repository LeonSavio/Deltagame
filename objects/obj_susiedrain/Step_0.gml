if owner != noone{
	if owner.TP >= quantity{
	owner.TP -= quantity
	} else {
	with (owner)
	script_execute(StateAttack[1])
	}
}