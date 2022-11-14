/// @description Insert description here
// You can write your code in this editor


rock_offset_x=0;
rock_offset_y=0;

//shoot_speed;
is_shooting=false;
shoot_cooldown=0.8;
//can_shoot=true;

initCooldown=3;
//can_shoot=true;
can_shoot=false;
volcano_offset_x = x;
alarm[0]=room_speed*initCooldown;
surface_propagation = surface_create(sprite_width, sprite_height);
surface_set_target(surface_propagation);
draw_sprite(volcano_lava_propagation, 0, 0, 0);
speed_propagation = 0.5;
last_time = current_time;
surface_reset_target();