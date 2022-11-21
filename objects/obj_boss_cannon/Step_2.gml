/// @description Insert description here
// You can write your code in this editor

boss = instance_find(obj_boss, 0);
dino = instance_find(obj_dino, 0);

if (boss != noone) {
	x = boss.x + offsetX;
	y = boss.y + offsetY;

	if (dino != noone) {
		if (boss.state != 2) {
			
			var targetX = dino.x + dino.targetX;
			var targetY = dino.y + dino.targetY;
			len_vec = sqrt((targetX - x) * (targetX - x) + (targetY - y) * (targetY - y));
			//show_debug_message(len_vec);
			if (len_vec > 0.5) {
				angle = arccos((targetX - x) / len_vec);
				angleFinal = 0 - radtodeg(angle) + offsetAngle; //- offsetAngle;
				angleFinal = min(max(angleFinal, angleMin), angleMax);
				image_angle = angleFinal;
			
				if (instance_exists(obj_boss_laser) == false) {
					instance_create_depth(x, y, 350, obj_boss_laser);
				}
				with (instance_find(obj_boss_laser, 0)) {
					x=other.x;
					y=other.y;
					dir =  other.angleFinal - other.offsetAngle;
				}
			}
		}
		else {
			instance_destroy(obj_boss_laser);
			image_angle = angle + boss.image_angle;
		}
	}
}