/// @description Insert description here
// You can write your code in this editor

if(can_spawn){
	/*for(var i=0;i<instance_number(obj_enemySpawnPoint);i++){
		
	}*/
	var inst=instance_nearest(obj_volcan.x,obj_volcan.y,obj_enemySpawnPoint);
	show_debug_message(inst);
	if(inst!=noone){
		with(inst){
			instance_create_depth(x+random_range(-other.rangeX,other.rangeX),y+random_range(-other.rangeY,other.rangeY),1,obj_enemy1);
		}
	}
	show_debug_message(string(instance_number(obj_enemySpawnPoint)));
	can_spawn=false;
	alarm[0]=room_speed*spawn_cooldown;
}

