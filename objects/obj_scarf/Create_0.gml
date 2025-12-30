//Puxa o "Create" do par_player
event_inherited()

//Define os sprites 
spr_up = spr_scarfup;
spr_down = spr_scarfdown;
spr_right = spr_scarfright;
spr_left = spr_scarfleft;
spr_idle = spr_scarfidle;

State = PlayerStateFree
StateAttack = [LightUp, HealPrayer]