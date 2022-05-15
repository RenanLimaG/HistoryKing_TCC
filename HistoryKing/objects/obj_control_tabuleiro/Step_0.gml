/// @description Trocando o "game state"

switch(global.game_state){
	
	case state.init : 
	scr_xy_positions();
	player1 = instance_create_layer(786,314,"Instances",obj_player1);
	player2 = instance_create_layer(819,314,"Instances",obj_player2);
	global.game_state = state.startTurn;
	break;
	
	case state.startTurn : 
	with(player1){
		if mouse_check_button_pressed(mb_left){
			if collision_point(mouse_x, mouse_y, self, true, false){
				if(p1_pos == 0) {p1_pos = 1;}
				else{p1_pos = 0;}
			}
		}
	}
	
	break;
	
}
