/// @description Insert description here
// You can write your code in this editor

patternlist=[seq_pattern1,seq_pattern2,seq_pattern3,seq_pattern4,seq_ground];
//patternlist=[seq_pattern1,seq_ground,seq_pattern2];
//patternlist=[seq_pattern2];
pattern=patternlist[irandom_range(0,array_length(patternlist)-1)];
nextPattern=patternlist[irandom_range(0,array_length(patternlist)-1)];

patternId=layer_sequence_create("pattern",room_width-1,0,pattern);
nextPatternId=layer_sequence_create("pattern",2*room_width-2,0,nextPattern);

//show_debug_message(patternId);

