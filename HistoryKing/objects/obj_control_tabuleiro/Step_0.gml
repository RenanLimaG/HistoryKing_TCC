/// @description Trocando o "game state"

switch(global.game_state){
	
	case state.init : 
	scr_xy_positions();
	position[0] = instance_create_layer(802,314,"Positions",obj_position);
	position[1] = instance_create_layer(864,241,"Positions",obj_position);
	position[2] = instance_create_layer(812,200,"Positions",obj_position);
	position[3] = instance_create_layer(755,274,"Positions",obj_position);
	position[4] = instance_create_layer(774,375,"Positions",obj_position);
	position[5] = instance_create_layer(706,411,"Positions",obj_position);
	position[6] = instance_create_layer(735,462,"Positions",obj_position);
	position[7] = instance_create_layer(640,495,"Positions",obj_position);
	player1 = instance_create_layer(786,314,"Instances",obj_player1);
	player2 = instance_create_layer(819,314,"Instances",obj_player2);
	global.game_state = state.startTurn;
	break;
	
	case state.startTurn : 
	scr_movement(player1, position);
	
	break;
	
}
