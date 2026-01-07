event_inherited();

if GotIt == true && buffed == true{
	array_push(owner.Cards, self)
	NewText(" Fragile but an easy restart")
	owner.HPMax += 1
	owner.HP += 1
	owner.ATK += 0.5
	owner.Magic += 0.5
	owner.spd += 0.1
	owner.AttackCdMax -= owner.AttackCdMax/10
	owner.DEF -= 3
	buffed = false
}