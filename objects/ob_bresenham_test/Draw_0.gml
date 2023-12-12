//Проверка работы алгоритма Брезенхэма, закрашивает квадратики от героя до мышки

var _queue = scr_bresenham(obj_hero.x, obj_hero.y, mouse_x, mouse_y);
if (!ds_exists(_queue, ds_type_queue))
	exit
while (!ds_queue_empty(_queue))
{
	var _x = ds_queue_dequeue(_queue)
	var _y = ds_queue_dequeue(_queue)
	draw_rectangle(_x * CELL_SIZE, _y * CELL_SIZE, _x * CELL_SIZE + CELL_SIZE, _y * CELL_SIZE + CELL_SIZE, 0)
}
ds_queue_destroy(_queue)