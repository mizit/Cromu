function scr_cell_attraction_update(_cell){
	with(_cell)
	{
		var _dir_flags = 0;
		if (attraction > 0)
		{
			if (idx_x > 0)
			{
				var _test_cell = obj_maze.cells[idx_x - 1][idy_y];
				if (_test_cell.wall == noone) && ((_test_cell.step != step) || (_test_cell.attraction < attraction - 1))
				{
					_test_cell.attraction = attraction - 1;
					_test_cell.step = step;
					_dir_flags |= LEFT;
					//scr_cell_attraction_update(_test_cell);
				}
			}
			if (idx_x < obj_maze.width)
			{
				var _test_cell = obj_maze.cells[idx_x + 1][idy_y];
				if (_test_cell.wall == noone) && ((_test_cell.step != step) || (_test_cell.attraction < attraction - 1))
				{
					_test_cell.attraction = attraction - 1;
					_test_cell.step = step;
					_dir_flags |= RIGHT;
					//scr_cell_attraction_update(_test_cell);
				}
			}
			if (idy_y > 0)
			{
				var _test_cell = obj_maze.cells[idx_x][idy_y - 1];
				if (_test_cell.wall == noone) && ((_test_cell.step != step) || (_test_cell.attraction < attraction - 1))
				{
					_test_cell.attraction = attraction - 1;
					_test_cell.step = step;
					_dir_flags |= UP;
					//scr_cell_attraction_update(_test_cell);
				}
			}
			if (idx_x < obj_maze.height)
			{
				var _test_cell = obj_maze.cells[idx_x][idy_y + 1];
				if (_test_cell.wall == noone) && ((_test_cell.step != step) || (_test_cell.attraction < attraction - 1))
				{
					_test_cell.attraction = attraction - 1;
					_test_cell.step = step;
					_dir_flags |= DOWN;
					//scr_cell_attraction_update(_test_cell);
				}
			}
		}
		if (_dir_flags & LEFT)
		{
			scr_cell_attraction_update(obj_maze.cells[idx_x - 1][idy_y]);
		}
		if (_dir_flags & RIGHT)
		{
			scr_cell_attraction_update(obj_maze.cells[idx_x + 1][idy_y]);
		}
		if (_dir_flags & UP)
		{
			scr_cell_attraction_update(obj_maze.cells[idx_x][idy_y - 1]);
		}
		if (_dir_flags & DOWN)
		{
			scr_cell_attraction_update(obj_maze.cells[idx_x][idy_y + 1]);
		}
		
	}
}