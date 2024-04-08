var _row = 0;
/*switch(move)
{
	case (DOWN):
		_row = 0;
	break;
	case (DOWN | RIGHT):
		_row= CELL_SIZE;
	break;
	case (RIGHT):
		_row = CELL_SIZE * 2;
	break;
	case (RIGHT | UP):
		_row = CELL_SIZE * 3;
	break;
	case (UP):
		_row = CELL_SIZE * 4;
	break;
	case (LEFT | UP):
		_row = CELL_SIZE * 5;
	break;
	case (LEFT):
		_row = CELL_SIZE * 6;
	break;
	case (LEFT | DOWN):
		_row = CELL_SIZE * 7;
	break;
}*/

_row = ((round(point_direction(x, y, mouse_x, mouse_y) / 45) + 2) % 8) * CELL_SIZE;


draw_sprite_part(sprite_index, 0, round(img_idx) * CELL_SIZE, _row, CELL_SIZE, CELL_SIZE, x, y);