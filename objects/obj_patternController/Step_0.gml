/// @description Insert description here
// You can write your code in this editor

/*
if(layer_sequence_get_x(patternId)<-room_width){
	layer_sequence_destroy(patternId);
	show_debug_message("DESTROY PATTERN");
	patternId=nextPatternId;
	nextPatternId=0;
}
*/

var X=layer_sequence_get_x(patternId);
if(X<=-room_width){
	layer_sequence_destroy(patternId);
	patternId=nextPatternId;
	var X2=layer_sequence_get_x(nextPatternId);;
	nextPattern=patternlist[irandom_range(0,array_length(patternlist)-1)];
	nextPatternId=layer_sequence_create("pattern",X2+1280,0,nextPattern);
	show_debug_message("allo");
}

