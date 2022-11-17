/// @description Insert description here
// You can write your code in this editor


/*
show_debug_message(string(layer_get_x(GroundId)));
layer_x(GroundId, layer_get_x(GroundId)+scrolling_speed*delta_time/1000000);
*/

var objs=layer_get_all_elements(GroundId);
var i;
//show_debug_message(string(array_length(objs)));
for(i=0;i<array_length(objs);i++){
	with(layer_instance_get_instance(objs[i])){
		x-=scrolling_speed*delta_time/1000000;
		if(x<-room_width){
			instance_destroy(self);
			//show_debug_message("DESTROY");
		}
	}
}

objs=layer_get_all_elements(PatternId);
for(i=0;i<array_length(objs);i++){
	
	//show_debug_message(string(array_length(objs))+"   "+string(layer_get_element_type(objs[i])));
	if(layer_get_element_type(objs[i])==layerelementtype_sequence){
		var X=layer_sequence_get_x(objs[i]);
		layer_sequence_x(objs[i],X-scrolling_speed*delta_time/1000000);
	}
	/*
	with(layer_instance_get_instance(objs[i])){
		x-=scrolling_speed*delta_time/1000000;
		/*
		if(x<-room_width){
			instance_destroy(self);
			show_debug_message("DESTROY");
		}
		*/
	//}
	
}
