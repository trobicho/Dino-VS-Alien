/// @description Insert description here
// You can write your code in this editor

if(x>room_width+2)
	exit;
else if(!appeared){
	appeared=true;
	//alarm[0]=room_speed*initCooldown;
	instance_create_layer(x,y,"Instances",obj_enemy1);
}



