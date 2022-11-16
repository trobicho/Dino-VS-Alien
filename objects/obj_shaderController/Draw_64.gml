/// @description Insert description here
// You can write your code in this editor

//view_surface_id[0] = application_surface;
//surface_reset_target();
if (shader_is_compiled(shd_test)) {
	shader_set(shd_test);
	var cam = {
		x: camera_get_view_x(view_camera[0]),
		y: camera_get_view_y(view_camera[0])
	}
	draw_surface(application_surface, 0, 0);
	shader_reset();
}

else show_debug_message("Shader failed");