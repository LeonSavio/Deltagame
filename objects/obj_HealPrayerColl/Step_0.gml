var hspd = keyboard_check(rightk) - keyboard_check(leftk)
var vspd = keyboard_check(downk) - keyboard_check(upk)

x+= hspd * spd
y+= vspd * spd



target = instance_nearest(x,y,par_player)
if keyboard_check_released(confirmk){
	if place_meeting(x,y,target){
		target.HP += round(0.5+(Magic*0.5))
		audio_play_sound(snd_heal,0,false,global.SEVolume)
		var healef = instance_create_layer(target.x,target.y,"Ice",obj_healparticle)
		healef.target = target
	}
	owner.State = PlayerStateFree
	instance_destroy()
}

