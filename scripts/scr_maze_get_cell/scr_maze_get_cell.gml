//Скрипт возвращает ячейку лабиринта из соответствующих координат
//Для получение индексов массива просто делим координаты на размер ячейки
function scr_maze_get_cell(_x, _y){
return obj_maze.cells[floor(_x / obj_maze.size)][floor(_y / obj_maze.size)];
}