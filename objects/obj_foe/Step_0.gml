var _my_cell = scr_maze_get_cell(x, y);
if (obj_maze.cells[_my_cell.idx_x - 1][_my_cell.idy_y].attraction > _my_cell.attraction)
{
	x -= my_speed;
}
if (obj_maze.cells[_my_cell.idx_x + 1][_my_cell.idy_y].attraction > _my_cell.attraction)
{
	x += my_speed;
}
if (obj_maze.cells[_my_cell.idx_x][_my_cell.idy_y - 1].attraction > _my_cell.attraction)
{
	y -= my_speed;
}
if (obj_maze.cells[_my_cell.idx_x][_my_cell.idy_y + 1].attraction > _my_cell.attraction)
{
	y += my_speed;
}
