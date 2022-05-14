if(global.quizLoop >= 5){
	global.quizLoop = 0;
	ds_list_destroy(global.lst_ordem);
	global.lst_ordem = 0;
	global.turn = turnState.turn_player1;
	room_goto(rm_mapaBrasil);
}
