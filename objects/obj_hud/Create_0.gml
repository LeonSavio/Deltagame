PlayerOneHp = 0;
PlayerOneMaxHp = 0;
PlayerOneLV = 1;
PlayerTwoHp = 0;
PlayerTwoMaxHp = 0;
PlayerOneExpNext = 0;
PlayerOneExp = 0;
PlayerTwoExp = 0;
PlayerTwoExpNext= 0;
PlayerTwoLV = 1;
TpOne = 0;
TpTwo = 0;
TPVisible1 = false;
TPVisible2 = false;
ColorOne = c_white;
ColorTwo = c_white;

PlayerPanel = layer_get_flexpanel_node("PlayerOne");
PlayerPanel2 = layer_get_flexpanel_node("PlayerTwo");

HpPanel = flexpanel_node_get_child(PlayerPanel, "HPBar");
HpStruct = flexpanel_node_get_struct(HpPanel);
HpBar = HpStruct.layerElements[0].elementId;

ExpPanel = flexpanel_node_get_child(PlayerPanel, "EXPBar");
ExpStruct = flexpanel_node_get_struct(ExpPanel);
ExpBar = ExpStruct.layerElements[0].elementId;
ExpBarEmp = ExpStruct.layerElements[1].elementId;
LV = ExpStruct.layerElements[2].elementId;
layer_set_visible("PlayerOne",true)

HpPanel2 = flexpanel_node_get_child(PlayerPanel2, "HPBar2");
HpStruct2 = flexpanel_node_get_struct(HpPanel2);
HpBar2 = HpStruct2.layerElements[0].elementId;

ExpPanel2 = flexpanel_node_get_child(PlayerPanel2, "EXPBar2");
ExpStruct2 = flexpanel_node_get_struct(ExpPanel2);
ExpBar2 = ExpStruct2.layerElements[0].elementId;
ExpBarEmp2 = ExpStruct2.layerElements[1].elementId;
LV2 = ExpStruct2.layerElements[2].elementId;

TP1 = layer_get_flexpanel_node("TpBar1");
Bar = flexpanel_node_get_child(TP1, "Bar");
Barra = flexpanel_node_get_struct(Bar);
BarraTP = Barra.layerElements[1].elementId;

TP2 = layer_get_flexpanel_node("TpBar2");
Bar2 = flexpanel_node_get_child(TP2, "Bar");
Barra2 = flexpanel_node_get_struct(Bar2);
BarraTP2 = Barra2.layerElements[1].elementId;