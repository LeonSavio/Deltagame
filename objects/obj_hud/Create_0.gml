PlayerMax = 3

HP = array_create(PlayerMax, 0)
LV = array_create(PlayerMax, 1)
MaxHP = array_create(PlayerMax, 0)
Exp = array_create(PlayerMax, 0)
ExpNext = array_create(PlayerMax, 0)
Color = array_create(PlayerMax, c_white)
TP = array_create(PlayerMax, 0)
TPVisible = array_create(PlayerMax, false)
Hud = array_create(PlayerMax)
SkillShow = array_create(PlayerMax, "None")

for (var i = 0; i < PlayerMax; i++){
	var idx = string(i+1)
	
	//Cria struct
	Hud[i] = {};
	
	//Player Layer
	Hud[i].Panel = layer_get_flexpanel_node("Player"+idx);
	
	//HP
	var HpPanel = flexpanel_node_get_child(Hud[i].Panel, "HPBar")
	var HpStruct = flexpanel_node_get_struct(HpPanel);
	Hud[i].HPText = HpStruct.layerElements[0].elementId;
	Hud[i].HP = HpStruct.layerElements[1].elementId;
	
	//Exp & LV
	var ExpPanel = flexpanel_node_get_child(Hud[i].Panel, "EXPBar");
	var ExpStruct = flexpanel_node_get_struct(ExpPanel);
	Hud[i].Exp = ExpStruct.layerElements[0].elementId;
	Hud[i].LV = ExpStruct.layerElements[2].elementId;
	
	//TP
	Hud[i].PanelTP = layer_get_flexpanel_node("TpBar"+idx);
	var Bar = flexpanel_node_get_child(Hud[i].PanelTP, "Bar");
	var SkillName = flexpanel_node_get_child(Hud[i].PanelTP, "SkillName");
	var IconPanel = flexpanel_node_get_child(Hud[i].PanelTP, "Icon");
	var Skill = flexpanel_node_get_struct(SkillName)
	var Barra = flexpanel_node_get_struct(Bar);
	var Icon = flexpanel_node_get_struct(IconPanel);
	Hud[i].TP = Barra.layerElements[1].elementId;
	Hud[i].Skill = Skill.layerElements[0].elementId;
	Hud[i].Icon = Icon.layerElements[0].elementId;
	
	//GOLD
	var ItensPanel = flexpanel_node_get_child(Hud[0].Panel, "Itens")
	var ItensStruct = flexpanel_node_get_struct(ItensPanel);
	Hud[i].Gold = ItensStruct.layerElements[0].elementId;
	
}

//Mensagem de PRESS
Press = layer_get_flexpanel_node("Press");
Key = flexpanel_node_get_child(Press, "Key");
keysla = flexpanel_node_get_struct(Key);
PText = keysla.layerElements[0].elementId;