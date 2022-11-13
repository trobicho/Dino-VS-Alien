/// @description Insert description here
// You can write your code in this editor

if(can_shoot){
	with(instance_create_depth(x+rock_offset_x,y+rock_offset_y,1,choose(obj_rock1,obj_rock2,obj_rock3))){
		//dir=point_direction(x+other.rock_offset_x,y+other.rock_offset_y,mouse_x,mouse_y)+random_range(-10,10);
		//velx=lengthdir_x(vel,dir);
		//vely=lengthdir_y(vel,dir);
		//velx=(mouse_x-other.x)/100+random_range(-0.5,0.5);
		
		var _x=other.x+other.rock_offset_x;
		var _y=other.y+other.rock_offset_y;
		/*vely=10;
		if((4*grav*(_y-mouse_y))>0){
			velx=-1*grav*(mouse_x-_x)/(-vely+sqrt(power(-vely,2)+2*grav*(_y-mouse_y)));
		}
		else{
			velx=1;
		}*/
		
		Ax=_x;
		Ay=_y;
		Bx=mouse_x;
		By=mouse_y;
		Cx=0.5*(_x+mouse_x);
		Cy=-100;
		
	}
	alarm[0]=room_speed*shoot_cooldown;
	can_shoot=false;
}