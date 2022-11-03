if(global.quizLoop >= 3){
	global.quizLoop = 0;
	global.turn = turnState.turn_player1;
	global.game_state = state.endTurn;
	room_goto(rm_mapaBrasil);
}
