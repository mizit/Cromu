function scr_keyboard_movement_check(){
	var _ans = 0;
	if (keyboard_check(global.keyboard_set.key_left))
		_ans |= LEFT;	//Запись типа "_ans |= LEFT" разворачивается в _ans = _ans | LEFT 
						//Здесь я устанавливаю в _ans бит LEFT описанный в scr_startup
						//Операнд "|" - логическое И, в нашем случае используется для установки бита. 
	if (keyboard_check(global.keyboard_set.key_right))
		_ans |= RIGHT;
	if (keyboard_check(global.keyboard_set.key_up))
		_ans |= UP;
	if (keyboard_check(global.keyboard_set.key_down))
		_ans |= DOWN;
	return _ans;
}