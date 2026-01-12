event_inherited();


if GotIt == true && buffed == true{
	
	buffed = false;
	
	for (var i = 0; i < instance_number(par_item); ++i;)
{
    enemy[i] = instance_find(par_item,i);
	
		if enemy[i].Iscard == false && (enemy[i].x + enemy[i].y * enemy[i].x) != (self.y + self.x * self.x) {
	instance_create_layer(enemy[i].x,enemy[i].y,"Objects",obj_itemspawn)
	instance_destroy(enemy[i].coll);
	instance_destroy(enemy[i]);
	
	}
		else if enemy[i].Iscard == true{
	instance_create_layer(enemy[i].x,enemy[i].y,"Objects",obj_cardspawn)
	instance_destroy(enemy[i].coll);
	instance_destroy(enemy[i]);
	} else { instance_destroy(enemy[i].coll); instance_destroy(enemy[i]);}
}
	
}