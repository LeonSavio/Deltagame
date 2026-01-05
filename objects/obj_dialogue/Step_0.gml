TextProgress += global.TextSpeed

if keyboard_check_pressed(ord("Z"))
{
	var _textLenght = string_length(message)
	if (TextProgress >= _textLenght){
		instance_destroy();
		if instance_exists(obj_dialogueseq){
			with (obj_dialogueseq) ticket --;
		} else {
			with (par_player){State = PlayerStateFree}
		}
	} else {
		if (TextProgress < _textLenght){
			TextProgress = _textLenght
		}
	}
}

