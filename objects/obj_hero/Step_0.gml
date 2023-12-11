//Так как в create мы приравняли move_check к скрипту, то теперь можем запускать его как скрипт
var _move = move_check();
if (_move & LEFT)	//Бинарная проверка. Вернёт истину, если в _move установлен бит LEFT описанный в scr_stratup.
{
	//Здесь мы проверяем свою возможность сдвинуться на указанную позицию
	//Пока наша скорость кратна размеру ячейки проблем не будет
	if (scr_maze_sqr_collide(x - my_speed, y, sprite_width - 1) == false)
		x -= my_speed;
}
if (_move & RIGHT)
{
	if (scr_maze_sqr_collide(x + my_speed, y, sprite_width - 1) == false)
		x += my_speed;
}
if (_move & UP)
{
	if (scr_maze_sqr_collide(x, y - my_speed, sprite_width - 1) == false)
		y -= my_speed;
}
if (_move & DOWN)
{
	if (scr_maze_sqr_collide(x, y + my_speed, sprite_width - 1) == false)
		y += my_speed;
}
