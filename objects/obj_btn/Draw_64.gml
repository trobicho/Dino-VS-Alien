/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(point_in_rectangle(mouse_x,mouse_y,posX-Hw,posY-Hh,posX+Hw,posY+Hh)){
	draw_set_font(fnt_font2);
	//draw_text_transformed_color(posX,posY,text,1.5,1.5,0,c_gray,c_gray,c_gray,c_gray,255);
	draw_text_color(posX,posY,text,c_gray,c_gray,c_gray,c_gray,255);
}
else{
	draw_set_font(fnt_font1);
	//draw_text_transformed_color(posX,posY,text,1.2,1.2,0,c_white,c_white,c_white,c_white,255);
	
	draw_text_color(posX,posY,text,c_white,c_white,c_white,c_white,255);
}