/// @description Insert description here
// You can write your code in this editor

/*
if(Health<=0){
	x-=scrolling_speed*delta_time/1000000;
	exit;
}
*/

unstuck();

var jump = 0;

var hmove = 0;

if(Health>0){
	hmove = keyboard_check(vk_right) - keyboard_check(vk_left) + keyboard_check(ord("D")) - keyboard_check(ord("A"));
	jump = keyboard_check_pressed(vk_space);
}
else
	x-=scrolling_speed*delta_time/1000000;

var is_grounded = place_meeting(x, y + 1, obj_collider);

if (is_grounded) {
	//show_debug_message("grounded");
	spdY = 0;
	if (jump) {
		spdY = -jump_speed;
	}
}

else {
	spdY += grv;
}

spdX = hmove * delta_speed;

//var controllerScrolling = instance_find(obj_controllerScrolling, 0);

/*
if (controllerScrolling != noone) {
	 spdX += controllerScrolling.scrolling_speed;
}
*/

var X = spdX * delta_time / 1000000;
var Y = spdY * delta_time / 1000000;

if (place_meeting(x + X, y, obj_collider)) {
	//var Xp = X / 20.0;
	var Xp = sign(X);
	while (!place_meeting(x + Xp, y, obj_collider)) {
		x += Xp;
	}
}
else {
	x += X;
}

if (place_meeting(x, y + Y, obj_collider)) {
	//var Yp = Y / 20.0;
	var Yp = sign(Y);
	while (!place_meeting(x, y + Yp, obj_collider)) {
		y += Yp;
	}
}
else {
	y += Y;
}