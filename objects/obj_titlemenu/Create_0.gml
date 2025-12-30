width = 64;
height = 128;

borderspace = 16;
textspace = 32;

pos = 0;

options = [];

//Main Menu
options[0] = ["Play", "Settings", "Credits", "Exit"]

//Settings
options[1] = ["Video Settings", "Controls", "Back"]

if (!variable_global_exists("controls")){
	global.controls = {
		Fullscreen: vk_f4,
		Menu: ord("C"),
		Mute: vk_f6,
		Quit: vk_escape,
		Left1: vk_left,
		Right1: vk_right,
		Up1: vk_up,
		Down1: vk_down,
		Confirm1: ord("Z"),
		Cancel1: ord("X"),
	}
}

//Controls
options[2] = [
	"[GENERAL]", 
	"Fullscreen: " + KeytoString(global.controls.Fullscreen), 
	"Menu: " + KeytoString(global.controls.Menu), 
	"Mute: " + KeytoString(global.controls.Mute), 
	"Quit(In-Game): " + KeytoString(global.controls.Quit), 
	"[PLAYER ONE]", 
	"Left: Left Arrow" , 
	"Right: Right Arrow", 
	"Up: Up Arrow" , 
	"Down: Down Arrow" , 
	"Confirm: Z" , 
	"Cancel/Run: X" ,
	"Taunt: V",
	"[PLAYER TWO]", 
	"Left: A" , 
	"Right: D", 
	"Up: W" , 
	"Down: S" , 
	"Confirm/Join Game: Enter" , 
	"Cancel/Run: Shift" ,
	"Taunt: T",
	"Back",
]

menu_level = 0;
op_length = array_length(options[menu_level]);

if !instance_exists(obj_soul){
	instance_create_layer(x,y,layer,obj_soul)
}

obj_soul.x = x+borderspace-(12*(string_length(options[menu_level][pos]))+1)
obj_soul.y = y + (textspace * pos)