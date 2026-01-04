//Puxa o "Create" do par_player
event_inherited()

//Define os sprites 
spr_up = spr_deerupalt;
spr_down = spr_deerdownalt;
spr_right = spr_deerrightalt;
spr_left = spr_deerleftalt;
spr_idle = spr_deeridlealt;
spr_hurt = spr_deeridlealt_1;

State = PlayerStateFree
StateAttack = [IceShock, HealPrayer]