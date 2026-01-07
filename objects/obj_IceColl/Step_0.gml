if (owner != noone){
    x = owner.x;
    y = owner.y;
	
}

if LifeTime >= owner.lifetimer{
	instance_destroy()
	instance_destroy(owner)
}

if place_meeting(x,y,obj_wall){
	instance_destroy()
	instance_destroy(owner)
}

LifeTime += 1
visible = global.show_walls;