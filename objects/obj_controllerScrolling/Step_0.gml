/// @description Insert description here
// You can write your code in this editor

var displacement = scrolling_speed * delta_time / 1000000;

if (x > room_width) {
	instance_destroy(self);
}

x += displacement;