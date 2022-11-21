/// @description Insert description here
// You can write your code in this editor
if(T>0.4 && enabled){
	sprite_index=spr_laveSol;
	enabled=false;
	dir=-90;
	instance_create_depth(other.x,other.y,1,obj_rocheDeath);
	instance_destroy(other);
	audio_sound_pitch(SFXRock, 1+random_range(-0.3,0.3));
	audio_play_sound(SFXRock,1,false);
}




