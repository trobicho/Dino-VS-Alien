/// @description Insert description here
// You can write your code in this editor

if(room==CocoInfScrolling){
	audio_stop_all();
	audio_play_sound(snd_music2,10,true);
	prevRoom=room;
}
if(room==TitleScreen && prevRoom==CocoInfScrolling){
	audio_stop_all();
	audio_play_sound(snd_music1,10,true);
	prevRoom=room;
}



