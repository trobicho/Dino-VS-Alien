/// @description Insert description here
// You can write your code in this editor

var jump = 0;

var hmove = 0;


hmove = keyboard_check(vk_right) - keyboard_check(vk_left) + keyboard_check(ord("D")) - keyboard_check(ord("A"));
jump = keyboard_check_pressed(vk_space);

if (place_meeting(x, y + 1, obj_collider)) {
	vsp = 0;
	if (jump) {
		vsp = -jump_speed;
	}
}

if (!place_meeting(x, y + 1, obj_collider)) {
	vsp += grv;
}

hsp = hmove * delta_speed;

x += hsp;
y += vsp;