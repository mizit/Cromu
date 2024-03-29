//Так как в create мы приравняли move_check к скрипту, то теперь можем запускать его как скрипт
move = move_check();
if (move & LEFT)	//Бинарная проверка. Вернёт истину, если в _move установлен бит LEFT описанный в scr_stratup.
{
	//Здесь мы проверяем свою возможность сдвинуться на указанную позицию
	//Пока наша скорость кратна размеру ячейки проблем не будет
	if (scr_maze_sqr_collide(x - my_speed, y, CELL_SIZE - 1) == false)
		x -= my_speed;
}
if (move & RIGHT)
{
	if (scr_maze_sqr_collide(x + my_speed, y, CELL_SIZE - 1) == false)
		x += my_speed;
}
if (move & UP)
{
	if (scr_maze_sqr_collide(x, y - my_speed, CELL_SIZE - 1) == false)
		y -= my_speed;
}
if (move & DOWN)
{
	if (scr_maze_sqr_collide(x, y + my_speed, CELL_SIZE - 1) == false)
		y += my_speed;
}

if ((x == xprevious) && (y == yprevious))
{
	img_idx = 0;
}
else
{
	img_idx+=0.2;
	if (img_idx > 5)
		img_idx = 0;
}