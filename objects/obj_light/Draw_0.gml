for (i = 0; i < light_force * 2 + 1; i++)
{
	for (j = 0; j < light_force * 2 + 1; j++)
	{
		draw_set_alpha(arr[i][j] / 10);
		var _x, _y;
		_x = x - ((light_force - i) * CELL_SIZE);
		_y = y - ((light_force - j) * CELL_SIZE);
		draw_rectangle(_x, _y, _x + CELL_SIZE, y + CELL_SIZE, 0);
		//draw_text(_x, _y, arr[i][j]);
	}
}
draw_set_alpha(1);