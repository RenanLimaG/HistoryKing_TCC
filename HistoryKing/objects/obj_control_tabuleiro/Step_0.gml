/// @description Trocando o "game state"

switch(global.game_state){
	
	case state.init : 
	scr_xy_positions();
	position[0] = instance_create_layer(702,314,"Positions",obj_position);
	position[1] = instance_create_layer(764,241,"Positions",obj_position);
	position[2] = instance_create_layer(712,200,"Positions",obj_position);
	position[3] = instance_create_layer(655,274,"Positions",obj_position);
	position[4] = instance_create_layer(674,375,"Positions",obj_position);
	position[5] = instance_create_layer(606,411,"Positions",obj_position);
	position[6] = instance_create_layer(635,462,"Positions",obj_position);
	position[7] = instance_create_layer(540,495,"Positions",obj_position);
	player1 = instance_create_layer(786,314,"Instances",obj_player1);
	player2 = instance_create_layer(819,314,"Instances",obj_player2);
	if(global.num_jogs == 3){
		player3 = instance_create_layer(802,300,"Instances",obj_player3);
	}
	else if(global.num_jogs == 4){
		player3 = instance_create_layer(802,300,"Instances",obj_player3);
		player4 = instance_create_layer(802,333,"Instances",obj_player4);
	}
	global.game_state = state.startTurn;
	break;
	
	case state.startTurn : 
	switch(global.turn){
		case turnState.turn_player1:
		scr_movement(player1, position);
		break;
		
		case turnState.turn_player2:
		scr_movement(player2, position);
		break;
		
		case turnState.turn_player3:
		scr_movement(player3, position);
		break;
		
		case turnState.turn_player4:
		scr_movement(player4, position);
		break;
		
		case turnState.turn_loop:
		global.game_state = state.mini_game;
		break;
	}
	break;
	
	case state.mini_game:
	room_goto(rm_quiz);
	break;
	
	case state.endTurn:
	if(global.round < 26){
		global.round++;
		instance_destroy(obj_round);
		instance_create_layer(32,32,"Instances", obj_round);
		global.game_state = state.startTurn;
	}
	else{
		global.game_state = state.endGame;
	}
	break;
	
}
