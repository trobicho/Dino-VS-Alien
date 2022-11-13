/// @description Insert description here
// You can write your code in this editor

x += scrolling_speed * delta_time / 1000000;

if (x > room_width) {
	instance_destroy(self);
}