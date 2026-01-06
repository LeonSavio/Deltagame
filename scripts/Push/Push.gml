function Push(_obj){
		if place_meeting(x+12,y,_obj) && !place_meeting(_obj.x+32,_obj.y,[obj_wall, obj_projectfriendly]){
			_obj.x += 32
		}
		if place_meeting(x-12,y,_obj) && !place_meeting(_obj.x-32,_obj.y,[obj_wall, obj_projectfriendly]){
			_obj.x -= 32
		}
		if place_meeting(x,y+12,_obj) && !place_meeting(_obj.x,_obj.y+32,[obj_wall, obj_projectfriendly]){
			_obj.y += 32
		}
		if place_meeting(x,y-12,_obj) && !place_meeting(_obj.x,_obj.y-32,[obj_wall, obj_projectfriendly]){
			_obj.y -= 32
	}
}