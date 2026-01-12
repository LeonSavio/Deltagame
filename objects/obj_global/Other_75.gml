var _gamepad = async_load[? "pad_index"]
//show_debug_message(_gamepad)

switch (async_load[? "event_type"]){
	case "gamepad discovered":
		//show_debug_message("controle conectado: "+string(_gamepad))
		array_push(global.gamepads, _gamepad)
		gamepad_set_axis_deadzone(_gamepad, 0.5)
		gamepad_set_button_threshold(_gamepad,0.5)
		gamepad_set_colour(_gamepad,c_red)
		break;
	case "gamepad lost":
		//show_debug_message("controle desconectado: "+string(_gamepad))
		var _gamepad_index = array_get_index(global.gamepads,_gamepad)
		array_delete(global.gamepads,_gamepad_index,1)
		break;
}
if array_length(global.gamepads) > 0{
	global.main_gamepad = global.gamepads[0]
} else {
	global.main_gamepad = undefined
}
//show_debug_message(global.main_gamepad)