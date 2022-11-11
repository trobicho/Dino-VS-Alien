/// @description Insert description here
// You can write your code in this editor

var	speed;
var jump;

var hmove = 0;

hmove = keyboard_check(vk_right) - keyboard_check(vk_left)  + keyboard_check(ord("S")) - keyboard_check(ord("W"));
jump = keyboard_check_pressed(vk_space);

if (jump && place_meeting(x,  y + 1,  obj_collider))  {
	vsp = -jump_speed;
}


x += hsp;
y += vsp;