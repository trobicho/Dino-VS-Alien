/// @description Insert description here
// You can write your code in this editor

if(T>0.4) {
	with (other) {
		if (state == 1) {
			state = 2;
			boss_alien_anim_index = 0;
			anim_clock_alien = 0;
			back_clock = 0;
			audio_sound_pitch(SFXBossHit, 1+random_range(-0.3,0.3));
			audio_play_sound(SFXBossHit,1,false);
		}
	}
}