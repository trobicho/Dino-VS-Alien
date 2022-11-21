/// @description Insert description here
// You can write your code in this editor

if (state != 0 && boss_alien_anim_index != -1) {
	var index_alien = boss_alien_state_anim[state - 1][boss_alien_anim_index];
	draw_sprite_ext(spr_boss_alien_strip9, index_alien, x, y, 1, 1, image_angle, c_white, 1);
}
else if (state == 1) {
	draw_sprite_ext(spr_boss_alien_strip9, 6, x, y, 1, 1, image_angle, c_white, 1);
}

else {
	draw_sprite_ext(spr_boss_alien_strip9, 0, x, y, 1, 1, image_angle, c_white, 1);
}
draw_self();