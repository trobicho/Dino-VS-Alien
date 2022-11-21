/// @description Insert description here
// You can write your code in this editor


if(T>0.4 && enabled){
	sprite_index=spr_laveSol;
	enabled=false;
	dir=-90;
	other.sprite_index=spr_ennemi1Death;
	other.image_index=0;
	audio_sound_pitch(SFXRock, 1+random_range(-0.3,0.3));
	audio_play_sound(SFXRock,1,false);
}



