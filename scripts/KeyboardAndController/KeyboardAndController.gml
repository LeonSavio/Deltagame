controls[1] = {
	Left: keyboard_check(vk_left),
	Right: keyboard_check(vk_right),
	Up: keyboard_check(vk_up),
	Down: keyboard_check(vk_down),
	Confirm: keyboard_check_pressed(ord("Z")),
	Cancel: keyboard_check_pressed(ord("X")),
	Change: keyboard_check_pressed(ord("C")),
	Taunt: keyboard_check_pressed(ord("V"))
}