TransitionStart(index, seq_fadeout, seq_fadein)
par_player.x = targetx
par_player.y = targety

if (index == rm_Shop) {
	SetResolution()
} 
else { 
	SetResolution(960,720,true,instance_number(par_player))
}