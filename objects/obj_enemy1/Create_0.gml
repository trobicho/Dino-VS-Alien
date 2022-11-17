/// @description Insert description here
// You can write your code in this editor

shoot_cooldown=1;
shootOffsetX=0;
shootOffsetY=0;
aimOffsetX=100;
aimOffsetY=0;

appeared=false;
initCooldown=3;
//can_shoot=true;
can_shoot=false;
alarm[0]=room_speed*initCooldown;

spdX=300;
alphaX=1;
betaX=0;
alphaY=1+random_range(-0.2,0.2);
betaY=0+random_range(-1,1);
T=0;
