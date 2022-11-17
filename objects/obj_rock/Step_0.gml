/// @description Insert description here
// You can write your code in this editor

if(!enabled) exit;

vely+=grav*delta_time/1000000;

/*
x+=velx;
y-=vely;
*/

x=lerp(lerp(Ax,Cx,T),lerp(Cx,Bx,T),T);
y=lerp(lerp(Ay,Cy,T),lerp(Cy,By,T),T);
T+=delta_time/1000000;
dir=point_direction(prevX,prevY,x,y);
prevX=x;
prevY=y;

var controllerScrolling = instance_find(obj_controllerScrolling, 0);

if (controllerScrolling != noone) {
	//x+=controllerScrolling.scrolling_speed * delta_time / 1000000;
	Ax+=controllerScrolling.scrolling_speed * delta_time / 1000000;
	Bx+=controllerScrolling.scrolling_speed * delta_time / 1000000;
	Cx+=controllerScrolling.scrolling_speed * delta_time / 1000000;
}

if(x<0 || x>room_width || y>room_height) {
	instance_destroy(self);
}