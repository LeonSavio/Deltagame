if (owner != noone){
    x = owner.x;
    y = owner.y;
	
if LifeTime >= owner.lifetimer{
	instance_destroy()
	instance_destroy(owner)
}
}

if TileColl(x,y){
	instance_destroy()
	instance_destroy(owner)
}

LifeTime += 1
