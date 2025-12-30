#region Color
if instance_exists(obj_axe){
if obj_axe.Player == 1{
ColorOne = make_color_rgb(242,145,186);
}
if obj_axe.Player == 2{
ColorTwo = make_color_rgb(242,145,186);
}}
if instance_exists(obj_hero){
if obj_hero.Player == 1{
ColorOne = make_color_rgb(156,150,211);
}
if obj_hero.Player == 2{
ColorTwo = make_color_rgb(156,150,211);
}}
if instance_exists(obj_deer){
if obj_deer.Player == 1{
ColorOne = make_color_rgb(255,255,101);
}
if obj_deer.Player == 2{
ColorTwo = make_color_rgb(255,255,101);
}}
if instance_exists(obj_scarf){
if obj_scarf.Player == 1{
ColorOne = make_color_rgb(155,255,127);
}
if obj_scarf.Player == 2{
ColorTwo = make_color_rgb(155,255,127);
}}
#endregion

layer_sprite_blend(HpBar,ColorOne)
layer_sprite_xscale(HpBar,(PlayerOneHp/PlayerOneMaxHp)*100)

layer_sprite_blend(ExpBar,ColorOne)
layer_sprite_xscale(ExpBar,(PlayerOneExp/PlayerOneExpNext)*100)
layer_sprite_xscale(ExpBarEmp,100)

layer_text_text(LV, "LV"+string(PlayerOneLV))


if instance_number(par_player) >=2{
layer_sprite_blend(HpBar2,ColorTwo)
layer_sprite_xscale(HpBar2,(PlayerTwoHp/PlayerTwoMaxHp)*100)

layer_sprite_blend(ExpBar2,ColorTwo)
layer_sprite_xscale(ExpBar2,(PlayerTwoExp/PlayerTwoExpNext)*100)
layer_sprite_xscale(ExpBarEmp2,100)

layer_text_text(LV2, "LV"+string(PlayerTwoLV))

layer_set_visible("PlayerTwo",true)
}

if instance_number(par_player) < 2{
layer_set_visible("PlayerTwo",false)
}




if instance_exists(par_player){
if TPVisible1 == true{
layer_set_visible("TPBar1",true)
layer_sprite_yscale(BarraTP,TpOne)
layer_sprite_blend(BarraTP,ColorOne)
}

if TPVisible2 == true{
layer_set_visible("TPBar2",true)
layer_sprite_yscale(BarraTP2,TpTwo)
layer_sprite_blend(BarraTP2,ColorTwo)
}}