/// @description Insert description here
// You can write your code in this editor

boss = instance_find(obj_boss, 0);
dino = instance_find(obj_dino, 0);

if (boss != noone) {
	x = boss.x + offsetX;
	y = boss.y + offsetY;

	if (dino != noone) {
		if (boss.state != 2) {
			
			len_vec = sqrt((dino.x - x) * (dino.x - x) + (dino.y - y) * (dino.y - y));
			//show_debug_message(len_vec);
			if (len_vec > 0.5) {
				angle = arccos((dino.x - x) / len_vec);
				image_angle = 0 - radtodeg(angle) + offsetAngle; //- offsetAngle;
			}
		}
		else
			image_angle = angle + boss.image_angle;
	}
}