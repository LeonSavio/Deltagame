width = 64;
height = 128;

borderspace = 16;
textspace = 32;

pos = 0;

options = [];
long = [];

//Main Menu
options[0] = ["Play", "Settings", "Credits", "Exit"]
long[0] = array_length(options[0])-1

//Settings
options[1] = ["Controls", "Back"]
long[1] = array_length(options[1])-1

//Controls
options[2] = [
	"[GENERAL]",
	"Fullscreen: F4",
	"Mute: F6" ,
	"Volume Up: * (Numberpad)",
	"Volume Down: - (Numberpad)",
	"[PLAYER ONE]", 
	"Left: Left Arrow" , 
	"Right: Right Arrow", 
	"Up: Up Arrow" , 
	"Down: Down Arrow" , 
	"Confirm: Z" , 
	"Cancel: X" ,
	"Change: C" ,
	"Take the Camera: N" ,
	"Taunt: V",
	"[PLAYER TWO]", 
	"Left: A" , 
	"Right: D", 
	"Up: W" , 
	"Down: S" , 
	"Confirm/Join Game: Enter" , 
	"Cancel: Shift" ,
	"Change: Ctrl(Control)" ,
	"Take the Camera: M" ,
	"Taunt: T",
	"[PLAYER THREE]", 
	"Left: J" , 
	"Right: L", 
	"Up: I" , 
	"Down: K" , 
	"Confirm/Join Game: E" , 
	"Cancel: R" ,
	"Change: Alt" ,
	"Take the Camera: Q" ,
	"Taunt: Y",
	"Back",
]
long[2] = array_length(options[2])-1

menu_level = 0;
op_length = 0;

if !instance_exists(obj_soul){
	instance_create_layer(x,y,layer,obj_soul)
}

obj_soul.x = x+borderspace-(12*(string_length(options[menu_level][pos]))+1)
obj_soul.y = y + (textspace * pos)