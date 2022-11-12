/// @description Insert description here
// You can write your code in this editor

if(can_shoot){
	with(instance_create_depth(x+rock_offset_x,y+rock_offset_y,1,choose(obj_rock1,obj_rock2,obj_rock3))){
		dir=point_direction(x+other.rock_offset_x,y+other.rock_offset_y,mouse_x,mouse_y)+random_range(-10,10);
		velx=lengthdir_x(vel,dir);
		vely=lengthdir_y(vel,dir);
	}
	alarm[0]=room_speed*shoot_cooldown;
	can_shoot=false;
}