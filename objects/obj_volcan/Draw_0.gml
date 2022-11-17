/// @description Insert description here
// You can write your code in this editor

if (shader_is_compiled(shd_lava) && shader_is_compiled(shd_propagation)) {
	//draw_self();
	if ((current_time - last_time) / 1000 > speed_propagation) {
		show_debug_message("IT's propagation time!!!")
		var sampleObstacle = shader_get_sampler_index(shd_propagation, "s_lavaObstacle");
		var samplePropagation = shader_get_sampler_index(shd_propagation, "s_lavaPropagation");
		var uTextSize = shader_get_uniform(shd_propagation, "u_vTextSize");
		var sprObstacle = sprite_get_texture(volcano_lava_obstacle, 0);
		var sprPropagation = surface_get_texture(surface_propagation);
		surface_set_target(surface_propagation_tmp);
		//application_surface_draw_enable(true);
		shader_set(shd_propagation);
		texture_set_stage(sampleObstacle, sprObstacle);
		shader_set_uniform_f(uTextSize, sprite_width, sprite_height);
		texture_set_stage(samplePropagation, sprPropagation);
		draw_surface(surface_propagation, 0, 0);
		shader_reset();
		surface_reset_target();

		surface_set_target(surface_propagation);
		draw_surface(surface_propagation_tmp, 0, 0)
		surface_reset_target();
		last_time = current_time;
	}

	var samplePropagation = shader_get_sampler_index(shd_lava, "s_lavaPropagation");
	var sampleGradiant = shader_get_sampler_index(shd_lava, "s_lavaGradiant");
	var sprPropagation = surface_get_texture(surface_propagation);
	var sprGradiant = sprite_get_texture(volcano_lava_gradiant, 0);
	shader_set(shd_lava);
	texture_set_stage(samplePropagation, sprPropagation);
	texture_set_stage(sampleGradiant, sprGradiant);
	draw_self();
	shader_reset();
}

else show_debug_message("Test shader Error")