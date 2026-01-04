//Puxa o "Create" do par_player
event_inherited()

//Define os sprites 
spr_up = spr_axeup;
spr_down = spr_axedown;
spr_right = spr_axeright;
spr_left = spr_axeleft;
spr_idle = spr_axeidle;
spr_hurt = spr_axedown_1;

State = PlayerStateFree
StateAttack = [RudeBuster]
played = false;