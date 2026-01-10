event_inherited();

if GotIt == true && buffed == true{
	array_push(owner.Cards, self)
	NewText(" -25% TP Cost");
	owner.TPCostMultiplier -= 0.25;
	buffed = false;
}