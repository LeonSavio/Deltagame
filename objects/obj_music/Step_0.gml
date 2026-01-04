var _finalVolume = global.MusicVolume

if musAsset != musTarget{
	
	if audio_is_playing(musPlaying){
		array_push(FadingOutMusics, musPlaying)
		array_push(FadingOutVol, FadingInVol)
		array_push(FadingOutTime, FadingOut)
		
		musPlaying = noone;
		musAsset = noone;
	}
	
	if array_length(FadingOutMusics) == 0{
	if audio_exists(musTarget){
		musPlaying = audio_play_sound(musTarget,4,true);
		
		audio_sound_gain(musPlaying, 0, 0)
		FadingInVol = 0;
	}
	
	musAsset = musTarget;
}
}

if audio_is_playing(musPlaying){
	if FadingIn > 0{
		if FadingInVol < 1{
			FadingInVol += 1/FadingIn;
		} else {FadingInVol = 1}
	}
	
	else{
		FadingInVol = 1;
	}
	
	audio_sound_gain(musPlaying, FadingInVol*_finalVolume, 0)
}

for (var i = 0; i < array_length(FadingOutMusics); i++){
	if FadingOutTime[i] > 0{
		if FadingOutVol[i] > 0 {
			FadingOutVol[i] -= 1/FadingOutTime[i];
		}
	} else {
		FadingOutVol[i] = 0;
	}
	
	audio_sound_gain(FadingOutMusics[i], FadingOutVol[i]*_finalVolume, 0)
	
	if FadingOutVol[i] <= 0{
		if audio_is_playing(FadingOutMusics[i]){	audio_stop_sound(FadingOutMusics[i])}
		array_delete(FadingOutMusics,i,1)
		array_delete(FadingOutVol,i,1)
		array_delete(FadingOutTime,i,1)
		
		i--;
	}
}