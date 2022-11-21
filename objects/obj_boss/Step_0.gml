/// @description Insert description here
// You can write your code in this editor

oscillate += (delta_time / 1000000);
x = (xBase + cur_advance);// + sin(oscillate * oscillate_speedX) * oscillate_amplitude;
y = yBase + sin(oscillate * oscillate_speedY) * oscillate_amplitude;

if (state != 2) {
	cur_advance += catching_speed * (delta_time / 1000000);
}

else if (state == 2) {
	back_clock += delta_time / 1000000;
	yHit = sin(back_clock * 10) * 5;
	image_angle = yHit;
	cur_advance -= backward_speed * (delta_time / 1000000);
	if (cur_advance <= 0) {
		image_angle = 0;
		back_clock = 0;
		cur_advance = 0;
		state = 0;
		alarm_set(0, invulnerability_timer * room_speed);
	}
}

if (state != 0) {
	if (boss_alien_anim_index != -1) {
		anim_clock_alien += delta_time;
		if (anim_clock_alien / 1000000 >= 1.0 / sprite_get_speed(spr_boss_alien_strip8)) {
			anim_clock_alien = 0;
			boss_alien_anim_index += 1;
			if (boss_alien_anim_index >= array_length(boss_alien_state_anim[state - 1]))
				boss_alien_anim_index = -1;
		}
	}
}

if (state == 1) {
	if (!audio_is_playing(SFXBossWobble)) {
		audio_play_sound(SFXBossWobble, 1, true);
	}
	var distDino = room_width;
	var dino = instance_find(obj_dino, 0);
	if (dino != noone) {
		distDino = point_distance(x, y, dino.x + dino.targetX, dino.y + dino.targetY);
	}
	var gain = min((distDino - 100) / (room_width - 100), 1.0);
	show_debug_message(gain);
	audio_sound_gain(SFXBossWobble, 1.0 - gain, 0);
}

else {
	audio_stop_sound(SFXBossWobble);
}