/// @description Insert description here
// You can write your code in this editor

if (state == 1) {
	state = 2;
	boss_alien_anim_index = 0;
	anim_clock_alien = 0;
	alarm_set(0, 2 * room_speed);
	back_clock = 0;
}