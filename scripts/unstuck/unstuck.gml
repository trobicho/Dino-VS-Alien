// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unstuck(){
	if(place_meeting(x,y,obj_collider)){
		for(var j=0;j<1000;j++){
			if(!place_meeting(x+j,y,obj_collider)){
				x+=j;
				return 0;
			}
			if(!place_meeting(x-j,y,obj_collider)){
				x-=j;
				return 0;
			}
			if(!place_meeting(x,y+j,obj_collider)){
				y+=j;
				return 0;
			}
			if(!place_meeting(x,y-j,obj_collider)){
				y-=j;
				return 0;
			}
			
			if(!place_meeting(x+j,y+j,obj_collider)){
				x+=j;
				y+=j;
				return 0;
			}
			if(!place_meeting(x+j,y-j,obj_collider)){
				x+=j;
				y-=j;
				return 0;
			}
			if(!place_meeting(x-j,y+j,obj_collider)){
				x-=j;
				y+=j;
				return 0;
			}
			if(!place_meeting(x-j,y-j,obj_collider)){
				x-=j;
				y-=j;
				return 0;
			}
		}
	}
}