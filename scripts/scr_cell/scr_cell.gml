//Создаём ячейку лабиринта,
//пока что у неё три поля
function Cell(_x, _y) constructor
{
	idx_x = _x;			//Индекс ячейки в массиве по координате х
	idy_y = _y;			//Индекс ячейки в массиве по координате y
	wall = noone;		//Наличие в ячейке стены
}