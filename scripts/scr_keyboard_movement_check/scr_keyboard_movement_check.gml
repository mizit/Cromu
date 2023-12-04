function scr_keyboard_movement_check(){
	var _ans = 0;
	if (keyboard_check(global.keyboard_set.key_left))
		_ans |= LEFT;
	if (keyboard_check(global.keyboard_set.key_right))
		_ans |= RIGHT;
	if (keyboard_check(global.keyboard_set.key_up))
		_ans |= UP;
	if (keyboard_check(global.keyboard_set.key_down))
		_ans |= DOWN;
	return _ans;
}