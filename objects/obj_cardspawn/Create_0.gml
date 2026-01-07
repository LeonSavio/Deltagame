num = irandom_range(1,20)
extracost = 0

if num < 5{
	_card = obj_card_TheTower; extracost = 0;
}
if num > 5 && num <= 9{
	_card = obj_card_TheEmpress; extracost = 2;
}

if num > 9 && num <= 13{
	_card = obj_card_TheEmperor; extracost = -2;
}

if num > 13 && num <= 17{
	_card = obj_card_TheMagician; extracost = 1;
}
if num > 17 && num <= 19{
	_card = obj_card_TheFool; extracost = 5;
}
if num == 20{
	_card = obj_card_TheHighPriestess; extracost = 0;
}

_card = instance_create_layer(x,y,layer,_card)
_card.itemPrice = irandom_range(8,12)+extracost

instance_destroy()