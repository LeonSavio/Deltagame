num = irandom_range(1,3)
pricebuff = 0;

switch(num){

	case 1: _item = obj_itemtestr; break;
	
	case 2: _item = obj_goldensword; pricebuff = 10;  break;
	
	case 3: _item = noone break;
	
}

if _item != noone{
_item = instance_create_layer(x,y,layer,_item)
_item.itemPrice = irandom_range(2,6)+pricebuff
}

instance_destroy()