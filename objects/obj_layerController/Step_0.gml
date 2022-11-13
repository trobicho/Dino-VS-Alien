/// @description Insert description here
// You can write your code in this editor

cameraX = camera_get_view_x(view_camera[0]);
layer_x(VolcanoId, cameraX);
layer_x(BackgroundId, cameraX);
layer_x(SmokeId, cameraX);
show_debug_message(camera_get_view_x(view_camera[0]));
show_debug_message(layer_get_x(VolcanoId));