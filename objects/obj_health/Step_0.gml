/// @description Insert description here
// You can write your code in this editor

Health=obj_dino.Health;
if(prevHealth!=Health){
	image_speed=1;
	prevHealth=Health;
}
else if(image_speed==1){
	switch(Health){
		case 2:
			if(image_index==8){
				image_speed=0;
			}
			break;
		case 1:
			if(image_index==13){
				image_speed=0;
			}
			break;
		case 0:
			if(image_index==21){
				image_speed=0;
			}
			break;
	}
}


