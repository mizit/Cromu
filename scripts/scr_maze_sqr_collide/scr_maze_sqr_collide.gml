//Проверяем четыре координаты углов квадрата на столкновение со стенами в лабиринте
//Это простой способ проверить врезается ли наш объект во что-то
//_x _y - координаты левого верхнего угла, _size - размер квадрата
function scr_maze_sqr_collide(_x, _y, _size){
	if (scr_maze_get_cell(_x, _y).wall != noone)
		return true;
	if (scr_maze_get_cell(_x, _y + _size).wall != noone)
		return true;
	if (scr_maze_get_cell(_x + _size, _y).wall != noone)
		return true;
	if (scr_maze_get_cell(_x + _size, _y + _size).wall != noone)
		return true;
	return false;
}