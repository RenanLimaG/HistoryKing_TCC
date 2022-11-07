if(global.quizLoop >= 3){
	ds_list_destroy(global.lst_ordem);
	global.lst_ordem = 0;
	ds_list_destroy(global.lst_ordem_evento);
	global.lst_ordem_evento = 0;
	global.quizLoop = 0;
	global.turn = turnState.turn_player1;
	global.game_state = state.endTurn;
	room_goto(rm_mapaBrasil);
}
