global.show_hp = false
global.FullPlayer = false;
global.show_walls = false;
global.PlayersDown = 0
global.GameStarted = false
if !instance_exists(obj_global){
	instance_create_depth(0,0,0,obj_global)
}