PlayerOneHp = 0;
PlayerOneMaxHp = 0;
PlayerOneLV = 1;
PlayerTwoHp = 0;
PlayerTwoMaxHp = 0;
PlayerThreeHp = 0;
PlayerThreeMaxHp = 0;
PlayerOneExpNext = 0;
PlayerOneExp = 0;
PlayerTwoExp = 0;
PlayerTwoExpNext= 0;
PlayerTwoLV = 1;
PlayerThreeExp = 0;
PlayerThreeExpNext= 0;
PlayerThreeLV = 1;
TpOne = 0;
TpTwo = 0;
TpThree = 0;
TPVisible1 = false;
TPVisible2 = false;
TPVisible3 = false;
ColorOne = c_white;
ColorTwo = c_white;
ColorThree = c_white;

PlayerPanel = layer_get_flexpanel_node("PlayerOne");
PlayerPanel2 = layer_get_flexpanel_node("PlayerTwo");
PlayerPanel3 = layer_get_flexpanel_node("PlayerThree");

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

HpPanel3= flexpanel_node_get_child(PlayerPanel3, "HPBar3");
HpStruct3 = flexpanel_node_get_struct(HpPanel3);
HpBar3 = HpStruct3.layerElements[0].elementId;

ExpPanel3 = flexpanel_node_get_child(PlayerPanel3, "EXPBar3");
ExpStruct3= flexpanel_node_get_struct(ExpPanel3);
ExpBar3 = ExpStruct3.layerElements[0].elementId;
ExpBarEmp3 = ExpStruct3.layerElements[1].elementId;
LV3 = ExpStruct3.layerElements[2].elementId;

TP1 = layer_get_flexpanel_node("TpBar1");
Bar = flexpanel_node_get_child(TP1, "Bar");
Barra = flexpanel_node_get_struct(Bar);
BarraTP = Barra.layerElements[1].elementId;

TP2 = layer_get_flexpanel_node("TpBar2");
Bar2 = flexpanel_node_get_child(TP2, "Bar");
Barra2 = flexpanel_node_get_struct(Bar2);
BarraTP2 = Barra2.layerElements[1].elementId;

TP3 = layer_get_flexpanel_node("TpBar3");
Bar3 = flexpanel_node_get_child(TP3, "Bar");
Barra3 = flexpanel_node_get_struct(Bar3);
BarraTP3 = Barra2.layerElements[1].elementId;

Press = layer_get_flexpanel_node("Press");
Key = flexpanel_node_get_child(Press, "Key");
keysla = flexpanel_node_get_struct(Key);
PText = Barra.layerElements[0].elementId;