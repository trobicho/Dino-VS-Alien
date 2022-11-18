/// @description Insert description here
// You can write your code in this editor

BackgroundId = layer_get_id("Background");
VolcanoId = layer_get_id("Volcano");
SmokeId = layer_get_id("Smoke");
GroundId = layer_get_id("Ground");

ForgroundForestLayerId = layer_get_id("Forground_forest");
MiddlegroundForestLayerId = layer_get_id("Middleground_forest");

curForground = 0;
curMiddleground = 0;
loadForground = false;
loadMiddleground = false;

if(GroundId==-1)
	show_debug_message("NO GROUND LAYER!");
else
	show_debug_message("GROUND FOUND");
PatternId = layer_get_id("pattern");

//layer_hspeed(GroundId,scrolling_speed);
layer_hspeed(ForgroundForestLayerId, - scrolling_speed / room_speed);
layer_hspeed(MiddlegroundForestLayerId, - scrolling_speed / room_speed / 2);