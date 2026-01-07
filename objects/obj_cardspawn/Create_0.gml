num = irandom_range(1,3)



if num <= 2{
card = obj_card_TheTower
}
if num > 2{
card = obj_card_TheMagician
}

_card = instance_create_layer(x,y,layer,card)
_card.itemPrice = irandom_range(8,12)

instance_destroy()