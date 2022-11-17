/// @description Insert description here
// You can write your code in this editor


if(layer_sequence_get_x(patternId)<-room_width){
	layer_sequence_destroy(patternId);
	show_debug_message("DESTROY PATTERN");
	patternId=nextPatternId;
	nextPatternId=0;
}


if(layer_sequence_get_x(patternId)<0 && nextPatternId==0){
	nextPattern=choose(seq_pattern1,seq_pattern2);
	nextPatternId=layer_sequence_create("pattern",room_width+1,0,nextPattern);
	show_debug_message("allo");
}

