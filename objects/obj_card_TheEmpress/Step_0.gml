event_inherited();

if GotIt == true && buffed == true{
	NewText(" HP in excharge for DMG")
	owner.ATK = owner.ATK/4
	owner.HPMax = owner.HPMax*2.5
	owner.HP = owner.HP*2.5
	buffed = false
}