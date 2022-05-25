// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_event(){
	var i = irandom(100)
	if(i <= 75){
		var event_score = 5;
	}
	else{
		var event_score = -5;
	}
	
	switch(global.turn){
		case 0:
		global.scoreP1 += event_score;
		instance_destroy(obj_score);
		instance_create_layer(32,32,"Instances", obj_score);
		global.turn = 1;
	    break;
								
		case 1:
		global.scoreP2 += event_score;
		instance_destroy(obj_score);
		instance_create_layer(32,32,"Instances", obj_score);
		if(global.num_jogs == 3 || global.num_jogs == 4){
			global.turn = 2;
		}
		else{
			global.turn = 4;
		}
		break;
								
		case 2:
		global.scoreP3 += event_score;
		instance_destroy(obj_score);
		instance_create_layer(32,32,"Instances", obj_score);
		if(global.num_jogs == 4){
			global.turn = 3;
		}
		else{
		    global.turn = 4;
		}
		break;
								
		case 3:
		global.scoreP4 += event_score;
		instance_destroy(obj_score);
		instance_create_layer(32,32,"Instances", obj_score);
		global.turn = 4;
		break;
								
		}
	

}