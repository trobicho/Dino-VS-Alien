/// @description Insert description here
// You can write your code in this editor


if(T>0.4 && enabled){
	sprite_index=spr_roche2;
	enabled=false;
	dir=-90;
	//x=other.x;
	y-=25;
	instance_create_depth(other.x,other.y,1,obj_rocheDeath);
	instance_destroy(other);
}



