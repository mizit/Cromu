//Попытка отрисовать все стены из поля 1000х1000 повесит даже самый мощный комп,
//так что здесь мы задаём границы отрисовки
var _view_x, _view_y, _view_xw, _view_yh;
//_view_x - левая граница видимого экрана, 
// обычно она равна - координате х игрока минус половина ширины общего обзора, 
// "obj_hero.x -  view_get_wport(0) / 2" вот этот кусок, view_get_wport(0) это ширина обзора из камеры 0(камер может быть несколько, но мы используем одну)
// Далее если игрок упёрся в левую часть лабиринта то x-координата вида не должна выползать за границу лабиринта,
// таким образом x-координата не должна быть меньше ноля, за это отвечает конструкция "max(0, ...)"
// Аналогично - справа, только здесь наша левая граница не должна приближаться к правой границе лабиринта больше,
// чем ширина лабиринта минус ширина вида "room_width - view_get_wport(0)"
_view_x = min(room_width - view_get_wport(0), max(0, obj_hero.x -  view_get_wport(0) / 2));
// Аналогичные правила для _view_y - верхней границы экрана
_view_y = min(room_height - view_get_hport(0), max(0, obj_hero.y -  view_get_hport(0) / 2));
// Для правой и нижней просто добавляем соответствующий  размер вида и на всякий случай ограничиваем границами комнаты
_view_xw = min(room_width, _view_x +  view_get_wport(0));
_view_yh = min(room_height, _view_y +  view_get_hport(0));
//Здесь получаем индексы ячеек на границах
_view_x = floor(_view_x / size);
_view_y = floor(_view_x / size);
_view_xw = ceil(_view_xw / size);
_view_yh = ceil(_view_yh / size);

//А здесь отрисовываем ячейки в границах индексов
for (_x = _view_x; _x < _view_xw; _x++)
{
	for (_y = _view_y; _y < _view_yh; _y++)
	{
		if (cells[_x][_y].wall == spr_wall)
		{
			draw_sprite(spr_wall, -1, _x * size, _y * size);
		}
		if (cells[_x][_y].attraction > 0)
			draw_text(_x*size, _y*size, cells[_x][_y].attraction);
	}
}