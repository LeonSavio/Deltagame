num = irandom_range(1,8)
pricebuff = 0;

switch(num){

	case 1: _item = obj_itemtestr; break;
	
	case 2: _item = obj_sunglasses; pricebuff = 14;  break;
	
	case 3: _item = noone break;
	
	case 4: _item = obj_candy; break;
	
	case 5: _item = obj_candy; break;
	
	case 6: _item = obj_bow;  pricebuff = 8;  break;
	
	case 7: _item = obj_coconut;  pricebuff = -2;  break;
	
	case 8: _item = obj_feather; pricebuff = 6; break;
}

if _item != noone{
_item = instance_create_layer(x,y,layer,_item)
_item.itemPrice = irandom_range(2,6)+pricebuff
}

instance_destroy()