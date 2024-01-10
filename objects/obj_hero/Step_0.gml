/// @description Insert description here
// You can write your code in this editor
var _xinput = keyboard_check(vk_right) - keyboard_check(vk_left);
var _yinput = keyboard_check(vk_down) - keyboard_check(vk_up);
move_and_collide(_xinput * hero_speed, _yinput * hero_speed, obj_wall, 4, 0, 0, hero_speed, hero_speed);





