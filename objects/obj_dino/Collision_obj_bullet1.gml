/// @description Insert description here
// You can write your code in this editor

if(!just_hit){
	just_hit=true;
	Health-=1;
	show_debug_message("hit");
	if(Health<=0){
		sprite_index=spr_raptorDeath;
		show_debug_message("Dead");
		audio_play_sound(snd_death,1,false);
	}
	else{
		show_debug_message("inv");
		sprite_index=spr_raptorHit;
		image_index=0;
		//y-=200;
		alarm[0]=hitStun*room_speed;
		alarm[1]=invFrame*room_speed;
		//alarm[2]=blinkRate*room_speed;
		invincible=true;
	}
	audio_sound_pitch(SDX_dinoHit2, 1+random_range(-0.3,0.3));
	audio_play_sound(SDX_dinoHit2,1,false);
}


