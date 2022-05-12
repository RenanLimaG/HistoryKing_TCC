/// @description Trocando o "game state"

switch(global.game_state){
	
	case state.init : 
	player1 = instance_create_layer(803,315,"Instances",obj_player1);
	player2 = instance_create_layer(775,380,"Instances",obj_player2);
	global.game_state = state.startTurn;
	break;
	
	case state.startTurn : 
	
	break;
	
}
