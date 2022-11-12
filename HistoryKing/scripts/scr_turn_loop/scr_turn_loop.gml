// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_turn_loop(){
	switch(global.turn){
		case 0:
		global.turn = 1;
		break;
							
		case 1:
		if(global.num_jogs == 3 || global.num_jogs == 4){
			global.turn = 2;	
		}
		else{
			global.turn = 4;
		}
		break;
		
		case 2:
		if(global.num_jogs == 4){
			global.turn = 3;
		}
		else{
			global.turn = 4;
		}
		break;
		
		case 3:
		global.turn = 4;
		break;
		
	}

}