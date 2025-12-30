function PlayerAnimate(){
var _cardDirection = round(direction/90); 
var _TotalFrames = sprite_get_number(sprite_index) / 4; 
image_index = localFrame + (_cardDirection * _TotalFrames); 
localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

if (localFrame >= _TotalFrames){ 
	animationEnd = true; 
	localFrame -= _TotalFrames; 
} else animationEnd = false;

}