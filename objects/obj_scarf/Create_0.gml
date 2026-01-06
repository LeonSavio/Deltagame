//Puxa o "Create" do par_player
event_inherited()

//Define os sprites 
spr_up = spr_scarfup;
spr_down = spr_scarfdown;
spr_right = spr_scarfright;
spr_left = spr_scarfleft;
spr_idle = spr_scarfidle;
spr_hurt = spr_scarfhurt;
spr_block = spr_scarfblock;
spr_item = spr_scarfitem;
Wall = -1

State = PlayerStateFree
StateAttack = [LightUp, HealPrayer, Blocky]