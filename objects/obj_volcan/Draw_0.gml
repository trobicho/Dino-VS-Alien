/// @description Insert description here
// You can write your code in this editor

if (shader_is_compiled(shd_lava) && shader_is_compiled(shd_propagation)) {
	if ((current_time - last_time) / 1000 > speed_propagation) {
		show_debug_message("IT's propagation time!!!")
		var sampleObstacle = shader_get_sampler_index(shd_propagation, "s_lavaObstacle");
		var samplePropagation = shader_get_sampler_index(shd_propagation, "s_lavaPropagation");
		var uTextCoord = shader_get_uniform(shd_propagation, "u_vTextCoord");
		var uTextSize = shader_get_uniform(shd_propagation, "u_vTextSize");
		var sprObstacle = sprite_get_texture(volcano_lava_obstacle, 0);
		var sprPropagation = surface_get_texture(surface_propagation);
		surface_set_target(surface_propagation);
		application_surface_draw_enable(true);
		//shader_set(shd_propagation);
		texture_set_stage(sampleObstacle, sprObstacle);
		shader_set_uniform_f(uTextCoord, 0, 0);
		shader_set_uniform_f(uTextSize, sprite_width, sprite_height);
		texture_set_stage(samplePropagation, sprPropagation);
		draw_surface(surface_propagation, 0, 0);
		
		surface_reset_target();
		//shader_reset();
		last_time = current_time;
	}

	var samplePropagation = shader_get_sampler_index(shd_lava, "s_lavaPropagation");
	shader_set(shd_lava);
	var sprPropagation = surface_get_texture(surface_propagation);
	texture_set_stage(samplePropagation, sprPropagation);
	draw_self();
	shader_reset();
}

else show_debug_message("Test shader Error")