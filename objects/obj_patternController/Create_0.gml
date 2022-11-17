/// @description Insert description here
// You can write your code in this editor


pattern=choose(seq_pattern1,seq_pattern2);
//pattern=seq_pattern1;
show_debug_message(pattern);
nextPattern=0;
//patternId=layer_sequence_create("pattern",room_width+1,0,pattern);
patternId=layer_sequence_create("pattern",room_width+1,0,pattern);

//show_debug_message(patternId);
nextPatternId=0;

