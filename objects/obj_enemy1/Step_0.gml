/// @description Insert description here
// You can write your code in this editor

if(x>room_width)
	exit;
else if(!appeared){
	appeared=true;
	alarm[0]=room_speed*initCooldown;
}

if(can_shoot){
	with(instance_create_depth(x+shootOffsetX,y+shootOffsetY,1,obj_bullet1)){
		dir=point_direction(x,y,obj_dino.x+other.aimOffsetX,obj_dino.y+other.aimOffsetY);
		image_angle=dir;
	}
	can_shoot=false;
	alarm[0]=room_speed*shoot_cooldown;
}


//x+=sin(alphaX*T+betaX);
x+=spdX*delta_time / 1000000;
y+=sin(alphaY*T+betaY);
T+=delta_time / 1000000;
