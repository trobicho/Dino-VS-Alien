/// @description Insert description here
// You can write your code in this editor

if (shader_is_compiled(shd_crt)) {
	shader_set(shd_crt);
	draw_surface(application_surface, 0, 0);
	shader_reset();
}


else show_debug_message("Shader CRT failed");