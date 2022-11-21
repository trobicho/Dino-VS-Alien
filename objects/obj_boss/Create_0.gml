/// @description Insert description here
// You can write your code in this editor

oscillate_speedX = 2;
oscillate_speedY = 4;
oscillate_amplitude = 30;
oscillate = 0;
catching_speed = 15;
backward_speed = 150;
cur_advance = 0;
back_clock = 0;
invulnerability_timer = 10;

boss_alien_state_anim = [[0, 1, 2, 3, 4, 5, 6, 7], [8, 7, 4, 3, 2, 1]];
boss_alien_anim_index = -1;
anim_clock_alien = 0;
alarm_set(0, invulnerability_timer * room_speed);


state = 0; //0 = invincible, 1=can_be_hit, 2=backward;

xBase = x;
yBase = y;
yHit = 0;