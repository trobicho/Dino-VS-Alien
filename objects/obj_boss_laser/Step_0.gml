/// @description Insert description here
// You can write your code in this editor

if (stretching == true) {
	stretch += (spd * (delta_time / 1000000)) / sprite_width;
}

image_angle = dir;
var lenX = lengthdir_x(stretch * sprite_width, dir);
var lenY = lengthdir_y(stretch * sprite_width, dir);

stretching = true;
collisionId = collision_line(x, y, x + lenX, y + lenY, obj_collider, false, false);
if (collisionId) {
	stretching = false;
	var new_stretch = point_distance(x, y, collisionId.x, collisionId.bbox_top) *  (1.0 / lengthdir_y(1.0, dir));
	new_stretch /= sprite_width;
	new_stretch += 0.01;
	if (new_stretch < stretch) {
		stretch = new_stretch;
		lenX = lengthdir_x(stretch * sprite_width, dir);
		lenY = lengthdir_y(stretch * sprite_width, dir);
	}
}

with (collision_line(x, y, x + lenX, y + lenY, obj_dino, false, true)) {
	if(!just_hit){
		just_hit=true;
		Health-=1;
		if(Health<=0){
			sprite_index=spr_raptorDeath;
			audio_play_sound(snd_death,1,false);
		}
		else{
			sprite_index=spr_raptorHit;
			image_index=0;
			alarm[0]=hitStun*room_speed;
			alarm[1]=invFrame*room_speed;
			invincible=true;
		}
	}
	other.stretching = false;
	other.stretch = point_distance(other.x, other.y, x + targetX, y + targetY);
	other.stretch /= other.sprite_width;
}