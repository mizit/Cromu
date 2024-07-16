function scr_attraction_update(){
	var _start_cell = scr_maze_get_cell(obj_hero.x, obj_hero.y);
	_start_cell.attraction = 30;
	_start_cell.step++;
	scr_cell_attraction_update(_start_cell);
}