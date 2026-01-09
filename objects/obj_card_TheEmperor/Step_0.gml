event_inherited();

if GotIt == true && buffed == true{
	array_push(owner.Cards, self)
	NewText(" +ATK & Magic, but lose Healing")
	owner.ATK += 0.75
	owner.Magic += 0.75
	owner.HP -= owner.HP/4
	if array_contains(owner.StateAttack,HealPrayer){
		for (var i =0; i < array_length(owner.StateAttack); i++){
			if array_get(owner.StateAttack,i) == HealPrayer{
				array_delete(owner.StateAttack,i,1)
			}
		}
	}
	buffed = false
}