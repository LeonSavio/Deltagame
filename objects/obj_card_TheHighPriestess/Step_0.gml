event_inherited();

if GotIt == true && buffed == true{
	NewText(" -25% TP Cost")
	owner.TPCostMultiplier += 0.75
	buffed = false
}