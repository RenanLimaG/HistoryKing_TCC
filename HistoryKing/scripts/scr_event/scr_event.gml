// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_event(tipo_evento, pontos){
	
	switch(global.turn){
		case 0:
		if(tipo_evento == "bom"){
			global.scoreP1 += pontos;
		}
		else if(tipo_evento == "ruim"){
			global.scoreP1 -= pontos;
		}
		instance_destroy(obj_score);
		instance_create_layer(32,32,"Instances", obj_score);
	    break;
								
		case 1:
		if(tipo_evento == "bom"){
			global.scoreP2 += pontos;
		}
		else if(tipo_evento == "ruim"){
			global.scoreP2 -= pontos;
		}
		instance_destroy(obj_score);
		instance_create_layer(32,32,"Instances", obj_score);
		break;
								
		case 2:
		if(tipo_evento == "bom"){
			global.scoreP3 += pontos;
		}
		else if(tipo_evento == "ruim"){
			global.scoreP3 -= pontos;
		}
		instance_destroy(obj_score);
		instance_create_layer(32,32,"Instances", obj_score);
		break;
								
		case 3:
		if(tipo_evento == "bom"){
			global.scoreP4 += pontos;
		}
		else if(tipo_evento == "ruim"){
			global.scoreP4 -= pontos;
		}
		instance_destroy(obj_score);
		instance_create_layer(32,32,"Instances", obj_score);
		break;
								
		}
	

}