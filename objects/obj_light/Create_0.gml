light_force = 10;
x = obj_hero.x
y = obj_hero.y
for (i = 0; i < light_force * 2 + 1; i++)
{
	for (j = 0; j < light_force * 2 + 1; j++)
	{
		arr[i][j] = round(max(0, light_force - sqrt((i - light_force) * (i - light_force) + (j - light_force) * (j - light_force))));
	}
}
