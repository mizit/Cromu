//Алгорит Брезенхэма для отрисовки и рассчёта разного рода линий в нашей сетке
//Детальней в вики
//Получает координаты начала и конца отрезка,
//Возвращает очередь содержащую пары x и y индексов клеток, которые требуется закрасить
//Так как очередь является контенйером её необходимо уничтожить после использования

function scr_bresenham(_x1, _y1, _x2, _y2){
	ans = ds_queue_create()
	var _backwards = 0
	if (_x2 < _x1)
	{
		var _tmp = _x1;
		_x1 = _x2;
		_x2 = _tmp;
		_tmp = _y1;
		_y1 = _y2;
		_y2 = _tmp;
		_backwards = 1
	}
	_x1 = floor(_x1 / CELL_SIZE)
	_x2 = floor(_x2 / CELL_SIZE)
	_y1 = floor(_y1 / CELL_SIZE)
	_y2 = floor(_y2 / CELL_SIZE)
	var _deltax = _x2 - _x1
	var _deltay = _y2 - _y1
	var _delta_c = 0
	if (_deltay < 0)
	{
		_deltay = -_deltay
		_delta_c = 1
	}
	var _error = 0
	if (_deltax >= _deltay)
	{
		var _deltaerr = _deltay + 1
		var _y = _y1
		var _diry = _y2 - _y1
		if (_diry > 0)
			_diry = 1
		if (_diry < 0)
			_diry = -1
		for (var _x = _x1; _x <= _x2; _x++)
		{
			ds_queue_enqueue(ans, _x, _y)
			_error = _error + _deltaerr
			if (_error >= (_deltax + 1))
			{
				_y = _y + _diry
				_error = _error - (_deltax + 1)
			}
		}
	}
	else
	{
		var _deltaerr = _deltax + 1
		var _x = _x1
		var _dirx = _x2 - _x1
		if (_dirx > 0)
			_dirx = 1
		if (_dirx < 0)
			_dirx = -1
		if (_delta_c == 0)
		{	
			for (var _y = _y1; _y <= _y2; _y++)
			{
				ds_queue_enqueue(ans, _x, _y)
				_error = _error + _deltaerr
				if (_error >= (_deltay + 1))
				{
					_x = _x + _dirx
					_error = _error - (_deltay + 1)
				}
			}
		}
		else
		{
			for (var _y = _y1; _y >= _y2; _y--)
			{
				ds_queue_enqueue(ans, _x, _y)
				_error = _error + _deltaerr
				if (_error >= (_deltay + 1))
				{
					_x = _x + _dirx
					_error = _error - (_deltay + 1)
				}
			}
		}	
	}
	if _backwards
	{
		var _tmp_stack = ds_stack_create()
		back_ans = ds_queue_create()
		var _lx, _ly;
		while (!ds_queue_empty(ans))
		{
			_lx = ds_queue_dequeue(ans)
			_ly = ds_queue_dequeue(ans)
			ds_stack_push(_tmp_stack, _ly, _lx)
		}
		ds_queue_destroy(ans)
		while (!ds_stack_empty(_tmp_stack))
		{
			ds_queue_enqueue(back_ans, ds_stack_pop(_tmp_stack))
		}
		ds_stack_destroy(_tmp_stack)
		return back_ans;
	}
	return ans;
}