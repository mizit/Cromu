//Так как в create мы приравняли move_check к скрипту, то теперь можем запускать его как скрипт
var _move = move_check();
if (_move & LEFT)	//Бинарная проверка. Вернёт истину, если в _move установлен бит LEFT описанный в scr_stratup.
{
	x -= my_speed;
}
if (_move & RIGHT)
{
	x += my_speed;
}
if (_move & UP)
{
	y -= my_speed;
}
if (_move & DOWN)
{
	y += my_speed;
}